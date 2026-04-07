// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'checklist_ui_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
  'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models',
);

/// @nodoc
mixin _$ChecklistUiState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(ChecklistUpdate checklistUpdate)
    successChecklistUpdate,
    required TResult Function(List<Checklist>? checklists, bool hasMore)
    successChecklists,
    required TResult Function(String message) error,
  }) => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(ChecklistUpdate checklistUpdate)? successChecklistUpdate,
    TResult? Function(List<Checklist>? checklists, bool hasMore)?
    successChecklists,
    TResult? Function(String message)? error,
  }) => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(ChecklistUpdate checklistUpdate)? successChecklistUpdate,
    TResult Function(List<Checklist>? checklists, bool hasMore)?
    successChecklists,
    TResult Function(String message)? error,
    required TResult orElse(),
  }) => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(InitialState value) initial,
    required TResult Function(LoadingState value) loading,
    required TResult Function(SuccessChecklistUpdateState value)
    successChecklistUpdate,
    required TResult Function(SuccessChecklistsState value) successChecklists,
    required TResult Function(ErrorState value) error,
  }) => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(InitialState value)? initial,
    TResult? Function(LoadingState value)? loading,
    TResult? Function(SuccessChecklistUpdateState value)?
    successChecklistUpdate,
    TResult? Function(SuccessChecklistsState value)? successChecklists,
    TResult? Function(ErrorState value)? error,
  }) => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(InitialState value)? initial,
    TResult Function(LoadingState value)? loading,
    TResult Function(SuccessChecklistUpdateState value)? successChecklistUpdate,
    TResult Function(SuccessChecklistsState value)? successChecklists,
    TResult Function(ErrorState value)? error,
    required TResult orElse(),
  }) => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ChecklistUiStateCopyWith<$Res> {
  factory $ChecklistUiStateCopyWith(
    ChecklistUiState value,
    $Res Function(ChecklistUiState) then,
  ) = _$ChecklistUiStateCopyWithImpl<$Res, ChecklistUiState>;
}

/// @nodoc
class _$ChecklistUiStateCopyWithImpl<$Res, $Val extends ChecklistUiState>
    implements $ChecklistUiStateCopyWith<$Res> {
  _$ChecklistUiStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of ChecklistUiState
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
    extends _$ChecklistUiStateCopyWithImpl<$Res, _$InitialStateImpl>
    implements _$$InitialStateImplCopyWith<$Res> {
  __$$InitialStateImplCopyWithImpl(
    _$InitialStateImpl _value,
    $Res Function(_$InitialStateImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of ChecklistUiState
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$InitialStateImpl implements InitialState {
  const _$InitialStateImpl();

  @override
  String toString() {
    return 'ChecklistUiState.initial()';
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
    required TResult Function(ChecklistUpdate checklistUpdate)
    successChecklistUpdate,
    required TResult Function(List<Checklist>? checklists, bool hasMore)
    successChecklists,
    required TResult Function(String message) error,
  }) {
    return initial();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(ChecklistUpdate checklistUpdate)? successChecklistUpdate,
    TResult? Function(List<Checklist>? checklists, bool hasMore)?
    successChecklists,
    TResult? Function(String message)? error,
  }) {
    return initial?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(ChecklistUpdate checklistUpdate)? successChecklistUpdate,
    TResult Function(List<Checklist>? checklists, bool hasMore)?
    successChecklists,
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
    required TResult Function(SuccessChecklistUpdateState value)
    successChecklistUpdate,
    required TResult Function(SuccessChecklistsState value) successChecklists,
    required TResult Function(ErrorState value) error,
  }) {
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(InitialState value)? initial,
    TResult? Function(LoadingState value)? loading,
    TResult? Function(SuccessChecklistUpdateState value)?
    successChecklistUpdate,
    TResult? Function(SuccessChecklistsState value)? successChecklists,
    TResult? Function(ErrorState value)? error,
  }) {
    return initial?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(InitialState value)? initial,
    TResult Function(LoadingState value)? loading,
    TResult Function(SuccessChecklistUpdateState value)? successChecklistUpdate,
    TResult Function(SuccessChecklistsState value)? successChecklists,
    TResult Function(ErrorState value)? error,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class InitialState implements ChecklistUiState {
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
    extends _$ChecklistUiStateCopyWithImpl<$Res, _$LoadingStateImpl>
    implements _$$LoadingStateImplCopyWith<$Res> {
  __$$LoadingStateImplCopyWithImpl(
    _$LoadingStateImpl _value,
    $Res Function(_$LoadingStateImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of ChecklistUiState
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$LoadingStateImpl implements LoadingState {
  const _$LoadingStateImpl();

  @override
  String toString() {
    return 'ChecklistUiState.loading()';
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
    required TResult Function(ChecklistUpdate checklistUpdate)
    successChecklistUpdate,
    required TResult Function(List<Checklist>? checklists, bool hasMore)
    successChecklists,
    required TResult Function(String message) error,
  }) {
    return loading();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(ChecklistUpdate checklistUpdate)? successChecklistUpdate,
    TResult? Function(List<Checklist>? checklists, bool hasMore)?
    successChecklists,
    TResult? Function(String message)? error,
  }) {
    return loading?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(ChecklistUpdate checklistUpdate)? successChecklistUpdate,
    TResult Function(List<Checklist>? checklists, bool hasMore)?
    successChecklists,
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
    required TResult Function(SuccessChecklistUpdateState value)
    successChecklistUpdate,
    required TResult Function(SuccessChecklistsState value) successChecklists,
    required TResult Function(ErrorState value) error,
  }) {
    return loading(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(InitialState value)? initial,
    TResult? Function(LoadingState value)? loading,
    TResult? Function(SuccessChecklistUpdateState value)?
    successChecklistUpdate,
    TResult? Function(SuccessChecklistsState value)? successChecklists,
    TResult? Function(ErrorState value)? error,
  }) {
    return loading?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(InitialState value)? initial,
    TResult Function(LoadingState value)? loading,
    TResult Function(SuccessChecklistUpdateState value)? successChecklistUpdate,
    TResult Function(SuccessChecklistsState value)? successChecklists,
    TResult Function(ErrorState value)? error,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading(this);
    }
    return orElse();
  }
}

abstract class LoadingState implements ChecklistUiState {
  const factory LoadingState() = _$LoadingStateImpl;
}

/// @nodoc
abstract class _$$SuccessChecklistUpdateStateImplCopyWith<$Res> {
  factory _$$SuccessChecklistUpdateStateImplCopyWith(
    _$SuccessChecklistUpdateStateImpl value,
    $Res Function(_$SuccessChecklistUpdateStateImpl) then,
  ) = __$$SuccessChecklistUpdateStateImplCopyWithImpl<$Res>;
  @useResult
  $Res call({ChecklistUpdate checklistUpdate});
}

/// @nodoc
class __$$SuccessChecklistUpdateStateImplCopyWithImpl<$Res>
    extends
        _$ChecklistUiStateCopyWithImpl<$Res, _$SuccessChecklistUpdateStateImpl>
    implements _$$SuccessChecklistUpdateStateImplCopyWith<$Res> {
  __$$SuccessChecklistUpdateStateImplCopyWithImpl(
    _$SuccessChecklistUpdateStateImpl _value,
    $Res Function(_$SuccessChecklistUpdateStateImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of ChecklistUiState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({Object? checklistUpdate = null}) {
    return _then(
      _$SuccessChecklistUpdateStateImpl(
        checklistUpdate: null == checklistUpdate
            ? _value.checklistUpdate
            : checklistUpdate // ignore: cast_nullable_to_non_nullable
                  as ChecklistUpdate,
      ),
    );
  }
}

/// @nodoc

class _$SuccessChecklistUpdateStateImpl implements SuccessChecklistUpdateState {
  const _$SuccessChecklistUpdateStateImpl({required this.checklistUpdate});

  @override
  final ChecklistUpdate checklistUpdate;

  @override
  String toString() {
    return 'ChecklistUiState.successChecklistUpdate(checklistUpdate: $checklistUpdate)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SuccessChecklistUpdateStateImpl &&
            (identical(other.checklistUpdate, checklistUpdate) ||
                other.checklistUpdate == checklistUpdate));
  }

  @override
  int get hashCode => Object.hash(runtimeType, checklistUpdate);

  /// Create a copy of ChecklistUiState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$SuccessChecklistUpdateStateImplCopyWith<_$SuccessChecklistUpdateStateImpl>
  get copyWith =>
      __$$SuccessChecklistUpdateStateImplCopyWithImpl<
        _$SuccessChecklistUpdateStateImpl
      >(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(ChecklistUpdate checklistUpdate)
    successChecklistUpdate,
    required TResult Function(List<Checklist>? checklists, bool hasMore)
    successChecklists,
    required TResult Function(String message) error,
  }) {
    return successChecklistUpdate(checklistUpdate);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(ChecklistUpdate checklistUpdate)? successChecklistUpdate,
    TResult? Function(List<Checklist>? checklists, bool hasMore)?
    successChecklists,
    TResult? Function(String message)? error,
  }) {
    return successChecklistUpdate?.call(checklistUpdate);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(ChecklistUpdate checklistUpdate)? successChecklistUpdate,
    TResult Function(List<Checklist>? checklists, bool hasMore)?
    successChecklists,
    TResult Function(String message)? error,
    required TResult orElse(),
  }) {
    if (successChecklistUpdate != null) {
      return successChecklistUpdate(checklistUpdate);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(InitialState value) initial,
    required TResult Function(LoadingState value) loading,
    required TResult Function(SuccessChecklistUpdateState value)
    successChecklistUpdate,
    required TResult Function(SuccessChecklistsState value) successChecklists,
    required TResult Function(ErrorState value) error,
  }) {
    return successChecklistUpdate(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(InitialState value)? initial,
    TResult? Function(LoadingState value)? loading,
    TResult? Function(SuccessChecklistUpdateState value)?
    successChecklistUpdate,
    TResult? Function(SuccessChecklistsState value)? successChecklists,
    TResult? Function(ErrorState value)? error,
  }) {
    return successChecklistUpdate?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(InitialState value)? initial,
    TResult Function(LoadingState value)? loading,
    TResult Function(SuccessChecklistUpdateState value)? successChecklistUpdate,
    TResult Function(SuccessChecklistsState value)? successChecklists,
    TResult Function(ErrorState value)? error,
    required TResult orElse(),
  }) {
    if (successChecklistUpdate != null) {
      return successChecklistUpdate(this);
    }
    return orElse();
  }
}

abstract class SuccessChecklistUpdateState implements ChecklistUiState {
  const factory SuccessChecklistUpdateState({
    required final ChecklistUpdate checklistUpdate,
  }) = _$SuccessChecklistUpdateStateImpl;

  ChecklistUpdate get checklistUpdate;

  /// Create a copy of ChecklistUiState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$SuccessChecklistUpdateStateImplCopyWith<_$SuccessChecklistUpdateStateImpl>
  get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$SuccessChecklistsStateImplCopyWith<$Res> {
  factory _$$SuccessChecklistsStateImplCopyWith(
    _$SuccessChecklistsStateImpl value,
    $Res Function(_$SuccessChecklistsStateImpl) then,
  ) = __$$SuccessChecklistsStateImplCopyWithImpl<$Res>;
  @useResult
  $Res call({List<Checklist>? checklists, bool hasMore});
}

/// @nodoc
class __$$SuccessChecklistsStateImplCopyWithImpl<$Res>
    extends _$ChecklistUiStateCopyWithImpl<$Res, _$SuccessChecklistsStateImpl>
    implements _$$SuccessChecklistsStateImplCopyWith<$Res> {
  __$$SuccessChecklistsStateImplCopyWithImpl(
    _$SuccessChecklistsStateImpl _value,
    $Res Function(_$SuccessChecklistsStateImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of ChecklistUiState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({Object? checklists = freezed, Object? hasMore = null}) {
    return _then(
      _$SuccessChecklistsStateImpl(
        checklists: freezed == checklists
            ? _value._checklists
            : checklists // ignore: cast_nullable_to_non_nullable
                  as List<Checklist>?,
        hasMore: null == hasMore
            ? _value.hasMore
            : hasMore // ignore: cast_nullable_to_non_nullable
                  as bool,
      ),
    );
  }
}

/// @nodoc

class _$SuccessChecklistsStateImpl implements SuccessChecklistsState {
  const _$SuccessChecklistsStateImpl({
    final List<Checklist>? checklists,
    this.hasMore = true,
  }) : _checklists = checklists;

  final List<Checklist>? _checklists;
  @override
  List<Checklist>? get checklists {
    final value = _checklists;
    if (value == null) return null;
    if (_checklists is EqualUnmodifiableListView) return _checklists;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  @JsonKey()
  final bool hasMore;

  @override
  String toString() {
    return 'ChecklistUiState.successChecklists(checklists: $checklists, hasMore: $hasMore)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SuccessChecklistsStateImpl &&
            const DeepCollectionEquality().equals(
              other._checklists,
              _checklists,
            ) &&
            (identical(other.hasMore, hasMore) || other.hasMore == hasMore));
  }

  @override
  int get hashCode => Object.hash(
    runtimeType,
    const DeepCollectionEquality().hash(_checklists),
    hasMore,
  );

  /// Create a copy of ChecklistUiState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$SuccessChecklistsStateImplCopyWith<_$SuccessChecklistsStateImpl>
  get copyWith =>
      __$$SuccessChecklistsStateImplCopyWithImpl<_$SuccessChecklistsStateImpl>(
        this,
        _$identity,
      );

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(ChecklistUpdate checklistUpdate)
    successChecklistUpdate,
    required TResult Function(List<Checklist>? checklists, bool hasMore)
    successChecklists,
    required TResult Function(String message) error,
  }) {
    return successChecklists(checklists, hasMore);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(ChecklistUpdate checklistUpdate)? successChecklistUpdate,
    TResult? Function(List<Checklist>? checklists, bool hasMore)?
    successChecklists,
    TResult? Function(String message)? error,
  }) {
    return successChecklists?.call(checklists, hasMore);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(ChecklistUpdate checklistUpdate)? successChecklistUpdate,
    TResult Function(List<Checklist>? checklists, bool hasMore)?
    successChecklists,
    TResult Function(String message)? error,
    required TResult orElse(),
  }) {
    if (successChecklists != null) {
      return successChecklists(checklists, hasMore);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(InitialState value) initial,
    required TResult Function(LoadingState value) loading,
    required TResult Function(SuccessChecklistUpdateState value)
    successChecklistUpdate,
    required TResult Function(SuccessChecklistsState value) successChecklists,
    required TResult Function(ErrorState value) error,
  }) {
    return successChecklists(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(InitialState value)? initial,
    TResult? Function(LoadingState value)? loading,
    TResult? Function(SuccessChecklistUpdateState value)?
    successChecklistUpdate,
    TResult? Function(SuccessChecklistsState value)? successChecklists,
    TResult? Function(ErrorState value)? error,
  }) {
    return successChecklists?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(InitialState value)? initial,
    TResult Function(LoadingState value)? loading,
    TResult Function(SuccessChecklistUpdateState value)? successChecklistUpdate,
    TResult Function(SuccessChecklistsState value)? successChecklists,
    TResult Function(ErrorState value)? error,
    required TResult orElse(),
  }) {
    if (successChecklists != null) {
      return successChecklists(this);
    }
    return orElse();
  }
}

abstract class SuccessChecklistsState implements ChecklistUiState {
  const factory SuccessChecklistsState({
    final List<Checklist>? checklists,
    final bool hasMore,
  }) = _$SuccessChecklistsStateImpl;

  List<Checklist>? get checklists;
  bool get hasMore;

  /// Create a copy of ChecklistUiState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$SuccessChecklistsStateImplCopyWith<_$SuccessChecklistsStateImpl>
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
    extends _$ChecklistUiStateCopyWithImpl<$Res, _$ErrorStateImpl>
    implements _$$ErrorStateImplCopyWith<$Res> {
  __$$ErrorStateImplCopyWithImpl(
    _$ErrorStateImpl _value,
    $Res Function(_$ErrorStateImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of ChecklistUiState
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
    return 'ChecklistUiState.error(message: $message)';
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

  /// Create a copy of ChecklistUiState
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
    required TResult Function(ChecklistUpdate checklistUpdate)
    successChecklistUpdate,
    required TResult Function(List<Checklist>? checklists, bool hasMore)
    successChecklists,
    required TResult Function(String message) error,
  }) {
    return error(message);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(ChecklistUpdate checklistUpdate)? successChecklistUpdate,
    TResult? Function(List<Checklist>? checklists, bool hasMore)?
    successChecklists,
    TResult? Function(String message)? error,
  }) {
    return error?.call(message);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(ChecklistUpdate checklistUpdate)? successChecklistUpdate,
    TResult Function(List<Checklist>? checklists, bool hasMore)?
    successChecklists,
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
    required TResult Function(SuccessChecklistUpdateState value)
    successChecklistUpdate,
    required TResult Function(SuccessChecklistsState value) successChecklists,
    required TResult Function(ErrorState value) error,
  }) {
    return error(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(InitialState value)? initial,
    TResult? Function(LoadingState value)? loading,
    TResult? Function(SuccessChecklistUpdateState value)?
    successChecklistUpdate,
    TResult? Function(SuccessChecklistsState value)? successChecklists,
    TResult? Function(ErrorState value)? error,
  }) {
    return error?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(InitialState value)? initial,
    TResult Function(LoadingState value)? loading,
    TResult Function(SuccessChecklistUpdateState value)? successChecklistUpdate,
    TResult Function(SuccessChecklistsState value)? successChecklists,
    TResult Function(ErrorState value)? error,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error(this);
    }
    return orElse();
  }
}

abstract class ErrorState implements ChecklistUiState {
  const factory ErrorState(final String message) = _$ErrorStateImpl;

  String get message;

  /// Create a copy of ChecklistUiState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$ErrorStateImplCopyWith<_$ErrorStateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
