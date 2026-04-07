import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:welcomemate/domain/model/emergency/emergency.dart';
import 'package:welcomemate/domain/usecase/emergency/get_emergency_info_use_case.dart';
import 'package:welcomemate/injection_container.dart';
import 'package:welcomemate/presentation/screen/emergency/state/emergency_ui_state.dart';

class EmergencyNotifier extends StateNotifier<EmergencyUiState> {
  int _currentPage = 1;
  bool _hasMore = true;
  bool _isLoadingMore = false;
  List<Emergency> _allEmergencies = [];
  
  EmergencyNotifier() : super(const EmergencyUiState.loading()) {
    getEmergencyInfo();
  }

  Future<void> getEmergencyInfo({String? countryCode, bool refresh = false}) async {
    if (refresh) {
      _currentPage = 1;
      _hasMore = true;
      _allEmergencies = [];
    }
    
    state = const EmergencyUiState.loading();

    final useCase = getIt<GetEmergencyInfoUseCase>();
    final result = await useCase(countryCode: countryCode, page: _currentPage);

    state = result.when(
      success: (emergencies) {
        _allEmergencies = emergencies;
        _hasMore = emergencies.length >= 10;
        return EmergencyUiState.success(emergencies: _allEmergencies, hasMore: _hasMore);
      },
      failure: (failure) {
        return EmergencyUiState.error(failure.message);
      },
    );
  }
  
  Future<void> loadMore({String? countryCode}) async {
    if (_isLoadingMore || !_hasMore) return;
    
    _isLoadingMore = true;
    _currentPage++;
    
    final useCase = getIt<GetEmergencyInfoUseCase>();
    final result = await useCase(countryCode: countryCode, page: _currentPage);
    
    result.when(
      success: (emergencies) {
        if (emergencies.isEmpty || emergencies.length < 10) {
          _hasMore = false;
        }
        _allEmergencies.addAll(emergencies);
        state = EmergencyUiState.success(emergencies: _allEmergencies, hasMore: _hasMore);
      },
      failure: (failure) {
        _currentPage--;
      },
    );
    
    _isLoadingMore = false;
  }
}
