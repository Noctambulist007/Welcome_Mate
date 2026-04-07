import 'package:freezed_annotation/freezed_annotation.dart';

part 'profile_request.freezed.dart';

part 'profile_request.g.dart';

@freezed
abstract class ProfileRequest with _$ProfileRequest {
  const factory ProfileRequest({
    @JsonKey(name: 'fullName') String? fullName,
    @JsonKey(name: 'bio') String? bio,
    @JsonKey(name: 'profilePic') String? profilePic,
  }) = _ProfileRequest;

  factory ProfileRequest.fromJson(Map<String, dynamic> json) =>
      _$ProfileRequestFromJson(json);
}
