import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:welcomemate/data/datasource/remote/model/response/chat/chat_history_data_response.dart';

part 'chat_history_response.freezed.dart';
part 'chat_history_response.g.dart';

@freezed
abstract class ChatHistoryResponse with _$ChatHistoryResponse {
  const factory ChatHistoryResponse({
    @JsonKey(name: 'success') required bool success,
    @JsonKey(name: 'message') required String message,
    @JsonKey(name: 'data') required ChatHistoryDataResponse data,
    @JsonKey(name: 'timestamp') required String timestamp,
  }) = _ChatHistoryResponse;

  factory ChatHistoryResponse.fromJson(Map<String, dynamic> json) =>
      _$ChatHistoryResponseFromJson(json);
}