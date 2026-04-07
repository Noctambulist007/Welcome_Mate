import 'package:welcomemate/domain/model/chat/chat_history.dart';
import 'package:welcomemate/domain/model/checklist/checklist.dart';
import 'package:welcomemate/domain/repository/chat_repository.dart';
import 'package:welcomemate/domain/repository/checklist_repository.dart';
import 'package:welcomemate/domain/util/failure.dart';
import 'package:welcomemate/domain/util/result.dart';

class GetAllChecklistsUseCase {
  final ChecklistRepository _checklistRepository;

  GetAllChecklistsUseCase({required ChecklistRepository checklistRepository})
    : _checklistRepository = checklistRepository;

  Future<Result<List<Checklist>>> call({
    String? countryCode,
    int page = 1,
  }) async {
    return await _checklistRepository
        .getAllChecklists(countryCode: countryCode, page: page)
        .then((checklists) => Result.success(checklists))
        .onError((Failure failure, stackTrace) => Result.failure(failure));
  }
}
