// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'chat_data_response.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
  'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models',
);

ChatDataResponse _$ChatDataResponseFromJson(Map<String, dynamic> json) {
  return _ChatDataResponse.fromJson(json);
}

/// @nodoc
mixin _$ChatDataResponse {
  @JsonKey(name: 'replyText')
  String get replyText => throw _privateConstructorUsedError;

  /// Serializes this ChatDataResponse to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of ChatDataResponse
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $ChatDataResponseCopyWith<ChatDataResponse> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ChatDataResponseCopyWith<$Res> {
  factory $ChatDataResponseCopyWith(
    ChatDataResponse value,
    $Res Function(ChatDataResponse) then,
  ) = _$ChatDataResponseCopyWithImpl<$Res, ChatDataResponse>;
  @useResult
  $Res call({@JsonKey(name: 'replyText') String replyText});
}

/// @nodoc
class _$ChatDataResponseCopyWithImpl<$Res, $Val extends ChatDataResponse>
    implements $ChatDataResponseCopyWith<$Res> {
  _$ChatDataResponseCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of ChatDataResponse
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({Object? replyText = null}) {
    return _then(
      _value.copyWith(
            replyText: null == replyText
                ? _value.replyText
                : replyText // ignore: cast_nullable_to_non_nullable
                      as String,
          )
          as $Val,
    );
  }
}

/// @nodoc
abstract class _$$ChatDataResponseImplCopyWith<$Res>
    implements $ChatDataResponseCopyWith<$Res> {
  factory _$$ChatDataResponseImplCopyWith(
    _$ChatDataResponseImpl value,
    $Res Function(_$ChatDataResponseImpl) then,
  ) = __$$ChatDataResponseImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({@JsonKey(name: 'replyText') String replyText});
}

/// @nodoc
class __$$ChatDataResponseImplCopyWithImpl<$Res>
    extends _$ChatDataResponseCopyWithImpl<$Res, _$ChatDataResponseImpl>
    implements _$$ChatDataResponseImplCopyWith<$Res> {
  __$$ChatDataResponseImplCopyWithImpl(
    _$ChatDataResponseImpl _value,
    $Res Function(_$ChatDataResponseImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of ChatDataResponse
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({Object? replyText = null}) {
    return _then(
      _$ChatDataResponseImpl(
        replyText: null == replyText
            ? _value.replyText
            : replyText // ignore: cast_nullable_to_non_nullable
                  as String,
      ),
    );
  }
}

/// @nodoc
@JsonSerializable()
class _$ChatDataResponseImpl implements _ChatDataResponse {
  const _$ChatDataResponseImpl({
    @JsonKey(name: 'replyText') required this.replyText,
  });

  factory _$ChatDataResponseImpl.fromJson(Map<String, dynamic> json) =>
      _$$ChatDataResponseImplFromJson(json);

  @override
  @JsonKey(name: 'replyText')
  final String replyText;

  @override
  String toString() {
    return 'ChatDataResponse(replyText: $replyText)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ChatDataResponseImpl &&
            (identical(other.replyText, replyText) ||
                other.replyText == replyText));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, replyText);

  /// Create a copy of ChatDataResponse
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$ChatDataResponseImplCopyWith<_$ChatDataResponseImpl> get copyWith =>
      __$$ChatDataResponseImplCopyWithImpl<_$ChatDataResponseImpl>(
        this,
        _$identity,
      );

  @override
  Map<String, dynamic> toJson() {
    return _$$ChatDataResponseImplToJson(this);
  }
}

abstract class _ChatDataResponse implements ChatDataResponse {
  const factory _ChatDataResponse({
    @JsonKey(name: 'replyText') required final String replyText,
  }) = _$ChatDataResponseImpl;

  factory _ChatDataResponse.fromJson(Map<String, dynamic> json) =
      _$ChatDataResponseImpl.fromJson;

  @override
  @JsonKey(name: 'replyText')
  String get replyText;

  /// Create a copy of ChatDataResponse
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$ChatDataResponseImplCopyWith<_$ChatDataResponseImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
