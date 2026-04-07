import 'package:freezed_annotation/freezed_annotation.dart';

part 'chat_history_item_data_response.freezed.dart';
part 'chat_history_item_data_response.g.dart';

@freezed
abstract class ChatHistoryItemDataResponse with _$ChatHistoryItemDataResponse {
  const factory ChatHistoryItemDataResponse({
    @JsonKey(name: 'id') required String id,
    @JsonKey(name: 'user') required String user,
    @JsonKey(name: 'message') required String message,
    @JsonKey(name: 'bot_reply') required String botReply,
    @JsonKey(name: 'created_at') required String createdAt,
  }) = _ChatHistoryItemDataResponse;

  factory ChatHistoryItemDataResponse.fromJson(Map<String, dynamic> json) =>
      _$ChatHistoryItemDataResponseFromJson(json);
}
