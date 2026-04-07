import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:welcomemate/data/datasource/remote/model/response/chat/chat_history_item_data_response.dart';

part 'chat_history_data_response.freezed.dart';
part 'chat_history_data_response.g.dart';

@freezed
abstract class ChatHistoryDataResponse with _$ChatHistoryDataResponse {
  const factory ChatHistoryDataResponse({
    @JsonKey(name: 'count') required int count,
    @JsonKey(name: 'next') required String? next,
    @JsonKey(name: 'previous') required String? previous,
    @JsonKey(name: 'results') List<ChatHistoryItemDataResponse>? results,
  }) = _ChatHistoryDataResponse;

  factory ChatHistoryDataResponse.fromJson(Map<String, dynamic> json) =>
      _$ChatHistoryDataResponseFromJson(json);
}
