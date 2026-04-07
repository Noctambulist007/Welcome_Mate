import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:welcomemate/data/datasource/remote/model/request/checklist/checklist_update_request.dart';
import 'package:welcomemate/domain/model/checklist/checklist.dart';
import 'package:welcomemate/domain/usecase/checklist/get_all_checklists_use_case.dart';
import 'package:welcomemate/domain/usecase/checklist/update_checklist_use_case.dart';
import 'package:welcomemate/injection_container.dart';
import 'package:welcomemate/presentation/screen/checklist/state/checklist_ui_state.dart';

class ChecklistNotifier extends StateNotifier<ChecklistUiState> {
  int _currentPage = 1;
  bool _hasMore = true;
  bool _isLoadingMore = false;
  List<Checklist> _allChecklists = [];

  ChecklistNotifier() : super(const ChecklistUiState.loading()) {
    getAllChecklists();
  }

  Future<void> updateChecklist({
    required ChecklistUpdateRequest requestBody,
  }) async {
    state = const ChecklistUiState.loading();

    final useCase = getIt<UpdateChecklistUseCase>();
    final result = await useCase(requestBody: requestBody);

    state = result.when(
      success: (checklistUpdate) {
        return ChecklistUiState.successChecklistUpdate(
          checklistUpdate: checklistUpdate,
        );
      },
      failure: (failure) {
        return ChecklistUiState.error(failure.message);
      },
    );
  }

  Future<void> getAllChecklists({bool refresh = false}) async {
    if (refresh) {
      _currentPage = 1;
      _hasMore = true;
      _allChecklists = [];
    }

    state = const ChecklistUiState.loading();

    final useCase = getIt<GetAllChecklistsUseCase>();
    final result = await useCase(page: _currentPage);

    state = result.when(
      success: (checklists) {
        _allChecklists = checklists;
        _hasMore = checklists.length >= 10;
        return ChecklistUiState.successChecklists(
          checklists: _allChecklists,
          hasMore: _hasMore,
        );
      },
      failure: (failure) {
        return ChecklistUiState.error(failure.message);
      },
    );
  }

  Future<void> loadMore() async {
    if (_isLoadingMore || !_hasMore) return;

    _isLoadingMore = true;
    _currentPage++;

    final useCase = getIt<GetAllChecklistsUseCase>();
    final result = await useCase(page: _currentPage);

    result.when(
      success: (checklists) {
        if (checklists.isEmpty || checklists.length < 10) {
          _hasMore = false;
        }
        _allChecklists.addAll(checklists);
        state = ChecklistUiState.successChecklists(
          checklists: _allChecklists,
          hasMore: _hasMore,
        );
      },
      failure: (failure) {
        _currentPage--;
      },
    );

    _isLoadingMore = false;
  }
}
