// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'community_ui_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
  'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models',
);

/// @nodoc
mixin _$CommunityUiState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(Post post) successPost,
    required TResult Function(List<Post>? posts, bool hasMore) successPostList,
    required TResult Function(Comment comment) successComment,
    required TResult Function(Upvote upvote) successUpvotePost,
    required TResult Function(String message) error,
  }) => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(Post post)? successPost,
    TResult? Function(List<Post>? posts, bool hasMore)? successPostList,
    TResult? Function(Comment comment)? successComment,
    TResult? Function(Upvote upvote)? successUpvotePost,
    TResult? Function(String message)? error,
  }) => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(Post post)? successPost,
    TResult Function(List<Post>? posts, bool hasMore)? successPostList,
    TResult Function(Comment comment)? successComment,
    TResult Function(Upvote upvote)? successUpvotePost,
    TResult Function(String message)? error,
    required TResult orElse(),
  }) => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(InitialState value) initial,
    required TResult Function(LoadingState value) loading,
    required TResult Function(SuccessPostState value) successPost,
    required TResult Function(SuccessPostListState value) successPostList,
    required TResult Function(SuccessCommentState value) successComment,
    required TResult Function(SuccessUpvotePostState value) successUpvotePost,
    required TResult Function(ErrorState value) error,
  }) => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(InitialState value)? initial,
    TResult? Function(LoadingState value)? loading,
    TResult? Function(SuccessPostState value)? successPost,
    TResult? Function(SuccessPostListState value)? successPostList,
    TResult? Function(SuccessCommentState value)? successComment,
    TResult? Function(SuccessUpvotePostState value)? successUpvotePost,
    TResult? Function(ErrorState value)? error,
  }) => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(InitialState value)? initial,
    TResult Function(LoadingState value)? loading,
    TResult Function(SuccessPostState value)? successPost,
    TResult Function(SuccessPostListState value)? successPostList,
    TResult Function(SuccessCommentState value)? successComment,
    TResult Function(SuccessUpvotePostState value)? successUpvotePost,
    TResult Function(ErrorState value)? error,
    required TResult orElse(),
  }) => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CommunityUiStateCopyWith<$Res> {
  factory $CommunityUiStateCopyWith(
    CommunityUiState value,
    $Res Function(CommunityUiState) then,
  ) = _$CommunityUiStateCopyWithImpl<$Res, CommunityUiState>;
}

/// @nodoc
class _$CommunityUiStateCopyWithImpl<$Res, $Val extends CommunityUiState>
    implements $CommunityUiStateCopyWith<$Res> {
  _$CommunityUiStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of CommunityUiState
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
    extends _$CommunityUiStateCopyWithImpl<$Res, _$InitialStateImpl>
    implements _$$InitialStateImplCopyWith<$Res> {
  __$$InitialStateImplCopyWithImpl(
    _$InitialStateImpl _value,
    $Res Function(_$InitialStateImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of CommunityUiState
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$InitialStateImpl implements InitialState {
  const _$InitialStateImpl();

  @override
  String toString() {
    return 'CommunityUiState.initial()';
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
    required TResult Function(Post post) successPost,
    required TResult Function(List<Post>? posts, bool hasMore) successPostList,
    required TResult Function(Comment comment) successComment,
    required TResult Function(Upvote upvote) successUpvotePost,
    required TResult Function(String message) error,
  }) {
    return initial();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(Post post)? successPost,
    TResult? Function(List<Post>? posts, bool hasMore)? successPostList,
    TResult? Function(Comment comment)? successComment,
    TResult? Function(Upvote upvote)? successUpvotePost,
    TResult? Function(String message)? error,
  }) {
    return initial?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(Post post)? successPost,
    TResult Function(List<Post>? posts, bool hasMore)? successPostList,
    TResult Function(Comment comment)? successComment,
    TResult Function(Upvote upvote)? successUpvotePost,
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
    required TResult Function(SuccessPostState value) successPost,
    required TResult Function(SuccessPostListState value) successPostList,
    required TResult Function(SuccessCommentState value) successComment,
    required TResult Function(SuccessUpvotePostState value) successUpvotePost,
    required TResult Function(ErrorState value) error,
  }) {
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(InitialState value)? initial,
    TResult? Function(LoadingState value)? loading,
    TResult? Function(SuccessPostState value)? successPost,
    TResult? Function(SuccessPostListState value)? successPostList,
    TResult? Function(SuccessCommentState value)? successComment,
    TResult? Function(SuccessUpvotePostState value)? successUpvotePost,
    TResult? Function(ErrorState value)? error,
  }) {
    return initial?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(InitialState value)? initial,
    TResult Function(LoadingState value)? loading,
    TResult Function(SuccessPostState value)? successPost,
    TResult Function(SuccessPostListState value)? successPostList,
    TResult Function(SuccessCommentState value)? successComment,
    TResult Function(SuccessUpvotePostState value)? successUpvotePost,
    TResult Function(ErrorState value)? error,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class InitialState implements CommunityUiState {
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
    extends _$CommunityUiStateCopyWithImpl<$Res, _$LoadingStateImpl>
    implements _$$LoadingStateImplCopyWith<$Res> {
  __$$LoadingStateImplCopyWithImpl(
    _$LoadingStateImpl _value,
    $Res Function(_$LoadingStateImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of CommunityUiState
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$LoadingStateImpl implements LoadingState {
  const _$LoadingStateImpl();

  @override
  String toString() {
    return 'CommunityUiState.loading()';
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
    required TResult Function(Post post) successPost,
    required TResult Function(List<Post>? posts, bool hasMore) successPostList,
    required TResult Function(Comment comment) successComment,
    required TResult Function(Upvote upvote) successUpvotePost,
    required TResult Function(String message) error,
  }) {
    return loading();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(Post post)? successPost,
    TResult? Function(List<Post>? posts, bool hasMore)? successPostList,
    TResult? Function(Comment comment)? successComment,
    TResult? Function(Upvote upvote)? successUpvotePost,
    TResult? Function(String message)? error,
  }) {
    return loading?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(Post post)? successPost,
    TResult Function(List<Post>? posts, bool hasMore)? successPostList,
    TResult Function(Comment comment)? successComment,
    TResult Function(Upvote upvote)? successUpvotePost,
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
    required TResult Function(SuccessPostState value) successPost,
    required TResult Function(SuccessPostListState value) successPostList,
    required TResult Function(SuccessCommentState value) successComment,
    required TResult Function(SuccessUpvotePostState value) successUpvotePost,
    required TResult Function(ErrorState value) error,
  }) {
    return loading(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(InitialState value)? initial,
    TResult? Function(LoadingState value)? loading,
    TResult? Function(SuccessPostState value)? successPost,
    TResult? Function(SuccessPostListState value)? successPostList,
    TResult? Function(SuccessCommentState value)? successComment,
    TResult? Function(SuccessUpvotePostState value)? successUpvotePost,
    TResult? Function(ErrorState value)? error,
  }) {
    return loading?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(InitialState value)? initial,
    TResult Function(LoadingState value)? loading,
    TResult Function(SuccessPostState value)? successPost,
    TResult Function(SuccessPostListState value)? successPostList,
    TResult Function(SuccessCommentState value)? successComment,
    TResult Function(SuccessUpvotePostState value)? successUpvotePost,
    TResult Function(ErrorState value)? error,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading(this);
    }
    return orElse();
  }
}

abstract class LoadingState implements CommunityUiState {
  const factory LoadingState() = _$LoadingStateImpl;
}

/// @nodoc
abstract class _$$SuccessPostStateImplCopyWith<$Res> {
  factory _$$SuccessPostStateImplCopyWith(
    _$SuccessPostStateImpl value,
    $Res Function(_$SuccessPostStateImpl) then,
  ) = __$$SuccessPostStateImplCopyWithImpl<$Res>;
  @useResult
  $Res call({Post post});
}

/// @nodoc
class __$$SuccessPostStateImplCopyWithImpl<$Res>
    extends _$CommunityUiStateCopyWithImpl<$Res, _$SuccessPostStateImpl>
    implements _$$SuccessPostStateImplCopyWith<$Res> {
  __$$SuccessPostStateImplCopyWithImpl(
    _$SuccessPostStateImpl _value,
    $Res Function(_$SuccessPostStateImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of CommunityUiState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({Object? post = null}) {
    return _then(
      _$SuccessPostStateImpl(
        post: null == post
            ? _value.post
            : post // ignore: cast_nullable_to_non_nullable
                  as Post,
      ),
    );
  }
}

/// @nodoc

class _$SuccessPostStateImpl implements SuccessPostState {
  const _$SuccessPostStateImpl({required this.post});

  @override
  final Post post;

  @override
  String toString() {
    return 'CommunityUiState.successPost(post: $post)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SuccessPostStateImpl &&
            (identical(other.post, post) || other.post == post));
  }

  @override
  int get hashCode => Object.hash(runtimeType, post);

  /// Create a copy of CommunityUiState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$SuccessPostStateImplCopyWith<_$SuccessPostStateImpl> get copyWith =>
      __$$SuccessPostStateImplCopyWithImpl<_$SuccessPostStateImpl>(
        this,
        _$identity,
      );

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(Post post) successPost,
    required TResult Function(List<Post>? posts, bool hasMore) successPostList,
    required TResult Function(Comment comment) successComment,
    required TResult Function(Upvote upvote) successUpvotePost,
    required TResult Function(String message) error,
  }) {
    return successPost(post);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(Post post)? successPost,
    TResult? Function(List<Post>? posts, bool hasMore)? successPostList,
    TResult? Function(Comment comment)? successComment,
    TResult? Function(Upvote upvote)? successUpvotePost,
    TResult? Function(String message)? error,
  }) {
    return successPost?.call(post);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(Post post)? successPost,
    TResult Function(List<Post>? posts, bool hasMore)? successPostList,
    TResult Function(Comment comment)? successComment,
    TResult Function(Upvote upvote)? successUpvotePost,
    TResult Function(String message)? error,
    required TResult orElse(),
  }) {
    if (successPost != null) {
      return successPost(post);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(InitialState value) initial,
    required TResult Function(LoadingState value) loading,
    required TResult Function(SuccessPostState value) successPost,
    required TResult Function(SuccessPostListState value) successPostList,
    required TResult Function(SuccessCommentState value) successComment,
    required TResult Function(SuccessUpvotePostState value) successUpvotePost,
    required TResult Function(ErrorState value) error,
  }) {
    return successPost(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(InitialState value)? initial,
    TResult? Function(LoadingState value)? loading,
    TResult? Function(SuccessPostState value)? successPost,
    TResult? Function(SuccessPostListState value)? successPostList,
    TResult? Function(SuccessCommentState value)? successComment,
    TResult? Function(SuccessUpvotePostState value)? successUpvotePost,
    TResult? Function(ErrorState value)? error,
  }) {
    return successPost?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(InitialState value)? initial,
    TResult Function(LoadingState value)? loading,
    TResult Function(SuccessPostState value)? successPost,
    TResult Function(SuccessPostListState value)? successPostList,
    TResult Function(SuccessCommentState value)? successComment,
    TResult Function(SuccessUpvotePostState value)? successUpvotePost,
    TResult Function(ErrorState value)? error,
    required TResult orElse(),
  }) {
    if (successPost != null) {
      return successPost(this);
    }
    return orElse();
  }
}

abstract class SuccessPostState implements CommunityUiState {
  const factory SuccessPostState({required final Post post}) =
      _$SuccessPostStateImpl;

  Post get post;

  /// Create a copy of CommunityUiState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$SuccessPostStateImplCopyWith<_$SuccessPostStateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$SuccessPostListStateImplCopyWith<$Res> {
  factory _$$SuccessPostListStateImplCopyWith(
    _$SuccessPostListStateImpl value,
    $Res Function(_$SuccessPostListStateImpl) then,
  ) = __$$SuccessPostListStateImplCopyWithImpl<$Res>;
  @useResult
  $Res call({List<Post>? posts, bool hasMore});
}

/// @nodoc
class __$$SuccessPostListStateImplCopyWithImpl<$Res>
    extends _$CommunityUiStateCopyWithImpl<$Res, _$SuccessPostListStateImpl>
    implements _$$SuccessPostListStateImplCopyWith<$Res> {
  __$$SuccessPostListStateImplCopyWithImpl(
    _$SuccessPostListStateImpl _value,
    $Res Function(_$SuccessPostListStateImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of CommunityUiState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({Object? posts = freezed, Object? hasMore = null}) {
    return _then(
      _$SuccessPostListStateImpl(
        posts: freezed == posts
            ? _value._posts
            : posts // ignore: cast_nullable_to_non_nullable
                  as List<Post>?,
        hasMore: null == hasMore
            ? _value.hasMore
            : hasMore // ignore: cast_nullable_to_non_nullable
                  as bool,
      ),
    );
  }
}

/// @nodoc

class _$SuccessPostListStateImpl implements SuccessPostListState {
  const _$SuccessPostListStateImpl({
    final List<Post>? posts,
    this.hasMore = true,
  }) : _posts = posts;

  final List<Post>? _posts;
  @override
  List<Post>? get posts {
    final value = _posts;
    if (value == null) return null;
    if (_posts is EqualUnmodifiableListView) return _posts;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  @JsonKey()
  final bool hasMore;

  @override
  String toString() {
    return 'CommunityUiState.successPostList(posts: $posts, hasMore: $hasMore)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SuccessPostListStateImpl &&
            const DeepCollectionEquality().equals(other._posts, _posts) &&
            (identical(other.hasMore, hasMore) || other.hasMore == hasMore));
  }

  @override
  int get hashCode => Object.hash(
    runtimeType,
    const DeepCollectionEquality().hash(_posts),
    hasMore,
  );

  /// Create a copy of CommunityUiState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$SuccessPostListStateImplCopyWith<_$SuccessPostListStateImpl>
  get copyWith =>
      __$$SuccessPostListStateImplCopyWithImpl<_$SuccessPostListStateImpl>(
        this,
        _$identity,
      );

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(Post post) successPost,
    required TResult Function(List<Post>? posts, bool hasMore) successPostList,
    required TResult Function(Comment comment) successComment,
    required TResult Function(Upvote upvote) successUpvotePost,
    required TResult Function(String message) error,
  }) {
    return successPostList(posts, hasMore);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(Post post)? successPost,
    TResult? Function(List<Post>? posts, bool hasMore)? successPostList,
    TResult? Function(Comment comment)? successComment,
    TResult? Function(Upvote upvote)? successUpvotePost,
    TResult? Function(String message)? error,
  }) {
    return successPostList?.call(posts, hasMore);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(Post post)? successPost,
    TResult Function(List<Post>? posts, bool hasMore)? successPostList,
    TResult Function(Comment comment)? successComment,
    TResult Function(Upvote upvote)? successUpvotePost,
    TResult Function(String message)? error,
    required TResult orElse(),
  }) {
    if (successPostList != null) {
      return successPostList(posts, hasMore);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(InitialState value) initial,
    required TResult Function(LoadingState value) loading,
    required TResult Function(SuccessPostState value) successPost,
    required TResult Function(SuccessPostListState value) successPostList,
    required TResult Function(SuccessCommentState value) successComment,
    required TResult Function(SuccessUpvotePostState value) successUpvotePost,
    required TResult Function(ErrorState value) error,
  }) {
    return successPostList(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(InitialState value)? initial,
    TResult? Function(LoadingState value)? loading,
    TResult? Function(SuccessPostState value)? successPost,
    TResult? Function(SuccessPostListState value)? successPostList,
    TResult? Function(SuccessCommentState value)? successComment,
    TResult? Function(SuccessUpvotePostState value)? successUpvotePost,
    TResult? Function(ErrorState value)? error,
  }) {
    return successPostList?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(InitialState value)? initial,
    TResult Function(LoadingState value)? loading,
    TResult Function(SuccessPostState value)? successPost,
    TResult Function(SuccessPostListState value)? successPostList,
    TResult Function(SuccessCommentState value)? successComment,
    TResult Function(SuccessUpvotePostState value)? successUpvotePost,
    TResult Function(ErrorState value)? error,
    required TResult orElse(),
  }) {
    if (successPostList != null) {
      return successPostList(this);
    }
    return orElse();
  }
}

abstract class SuccessPostListState implements CommunityUiState {
  const factory SuccessPostListState({
    final List<Post>? posts,
    final bool hasMore,
  }) = _$SuccessPostListStateImpl;

  List<Post>? get posts;
  bool get hasMore;

  /// Create a copy of CommunityUiState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$SuccessPostListStateImplCopyWith<_$SuccessPostListStateImpl>
  get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$SuccessCommentStateImplCopyWith<$Res> {
  factory _$$SuccessCommentStateImplCopyWith(
    _$SuccessCommentStateImpl value,
    $Res Function(_$SuccessCommentStateImpl) then,
  ) = __$$SuccessCommentStateImplCopyWithImpl<$Res>;
  @useResult
  $Res call({Comment comment});
}

/// @nodoc
class __$$SuccessCommentStateImplCopyWithImpl<$Res>
    extends _$CommunityUiStateCopyWithImpl<$Res, _$SuccessCommentStateImpl>
    implements _$$SuccessCommentStateImplCopyWith<$Res> {
  __$$SuccessCommentStateImplCopyWithImpl(
    _$SuccessCommentStateImpl _value,
    $Res Function(_$SuccessCommentStateImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of CommunityUiState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({Object? comment = null}) {
    return _then(
      _$SuccessCommentStateImpl(
        comment: null == comment
            ? _value.comment
            : comment // ignore: cast_nullable_to_non_nullable
                  as Comment,
      ),
    );
  }
}

/// @nodoc

class _$SuccessCommentStateImpl implements SuccessCommentState {
  const _$SuccessCommentStateImpl({required this.comment});

  @override
  final Comment comment;

  @override
  String toString() {
    return 'CommunityUiState.successComment(comment: $comment)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SuccessCommentStateImpl &&
            (identical(other.comment, comment) || other.comment == comment));
  }

  @override
  int get hashCode => Object.hash(runtimeType, comment);

  /// Create a copy of CommunityUiState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$SuccessCommentStateImplCopyWith<_$SuccessCommentStateImpl> get copyWith =>
      __$$SuccessCommentStateImplCopyWithImpl<_$SuccessCommentStateImpl>(
        this,
        _$identity,
      );

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(Post post) successPost,
    required TResult Function(List<Post>? posts, bool hasMore) successPostList,
    required TResult Function(Comment comment) successComment,
    required TResult Function(Upvote upvote) successUpvotePost,
    required TResult Function(String message) error,
  }) {
    return successComment(comment);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(Post post)? successPost,
    TResult? Function(List<Post>? posts, bool hasMore)? successPostList,
    TResult? Function(Comment comment)? successComment,
    TResult? Function(Upvote upvote)? successUpvotePost,
    TResult? Function(String message)? error,
  }) {
    return successComment?.call(comment);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(Post post)? successPost,
    TResult Function(List<Post>? posts, bool hasMore)? successPostList,
    TResult Function(Comment comment)? successComment,
    TResult Function(Upvote upvote)? successUpvotePost,
    TResult Function(String message)? error,
    required TResult orElse(),
  }) {
    if (successComment != null) {
      return successComment(comment);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(InitialState value) initial,
    required TResult Function(LoadingState value) loading,
    required TResult Function(SuccessPostState value) successPost,
    required TResult Function(SuccessPostListState value) successPostList,
    required TResult Function(SuccessCommentState value) successComment,
    required TResult Function(SuccessUpvotePostState value) successUpvotePost,
    required TResult Function(ErrorState value) error,
  }) {
    return successComment(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(InitialState value)? initial,
    TResult? Function(LoadingState value)? loading,
    TResult? Function(SuccessPostState value)? successPost,
    TResult? Function(SuccessPostListState value)? successPostList,
    TResult? Function(SuccessCommentState value)? successComment,
    TResult? Function(SuccessUpvotePostState value)? successUpvotePost,
    TResult? Function(ErrorState value)? error,
  }) {
    return successComment?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(InitialState value)? initial,
    TResult Function(LoadingState value)? loading,
    TResult Function(SuccessPostState value)? successPost,
    TResult Function(SuccessPostListState value)? successPostList,
    TResult Function(SuccessCommentState value)? successComment,
    TResult Function(SuccessUpvotePostState value)? successUpvotePost,
    TResult Function(ErrorState value)? error,
    required TResult orElse(),
  }) {
    if (successComment != null) {
      return successComment(this);
    }
    return orElse();
  }
}

abstract class SuccessCommentState implements CommunityUiState {
  const factory SuccessCommentState({required final Comment comment}) =
      _$SuccessCommentStateImpl;

  Comment get comment;

  /// Create a copy of CommunityUiState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$SuccessCommentStateImplCopyWith<_$SuccessCommentStateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$SuccessUpvotePostStateImplCopyWith<$Res> {
  factory _$$SuccessUpvotePostStateImplCopyWith(
    _$SuccessUpvotePostStateImpl value,
    $Res Function(_$SuccessUpvotePostStateImpl) then,
  ) = __$$SuccessUpvotePostStateImplCopyWithImpl<$Res>;
  @useResult
  $Res call({Upvote upvote});
}

/// @nodoc
class __$$SuccessUpvotePostStateImplCopyWithImpl<$Res>
    extends _$CommunityUiStateCopyWithImpl<$Res, _$SuccessUpvotePostStateImpl>
    implements _$$SuccessUpvotePostStateImplCopyWith<$Res> {
  __$$SuccessUpvotePostStateImplCopyWithImpl(
    _$SuccessUpvotePostStateImpl _value,
    $Res Function(_$SuccessUpvotePostStateImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of CommunityUiState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({Object? upvote = null}) {
    return _then(
      _$SuccessUpvotePostStateImpl(
        upvote: null == upvote
            ? _value.upvote
            : upvote // ignore: cast_nullable_to_non_nullable
                  as Upvote,
      ),
    );
  }
}

/// @nodoc

class _$SuccessUpvotePostStateImpl implements SuccessUpvotePostState {
  const _$SuccessUpvotePostStateImpl({required this.upvote});

  @override
  final Upvote upvote;

  @override
  String toString() {
    return 'CommunityUiState.successUpvotePost(upvote: $upvote)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SuccessUpvotePostStateImpl &&
            (identical(other.upvote, upvote) || other.upvote == upvote));
  }

  @override
  int get hashCode => Object.hash(runtimeType, upvote);

  /// Create a copy of CommunityUiState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$SuccessUpvotePostStateImplCopyWith<_$SuccessUpvotePostStateImpl>
  get copyWith =>
      __$$SuccessUpvotePostStateImplCopyWithImpl<_$SuccessUpvotePostStateImpl>(
        this,
        _$identity,
      );

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(Post post) successPost,
    required TResult Function(List<Post>? posts, bool hasMore) successPostList,
    required TResult Function(Comment comment) successComment,
    required TResult Function(Upvote upvote) successUpvotePost,
    required TResult Function(String message) error,
  }) {
    return successUpvotePost(upvote);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(Post post)? successPost,
    TResult? Function(List<Post>? posts, bool hasMore)? successPostList,
    TResult? Function(Comment comment)? successComment,
    TResult? Function(Upvote upvote)? successUpvotePost,
    TResult? Function(String message)? error,
  }) {
    return successUpvotePost?.call(upvote);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(Post post)? successPost,
    TResult Function(List<Post>? posts, bool hasMore)? successPostList,
    TResult Function(Comment comment)? successComment,
    TResult Function(Upvote upvote)? successUpvotePost,
    TResult Function(String message)? error,
    required TResult orElse(),
  }) {
    if (successUpvotePost != null) {
      return successUpvotePost(upvote);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(InitialState value) initial,
    required TResult Function(LoadingState value) loading,
    required TResult Function(SuccessPostState value) successPost,
    required TResult Function(SuccessPostListState value) successPostList,
    required TResult Function(SuccessCommentState value) successComment,
    required TResult Function(SuccessUpvotePostState value) successUpvotePost,
    required TResult Function(ErrorState value) error,
  }) {
    return successUpvotePost(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(InitialState value)? initial,
    TResult? Function(LoadingState value)? loading,
    TResult? Function(SuccessPostState value)? successPost,
    TResult? Function(SuccessPostListState value)? successPostList,
    TResult? Function(SuccessCommentState value)? successComment,
    TResult? Function(SuccessUpvotePostState value)? successUpvotePost,
    TResult? Function(ErrorState value)? error,
  }) {
    return successUpvotePost?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(InitialState value)? initial,
    TResult Function(LoadingState value)? loading,
    TResult Function(SuccessPostState value)? successPost,
    TResult Function(SuccessPostListState value)? successPostList,
    TResult Function(SuccessCommentState value)? successComment,
    TResult Function(SuccessUpvotePostState value)? successUpvotePost,
    TResult Function(ErrorState value)? error,
    required TResult orElse(),
  }) {
    if (successUpvotePost != null) {
      return successUpvotePost(this);
    }
    return orElse();
  }
}

abstract class SuccessUpvotePostState implements CommunityUiState {
  const factory SuccessUpvotePostState({required final Upvote upvote}) =
      _$SuccessUpvotePostStateImpl;

  Upvote get upvote;

  /// Create a copy of CommunityUiState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$SuccessUpvotePostStateImplCopyWith<_$SuccessUpvotePostStateImpl>
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
    extends _$CommunityUiStateCopyWithImpl<$Res, _$ErrorStateImpl>
    implements _$$ErrorStateImplCopyWith<$Res> {
  __$$ErrorStateImplCopyWithImpl(
    _$ErrorStateImpl _value,
    $Res Function(_$ErrorStateImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of CommunityUiState
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
    return 'CommunityUiState.error(message: $message)';
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

  /// Create a copy of CommunityUiState
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
    required TResult Function(Post post) successPost,
    required TResult Function(List<Post>? posts, bool hasMore) successPostList,
    required TResult Function(Comment comment) successComment,
    required TResult Function(Upvote upvote) successUpvotePost,
    required TResult Function(String message) error,
  }) {
    return error(message);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(Post post)? successPost,
    TResult? Function(List<Post>? posts, bool hasMore)? successPostList,
    TResult? Function(Comment comment)? successComment,
    TResult? Function(Upvote upvote)? successUpvotePost,
    TResult? Function(String message)? error,
  }) {
    return error?.call(message);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(Post post)? successPost,
    TResult Function(List<Post>? posts, bool hasMore)? successPostList,
    TResult Function(Comment comment)? successComment,
    TResult Function(Upvote upvote)? successUpvotePost,
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
    required TResult Function(SuccessPostState value) successPost,
    required TResult Function(SuccessPostListState value) successPostList,
    required TResult Function(SuccessCommentState value) successComment,
    required TResult Function(SuccessUpvotePostState value) successUpvotePost,
    required TResult Function(ErrorState value) error,
  }) {
    return error(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(InitialState value)? initial,
    TResult? Function(LoadingState value)? loading,
    TResult? Function(SuccessPostState value)? successPost,
    TResult? Function(SuccessPostListState value)? successPostList,
    TResult? Function(SuccessCommentState value)? successComment,
    TResult? Function(SuccessUpvotePostState value)? successUpvotePost,
    TResult? Function(ErrorState value)? error,
  }) {
    return error?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(InitialState value)? initial,
    TResult Function(LoadingState value)? loading,
    TResult Function(SuccessPostState value)? successPost,
    TResult Function(SuccessPostListState value)? successPostList,
    TResult Function(SuccessCommentState value)? successComment,
    TResult Function(SuccessUpvotePostState value)? successUpvotePost,
    TResult Function(ErrorState value)? error,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error(this);
    }
    return orElse();
  }
}

abstract class ErrorState implements CommunityUiState {
  const factory ErrorState(final String message) = _$ErrorStateImpl;

  String get message;

  /// Create a copy of CommunityUiState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$ErrorStateImplCopyWith<_$ErrorStateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
