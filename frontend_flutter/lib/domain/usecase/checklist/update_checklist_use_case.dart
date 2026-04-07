import 'package:welcomemate/data/datasource/remote/model/request/checklist/checklist_update_request.dart';
import 'package:welcomemate/domain/model/chat/chat.dart';
import 'package:welcomemate/domain/model/checklist/checklist_update.dart';
import 'package:welcomemate/domain/repository/chat_repository.dart';
import 'package:welcomemate/domain/repository/checklist_repository.dart';
import 'package:welcomemate/domain/util/failure.dart';
import 'package:welcomemate/domain/util/result.dart';

class UpdateChecklistUseCase {
  final ChecklistRepository _checklistRepository;

  UpdateChecklistUseCase({required ChecklistRepository checklistRepository})
      : _checklistRepository = checklistRepository;

  Future<Result<ChecklistUpdate>> call({
    required ChecklistUpdateRequest requestBody,
  }) async {
    return await _checklistRepository
        .updateChecklist(requestBody: requestBody)
        .then((checklistUpdate) => Result.success(checklistUpdate))
        .onError((Failure failure, stackTrace) => Result.failure(failure));
  }
}
