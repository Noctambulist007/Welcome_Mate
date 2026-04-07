import 'package:freezed_annotation/freezed_annotation.dart';

part 'chat_data_response.freezed.dart';
part 'chat_data_response.g.dart';

@freezed
abstract class ChatDataResponse with _$ChatDataResponse {
  const factory ChatDataResponse({
    @JsonKey(name: 'replyText') required String replyText,
  }) = _ChatDataResponse;

  factory ChatDataResponse.fromJson(Map<String, dynamic> json) =>
      _$ChatDataResponseFromJson(json);
}
