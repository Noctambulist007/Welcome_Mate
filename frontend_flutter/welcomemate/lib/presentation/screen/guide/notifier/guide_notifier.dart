import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:welcomemate/domain/model/guide/guide.dart';
import 'package:welcomemate/domain/usecase/guide/get_guide_info_use_case.dart';
import 'package:welcomemate/injection_container.dart';
import 'package:welcomemate/presentation/screen/guide/state/guide_ui_state.dart';

class GuideNotifier extends StateNotifier<GuideUiState> {
  int _currentPage = 1;
  bool _hasMore = true;
  bool _isLoadingMore = false;
  List<Guide> _allGuides = [];
  
  GuideNotifier() : super(const GuideUiState.loading()) {
    getGuideInfo();
  }

  Future<void> getGuideInfo({String? countryCode, bool refresh = false}) async {
    if (refresh) {
      _currentPage = 1;
      _hasMore = true;
      _allGuides = [];
    }
    
    state = const GuideUiState.loading();

    final useCase = getIt<GetGuideInfoUseCase>();
    final result = await useCase(countryCode: countryCode, page: _currentPage);

    state = result.when(
      success: (guides) {
        _allGuides = guides;
        _hasMore = guides.length >= 10;
        return GuideUiState.success(guides: _allGuides, hasMore: _hasMore);
      },
      failure: (failure) {
        return GuideUiState.error(failure.message);
      },
    );
  }
  
  Future<void> loadMore({String? countryCode}) async {
    if (_isLoadingMore || !_hasMore) return;
    
    _isLoadingMore = true;
    _currentPage++;
    
    final useCase = getIt<GetGuideInfoUseCase>();
    final result = await useCase(countryCode: countryCode, page: _currentPage);
    
    result.when(
      success: (guides) {
        if (guides.isEmpty || guides.length < 10) {
          _hasMore = false;
        }
        _allGuides.addAll(guides);
        state = GuideUiState.success(guides: _allGuides, hasMore: _hasMore);
      },
      failure: (failure) {
        _currentPage--;
      },
    );
    
    _isLoadingMore = false;
  }
}
