import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:welcomemate/domain/model/career/career.dart';
import 'package:welcomemate/domain/usecase/career/get_career_resources_use_case.dart';
import 'package:welcomemate/injection_container.dart';
import 'package:welcomemate/presentation/screen/career/state/career_ui_state.dart';

class CareerNotifier extends StateNotifier<CareerUiState> {
  int _currentPage = 1;
  bool _hasMore = true;
  bool _isLoadingMore = false;
  List<Career> _allCareers = [];
  
  CareerNotifier() : super(const CareerUiState.loading()) {
    getCareerResources();
  }

  Future<void> getCareerResources({String? countryCode, bool refresh = false}) async {
    if (refresh) {
      _currentPage = 1;
      _hasMore = true;
      _allCareers = [];
    }
    
    state = const CareerUiState.loading();

    final useCase = getIt<GetCareerResourcesUseCase>();
    final result = await useCase(countryCode: countryCode, page: _currentPage);

    state = result.when(
      success: (careers) {
        _allCareers = careers;
        _hasMore = careers.length >= 10;
        return CareerUiState.success(careers: _allCareers, hasMore: _hasMore);
      },
      failure: (failure) {
        return CareerUiState.error(failure.message);
      },
    );
  }
  
  Future<void> loadMore({String? countryCode}) async {
    if (_isLoadingMore || !_hasMore) return;
    
    _isLoadingMore = true;
    _currentPage++;
    
    final useCase = getIt<GetCareerResourcesUseCase>();
    final result = await useCase(countryCode: countryCode, page: _currentPage);
    
    result.when(
      success: (careers) {
        if (careers.isEmpty || careers.length < 10) {
          _hasMore = false;
        }
        _allCareers.addAll(careers);
        state = CareerUiState.success(careers: _allCareers, hasMore: _hasMore);
      },
      failure: (failure) {
        _currentPage--;
      },
    );
    
    _isLoadingMore = false;
  }
}
