// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'chat_ui_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
  'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models',
);

/// @nodoc
mixin _$ChatUiState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(Chat chat) successChat,
    required TResult Function(List<ChatHistory>? chats, bool hasMore)
    successChatHistory,
    required TResult Function(String message) error,
  }) => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(Chat chat)? successChat,
    TResult? Function(List<ChatHistory>? chats, bool hasMore)?
    successChatHistory,
    TResult? Function(String message)? error,
  }) => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(Chat chat)? successChat,
    TResult Function(List<ChatHistory>? chats, bool hasMore)?
    successChatHistory,
    TResult Function(String message)? error,
    required TResult orElse(),
  }) => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(InitialState value) initial,
    required TResult Function(LoadingState value) loading,
    required TResult Function(SuccessChatState value) successChat,
    required TResult Function(SuccessChatHistoryState value) successChatHistory,
    required TResult Function(ErrorState value) error,
  }) => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(InitialState value)? initial,
    TResult? Function(LoadingState value)? loading,
    TResult? Function(SuccessChatState value)? successChat,
    TResult? Function(SuccessChatHistoryState value)? successChatHistory,
    TResult? Function(ErrorState value)? error,
  }) => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(InitialState value)? initial,
    TResult Function(LoadingState value)? loading,
    TResult Function(SuccessChatState value)? successChat,
    TResult Function(SuccessChatHistoryState value)? successChatHistory,
    TResult Function(ErrorState value)? error,
    required TResult orElse(),
  }) => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ChatUiStateCopyWith<$Res> {
  factory $ChatUiStateCopyWith(
    ChatUiState value,
    $Res Function(ChatUiState) then,
  ) = _$ChatUiStateCopyWithImpl<$Res, ChatUiState>;
}

/// @nodoc
class _$ChatUiStateCopyWithImpl<$Res, $Val extends ChatUiState>
    implements $ChatUiStateCopyWith<$Res> {
  _$ChatUiStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of ChatUiState
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc
abstract class _$$InitialStateImplCopyWith<$Res> {
  factory _$$InitialStateImplCopyWith(
    _$InitialStateImpl value,
    $Res Function(_$InitialStateImpl) then,
  ) = __$$InitialStateImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$InitialStateImplCopyWithImpl<$Res>
    extends _$ChatUiStateCopyWithImpl<$Res, _$InitialStateImpl>
    implements _$$InitialStateImplCopyWith<$Res> {
  __$$InitialStateImplCopyWithImpl(
    _$InitialStateImpl _value,
    $Res Function(_$InitialStateImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of ChatUiState
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$InitialStateImpl implements InitialState {
  const _$InitialStateImpl();

  @override
  String toString() {
    return 'ChatUiState.initial()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$InitialStateImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(Chat chat) successChat,
    required TResult Function(List<ChatHistory>? chats, bool hasMore)
    successChatHistory,
    required TResult Function(String message) error,
  }) {
    return initial();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(Chat chat)? successChat,
    TResult? Function(List<ChatHistory>? chats, bool hasMore)?
    successChatHistory,
    TResult? Function(String message)? error,
  }) {
    return initial?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(Chat chat)? successChat,
    TResult Function(List<ChatHistory>? chats, bool hasMore)?
    successChatHistory,
    TResult Function(String message)? error,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(InitialState value) initial,
    required TResult Function(LoadingState value) loading,
    required TResult Function(SuccessChatState value) successChat,
    required TResult Function(SuccessChatHistoryState value) successChatHistory,
    required TResult Function(ErrorState value) error,
  }) {
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(InitialState value)? initial,
    TResult? Function(LoadingState value)? loading,
    TResult? Function(SuccessChatState value)? successChat,
    TResult? Function(SuccessChatHistoryState value)? successChatHistory,
    TResult? Function(ErrorState value)? error,
  }) {
    return initial?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(InitialState value)? initial,
    TResult Function(LoadingState value)? loading,
    TResult Function(SuccessChatState value)? successChat,
    TResult Function(SuccessChatHistoryState value)? successChatHistory,
    TResult Function(ErrorState value)? error,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class InitialState implements ChatUiState {
  const factory InitialState() = _$InitialStateImpl;
}

/// @nodoc
abstract class _$$LoadingStateImplCopyWith<$Res> {
  factory _$$LoadingStateImplCopyWith(
    _$LoadingStateImpl value,
    $Res Function(_$LoadingStateImpl) then,
  ) = __$$LoadingStateImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$LoadingStateImplCopyWithImpl<$Res>
    extends _$ChatUiStateCopyWithImpl<$Res, _$LoadingStateImpl>
    implements _$$LoadingStateImplCopyWith<$Res> {
  __$$LoadingStateImplCopyWithImpl(
    _$LoadingStateImpl _value,
    $Res Function(_$LoadingStateImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of ChatUiState
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$LoadingStateImpl implements LoadingState {
  const _$LoadingStateImpl();

  @override
  String toString() {
    return 'ChatUiState.loading()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$LoadingStateImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(Chat chat) successChat,
    required TResult Function(List<ChatHistory>? chats, bool hasMore)
    successChatHistory,
    required TResult Function(String message) error,
  }) {
    return loading();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(Chat chat)? successChat,
    TResult? Function(List<ChatHistory>? chats, bool hasMore)?
    successChatHistory,
    TResult? Function(String message)? error,
  }) {
    return loading?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(Chat chat)? successChat,
    TResult Function(List<ChatHistory>? chats, bool hasMore)?
    successChatHistory,
    TResult Function(String message)? error,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(InitialState value) initial,
    required TResult Function(LoadingState value) loading,
    required TResult Function(SuccessChatState value) successChat,
    required TResult Function(SuccessChatHistoryState value) successChatHistory,
    required TResult Function(ErrorState value) error,
  }) {
    return loading(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(InitialState value)? initial,
    TResult? Function(LoadingState value)? loading,
    TResult? Function(SuccessChatState value)? successChat,
    TResult? Function(SuccessChatHistoryState value)? successChatHistory,
    TResult? Function(ErrorState value)? error,
  }) {
    return loading?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(InitialState value)? initial,
    TResult Function(LoadingState value)? loading,
    TResult Function(SuccessChatState value)? successChat,
    TResult Function(SuccessChatHistoryState value)? successChatHistory,
    TResult Function(ErrorState value)? error,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading(this);
    }
    return orElse();
  }
}

abstract class LoadingState implements ChatUiState {
  const factory LoadingState() = _$LoadingStateImpl;
}

/// @nodoc
abstract class _$$SuccessChatStateImplCopyWith<$Res> {
  factory _$$SuccessChatStateImplCopyWith(
    _$SuccessChatStateImpl value,
    $Res Function(_$SuccessChatStateImpl) then,
  ) = __$$SuccessChatStateImplCopyWithImpl<$Res>;
  @useResult
  $Res call({Chat chat});
}

/// @nodoc
class __$$SuccessChatStateImplCopyWithImpl<$Res>
    extends _$ChatUiStateCopyWithImpl<$Res, _$SuccessChatStateImpl>
    implements _$$SuccessChatStateImplCopyWith<$Res> {
  __$$SuccessChatStateImplCopyWithImpl(
    _$SuccessChatStateImpl _value,
    $Res Function(_$SuccessChatStateImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of ChatUiState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({Object? chat = null}) {
    return _then(
      _$SuccessChatStateImpl(
        chat: null == chat
            ? _value.chat
            : chat // ignore: cast_nullable_to_non_nullable
                  as Chat,
      ),
    );
  }
}

/// @nodoc

class _$SuccessChatStateImpl implements SuccessChatState {
  const _$SuccessChatStateImpl({required this.chat});

  @override
  final Chat chat;

  @override
  String toString() {
    return 'ChatUiState.successChat(chat: $chat)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SuccessChatStateImpl &&
            (identical(other.chat, chat) || other.chat == chat));
  }

  @override
  int get hashCode => Object.hash(runtimeType, chat);

  /// Create a copy of ChatUiState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$SuccessChatStateImplCopyWith<_$SuccessChatStateImpl> get copyWith =>
      __$$SuccessChatStateImplCopyWithImpl<_$SuccessChatStateImpl>(
        this,
        _$identity,
      );

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(Chat chat) successChat,
    required TResult Function(List<ChatHistory>? chats, bool hasMore)
    successChatHistory,
    required TResult Function(String message) error,
  }) {
    return successChat(chat);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(Chat chat)? successChat,
    TResult? Function(List<ChatHistory>? chats, bool hasMore)?
    successChatHistory,
    TResult? Function(String message)? error,
  }) {
    return successChat?.call(chat);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(Chat chat)? successChat,
    TResult Function(List<ChatHistory>? chats, bool hasMore)?
    successChatHistory,
    TResult Function(String message)? error,
    required TResult orElse(),
  }) {
    if (successChat != null) {
      return successChat(chat);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(InitialState value) initial,
    required TResult Function(LoadingState value) loading,
    required TResult Function(SuccessChatState value) successChat,
    required TResult Function(SuccessChatHistoryState value) successChatHistory,
    required TResult Function(ErrorState value) error,
  }) {
    return successChat(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(InitialState value)? initial,
    TResult? Function(LoadingState value)? loading,
    TResult? Function(SuccessChatState value)? successChat,
    TResult? Function(SuccessChatHistoryState value)? successChatHistory,
    TResult? Function(ErrorState value)? error,
  }) {
    return successChat?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(InitialState value)? initial,
    TResult Function(LoadingState value)? loading,
    TResult Function(SuccessChatState value)? successChat,
    TResult Function(SuccessChatHistoryState value)? successChatHistory,
    TResult Function(ErrorState value)? error,
    required TResult orElse(),
  }) {
    if (successChat != null) {
      return successChat(this);
    }
    return orElse();
  }
}

abstract class SuccessChatState implements ChatUiState {
  const factory SuccessChatState({required final Chat chat}) =
      _$SuccessChatStateImpl;

  Chat get chat;

  /// Create a copy of ChatUiState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$SuccessChatStateImplCopyWith<_$SuccessChatStateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$SuccessChatHistoryStateImplCopyWith<$Res> {
  factory _$$SuccessChatHistoryStateImplCopyWith(
    _$SuccessChatHistoryStateImpl value,
    $Res Function(_$SuccessChatHistoryStateImpl) then,
  ) = __$$SuccessChatHistoryStateImplCopyWithImpl<$Res>;
  @useResult
  $Res call({List<ChatHistory>? chats, bool hasMore});
}

/// @nodoc
class __$$SuccessChatHistoryStateImplCopyWithImpl<$Res>
    extends _$ChatUiStateCopyWithImpl<$Res, _$SuccessChatHistoryStateImpl>
    implements _$$SuccessChatHistoryStateImplCopyWith<$Res> {
  __$$SuccessChatHistoryStateImplCopyWithImpl(
    _$SuccessChatHistoryStateImpl _value,
    $Res Function(_$SuccessChatHistoryStateImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of ChatUiState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({Object? chats = freezed, Object? hasMore = null}) {
    return _then(
      _$SuccessChatHistoryStateImpl(
        chats: freezed == chats
            ? _value._chats
            : chats // ignore: cast_nullable_to_non_nullable
                  as List<ChatHistory>?,
        hasMore: null == hasMore
            ? _value.hasMore
            : hasMore // ignore: cast_nullable_to_non_nullable
                  as bool,
      ),
    );
  }
}

/// @nodoc

class _$SuccessChatHistoryStateImpl implements SuccessChatHistoryState {
  const _$SuccessChatHistoryStateImpl({
    final List<ChatHistory>? chats,
    this.hasMore = true,
  }) : _chats = chats;

  final List<ChatHistory>? _chats;
  @override
  List<ChatHistory>? get chats {
    final value = _chats;
    if (value == null) return null;
    if (_chats is EqualUnmodifiableListView) return _chats;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  @JsonKey()
  final bool hasMore;

  @override
  String toString() {
    return 'ChatUiState.successChatHistory(chats: $chats, hasMore: $hasMore)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SuccessChatHistoryStateImpl &&
            const DeepCollectionEquality().equals(other._chats, _chats) &&
            (identical(other.hasMore, hasMore) || other.hasMore == hasMore));
  }

  @override
  int get hashCode => Object.hash(
    runtimeType,
    const DeepCollectionEquality().hash(_chats),
    hasMore,
  );

  /// Create a copy of ChatUiState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$SuccessChatHistoryStateImplCopyWith<_$SuccessChatHistoryStateImpl>
  get copyWith =>
      __$$SuccessChatHistoryStateImplCopyWithImpl<
        _$SuccessChatHistoryStateImpl
      >(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(Chat chat) successChat,
    required TResult Function(List<ChatHistory>? chats, bool hasMore)
    successChatHistory,
    required TResult Function(String message) error,
  }) {
    return successChatHistory(chats, hasMore);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(Chat chat)? successChat,
    TResult? Function(List<ChatHistory>? chats, bool hasMore)?
    successChatHistory,
    TResult? Function(String message)? error,
  }) {
    return successChatHistory?.call(chats, hasMore);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(Chat chat)? successChat,
    TResult Function(List<ChatHistory>? chats, bool hasMore)?
    successChatHistory,
    TResult Function(String message)? error,
    required TResult orElse(),
  }) {
    if (successChatHistory != null) {
      return successChatHistory(chats, hasMore);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(InitialState value) initial,
    required TResult Function(LoadingState value) loading,
    required TResult Function(SuccessChatState value) successChat,
    required TResult Function(SuccessChatHistoryState value) successChatHistory,
    required TResult Function(ErrorState value) error,
  }) {
    return successChatHistory(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(InitialState value)? initial,
    TResult? Function(LoadingState value)? loading,
    TResult? Function(SuccessChatState value)? successChat,
    TResult? Function(SuccessChatHistoryState value)? successChatHistory,
    TResult? Function(ErrorState value)? error,
  }) {
    return successChatHistory?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(InitialState value)? initial,
    TResult Function(LoadingState value)? loading,
    TResult Function(SuccessChatState value)? successChat,
    TResult Function(SuccessChatHistoryState value)? successChatHistory,
    TResult Function(ErrorState value)? error,
    required TResult orElse(),
  }) {
    if (successChatHistory != null) {
      return successChatHistory(this);
    }
    return orElse();
  }
}

abstract class SuccessChatHistoryState implements ChatUiState {
  const factory SuccessChatHistoryState({
    final List<ChatHistory>? chats,
    final bool hasMore,
  }) = _$SuccessChatHistoryStateImpl;

  List<ChatHistory>? get chats;
  bool get hasMore;

  /// Create a copy of ChatUiState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$SuccessChatHistoryStateImplCopyWith<_$SuccessChatHistoryStateImpl>
  get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$ErrorStateImplCopyWith<$Res> {
  factory _$$ErrorStateImplCopyWith(
    _$ErrorStateImpl value,
    $Res Function(_$ErrorStateImpl) then,
  ) = __$$ErrorStateImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String message});
}

/// @nodoc
class __$$ErrorStateImplCopyWithImpl<$Res>
    extends _$ChatUiStateCopyWithImpl<$Res, _$ErrorStateImpl>
    implements _$$ErrorStateImplCopyWith<$Res> {
  __$$ErrorStateImplCopyWithImpl(
    _$ErrorStateImpl _value,
    $Res Function(_$ErrorStateImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of ChatUiState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({Object? message = null}) {
    return _then(
      _$ErrorStateImpl(
        null == message
            ? _value.message
            : message // ignore: cast_nullable_to_non_nullable
                  as String,
      ),
    );
  }
}

/// @nodoc

class _$ErrorStateImpl implements ErrorState {
  const _$ErrorStateImpl(this.message);

  @override
  final String message;

  @override
  String toString() {
    return 'ChatUiState.error(message: $message)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ErrorStateImpl &&
            (identical(other.message, message) || other.message == message));
  }

  @override
  int get hashCode => Object.hash(runtimeType, message);

  /// Create a copy of ChatUiState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$ErrorStateImplCopyWith<_$ErrorStateImpl> get copyWith =>
      __$$ErrorStateImplCopyWithImpl<_$ErrorStateImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(Chat chat) successChat,
    required TResult Function(List<ChatHistory>? chats, bool hasMore)
    successChatHistory,
    required TResult Function(String message) error,
  }) {
    return error(message);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(Chat chat)? successChat,
    TResult? Function(List<ChatHistory>? chats, bool hasMore)?
    successChatHistory,
    TResult? Function(String message)? error,
  }) {
    return error?.call(message);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(Chat chat)? successChat,
    TResult Function(List<ChatHistory>? chats, bool hasMore)?
    successChatHistory,
    TResult Function(String message)? error,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error(message);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(InitialState value) initial,
    required TResult Function(LoadingState value) loading,
    required TResult Function(SuccessChatState value) successChat,
    required TResult Function(SuccessChatHistoryState value) successChatHistory,
    required TResult Function(ErrorState value) error,
  }) {
    return error(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(InitialState value)? initial,
    TResult? Function(LoadingState value)? loading,
    TResult? Function(SuccessChatState value)? successChat,
    TResult? Function(SuccessChatHistoryState value)? successChatHistory,
    TResult? Function(ErrorState value)? error,
  }) {
    return error?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(InitialState value)? initial,
    TResult Function(LoadingState value)? loading,
    TResult Function(SuccessChatState value)? successChat,
    TResult Function(SuccessChatHistoryState value)? successChatHistory,
    TResult Function(ErrorState value)? error,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error(this);
    }
    return orElse();
  }
}

abstract class ErrorState implements ChatUiState {
  const factory ErrorState(final String message) = _$ErrorStateImpl;

  String get message;

  /// Create a copy of ChatUiState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$ErrorStateImplCopyWith<_$ErrorStateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
