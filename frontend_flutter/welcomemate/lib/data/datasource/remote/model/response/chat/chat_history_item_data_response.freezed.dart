// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'chat_history_item_data_response.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
  'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models',
);

ChatHistoryItemDataResponse _$ChatHistoryItemDataResponseFromJson(
  Map<String, dynamic> json,
) {
  return _ChatHistoryItemDataResponse.fromJson(json);
}

/// @nodoc
mixin _$ChatHistoryItemDataResponse {
  @JsonKey(name: 'id')
  String get id => throw _privateConstructorUsedError;
  @JsonKey(name: 'user')
  String get user => throw _privateConstructorUsedError;
  @JsonKey(name: 'message')
  String get message => throw _privateConstructorUsedError;
  @JsonKey(name: 'bot_reply')
  String get botReply => throw _privateConstructorUsedError;
  @JsonKey(name: 'created_at')
  String get createdAt => throw _privateConstructorUsedError;

  /// Serializes this ChatHistoryItemDataResponse to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of ChatHistoryItemDataResponse
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $ChatHistoryItemDataResponseCopyWith<ChatHistoryItemDataResponse>
  get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ChatHistoryItemDataResponseCopyWith<$Res> {
  factory $ChatHistoryItemDataResponseCopyWith(
    ChatHistoryItemDataResponse value,
    $Res Function(ChatHistoryItemDataResponse) then,
  ) =
      _$ChatHistoryItemDataResponseCopyWithImpl<
        $Res,
        ChatHistoryItemDataResponse
      >;
  @useResult
  $Res call({
    @JsonKey(name: 'id') String id,
    @JsonKey(name: 'user') String user,
    @JsonKey(name: 'message') String message,
    @JsonKey(name: 'bot_reply') String botReply,
    @JsonKey(name: 'created_at') String createdAt,
  });
}

/// @nodoc
class _$ChatHistoryItemDataResponseCopyWithImpl<
  $Res,
  $Val extends ChatHistoryItemDataResponse
>
    implements $ChatHistoryItemDataResponseCopyWith<$Res> {
  _$ChatHistoryItemDataResponseCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of ChatHistoryItemDataResponse
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? user = null,
    Object? message = null,
    Object? botReply = null,
    Object? createdAt = null,
  }) {
    return _then(
      _value.copyWith(
            id: null == id
                ? _value.id
                : id // ignore: cast_nullable_to_non_nullable
                      as String,
            user: null == user
                ? _value.user
                : user // ignore: cast_nullable_to_non_nullable
                      as String,
            message: null == message
                ? _value.message
                : message // ignore: cast_nullable_to_non_nullable
                      as String,
            botReply: null == botReply
                ? _value.botReply
                : botReply // ignore: cast_nullable_to_non_nullable
                      as String,
            createdAt: null == createdAt
                ? _value.createdAt
                : createdAt // ignore: cast_nullable_to_non_nullable
                      as String,
          )
          as $Val,
    );
  }
}

/// @nodoc
abstract class _$$ChatHistoryItemDataResponseImplCopyWith<$Res>
    implements $ChatHistoryItemDataResponseCopyWith<$Res> {
  factory _$$ChatHistoryItemDataResponseImplCopyWith(
    _$ChatHistoryItemDataResponseImpl value,
    $Res Function(_$ChatHistoryItemDataResponseImpl) then,
  ) = __$$ChatHistoryItemDataResponseImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({
    @JsonKey(name: 'id') String id,
    @JsonKey(name: 'user') String user,
    @JsonKey(name: 'message') String message,
    @JsonKey(name: 'bot_reply') String botReply,
    @JsonKey(name: 'created_at') String createdAt,
  });
}

/// @nodoc
class __$$ChatHistoryItemDataResponseImplCopyWithImpl<$Res>
    extends
        _$ChatHistoryItemDataResponseCopyWithImpl<
          $Res,
          _$ChatHistoryItemDataResponseImpl
        >
    implements _$$ChatHistoryItemDataResponseImplCopyWith<$Res> {
  __$$ChatHistoryItemDataResponseImplCopyWithImpl(
    _$ChatHistoryItemDataResponseImpl _value,
    $Res Function(_$ChatHistoryItemDataResponseImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of ChatHistoryItemDataResponse
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? user = null,
    Object? message = null,
    Object? botReply = null,
    Object? createdAt = null,
  }) {
    return _then(
      _$ChatHistoryItemDataResponseImpl(
        id: null == id
            ? _value.id
            : id // ignore: cast_nullable_to_non_nullable
                  as String,
        user: null == user
            ? _value.user
            : user // ignore: cast_nullable_to_non_nullable
                  as String,
        message: null == message
            ? _value.message
            : message // ignore: cast_nullable_to_non_nullable
                  as String,
        botReply: null == botReply
            ? _value.botReply
            : botReply // ignore: cast_nullable_to_non_nullable
                  as String,
        createdAt: null == createdAt
            ? _value.createdAt
            : createdAt // ignore: cast_nullable_to_non_nullable
                  as String,
      ),
    );
  }
}

/// @nodoc
@JsonSerializable()
class _$ChatHistoryItemDataResponseImpl
    implements _ChatHistoryItemDataResponse {
  const _$ChatHistoryItemDataResponseImpl({
    @JsonKey(name: 'id') required this.id,
    @JsonKey(name: 'user') required this.user,
    @JsonKey(name: 'message') required this.message,
    @JsonKey(name: 'bot_reply') required this.botReply,
    @JsonKey(name: 'created_at') required this.createdAt,
  });

  factory _$ChatHistoryItemDataResponseImpl.fromJson(
    Map<String, dynamic> json,
  ) => _$$ChatHistoryItemDataResponseImplFromJson(json);

  @override
  @JsonKey(name: 'id')
  final String id;
  @override
  @JsonKey(name: 'user')
  final String user;
  @override
  @JsonKey(name: 'message')
  final String message;
  @override
  @JsonKey(name: 'bot_reply')
  final String botReply;
  @override
  @JsonKey(name: 'created_at')
  final String createdAt;

  @override
  String toString() {
    return 'ChatHistoryItemDataResponse(id: $id, user: $user, message: $message, botReply: $botReply, createdAt: $createdAt)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ChatHistoryItemDataResponseImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.user, user) || other.user == user) &&
            (identical(other.message, message) || other.message == message) &&
            (identical(other.botReply, botReply) ||
                other.botReply == botReply) &&
            (identical(other.createdAt, createdAt) ||
                other.createdAt == createdAt));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode =>
      Object.hash(runtimeType, id, user, message, botReply, createdAt);

  /// Create a copy of ChatHistoryItemDataResponse
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$ChatHistoryItemDataResponseImplCopyWith<_$ChatHistoryItemDataResponseImpl>
  get copyWith =>
      __$$ChatHistoryItemDataResponseImplCopyWithImpl<
        _$ChatHistoryItemDataResponseImpl
      >(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$ChatHistoryItemDataResponseImplToJson(this);
  }
}

abstract class _ChatHistoryItemDataResponse
    implements ChatHistoryItemDataResponse {
  const factory _ChatHistoryItemDataResponse({
    @JsonKey(name: 'id') required final String id,
    @JsonKey(name: 'user') required final String user,
    @JsonKey(name: 'message') required final String message,
    @JsonKey(name: 'bot_reply') required final String botReply,
    @JsonKey(name: 'created_at') required final String createdAt,
  }) = _$ChatHistoryItemDataResponseImpl;

  factory _ChatHistoryItemDataResponse.fromJson(Map<String, dynamic> json) =
      _$ChatHistoryItemDataResponseImpl.fromJson;

  @override
  @JsonKey(name: 'id')
  String get id;
  @override
  @JsonKey(name: 'user')
  String get user;
  @override
  @JsonKey(name: 'message')
  String get message;
  @override
  @JsonKey(name: 'bot_reply')
  String get botReply;
  @override
  @JsonKey(name: 'created_at')
  String get createdAt;

  /// Create a copy of ChatHistoryItemDataResponse
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$ChatHistoryItemDataResponseImplCopyWith<_$ChatHistoryItemDataResponseImpl>
  get copyWith => throw _privateConstructorUsedError;
}
