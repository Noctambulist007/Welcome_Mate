// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'post_list_data_response.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
  'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models',
);

PostListDataResponse _$PostListDataResponseFromJson(Map<String, dynamic> json) {
  return _PostListResponse.fromJson(json);
}

/// @nodoc
mixin _$PostListDataResponse {
  @JsonKey(name: 'count')
  int get count => throw _privateConstructorUsedError;
  @JsonKey(name: 'next')
  String? get next => throw _privateConstructorUsedError;
  @JsonKey(name: 'previous')
  String? get previous => throw _privateConstructorUsedError;
  @JsonKey(name: 'results')
  List<PostDataResponse>? get results => throw _privateConstructorUsedError;

  /// Serializes this PostListDataResponse to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of PostListDataResponse
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $PostListDataResponseCopyWith<PostListDataResponse> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PostListDataResponseCopyWith<$Res> {
  factory $PostListDataResponseCopyWith(
    PostListDataResponse value,
    $Res Function(PostListDataResponse) then,
  ) = _$PostListDataResponseCopyWithImpl<$Res, PostListDataResponse>;
  @useResult
  $Res call({
    @JsonKey(name: 'count') int count,
    @JsonKey(name: 'next') String? next,
    @JsonKey(name: 'previous') String? previous,
    @JsonKey(name: 'results') List<PostDataResponse>? results,
  });
}

/// @nodoc
class _$PostListDataResponseCopyWithImpl<
  $Res,
  $Val extends PostListDataResponse
>
    implements $PostListDataResponseCopyWith<$Res> {
  _$PostListDataResponseCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of PostListDataResponse
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? count = null,
    Object? next = freezed,
    Object? previous = freezed,
    Object? results = freezed,
  }) {
    return _then(
      _value.copyWith(
            count: null == count
                ? _value.count
                : count // ignore: cast_nullable_to_non_nullable
                      as int,
            next: freezed == next
                ? _value.next
                : next // ignore: cast_nullable_to_non_nullable
                      as String?,
            previous: freezed == previous
                ? _value.previous
                : previous // ignore: cast_nullable_to_non_nullable
                      as String?,
            results: freezed == results
                ? _value.results
                : results // ignore: cast_nullable_to_non_nullable
                      as List<PostDataResponse>?,
          )
          as $Val,
    );
  }
}

/// @nodoc
abstract class _$$PostListResponseImplCopyWith<$Res>
    implements $PostListDataResponseCopyWith<$Res> {
  factory _$$PostListResponseImplCopyWith(
    _$PostListResponseImpl value,
    $Res Function(_$PostListResponseImpl) then,
  ) = __$$PostListResponseImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({
    @JsonKey(name: 'count') int count,
    @JsonKey(name: 'next') String? next,
    @JsonKey(name: 'previous') String? previous,
    @JsonKey(name: 'results') List<PostDataResponse>? results,
  });
}

/// @nodoc
class __$$PostListResponseImplCopyWithImpl<$Res>
    extends _$PostListDataResponseCopyWithImpl<$Res, _$PostListResponseImpl>
    implements _$$PostListResponseImplCopyWith<$Res> {
  __$$PostListResponseImplCopyWithImpl(
    _$PostListResponseImpl _value,
    $Res Function(_$PostListResponseImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of PostListDataResponse
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? count = null,
    Object? next = freezed,
    Object? previous = freezed,
    Object? results = freezed,
  }) {
    return _then(
      _$PostListResponseImpl(
        count: null == count
            ? _value.count
            : count // ignore: cast_nullable_to_non_nullable
                  as int,
        next: freezed == next
            ? _value.next
            : next // ignore: cast_nullable_to_non_nullable
                  as String?,
        previous: freezed == previous
            ? _value.previous
            : previous // ignore: cast_nullable_to_non_nullable
                  as String?,
        results: freezed == results
            ? _value._results
            : results // ignore: cast_nullable_to_non_nullable
                  as List<PostDataResponse>?,
      ),
    );
  }
}

/// @nodoc
@JsonSerializable()
class _$PostListResponseImpl implements _PostListResponse {
  const _$PostListResponseImpl({
    @JsonKey(name: 'count') required this.count,
    @JsonKey(name: 'next') required this.next,
    @JsonKey(name: 'previous') required this.previous,
    @JsonKey(name: 'results') final List<PostDataResponse>? results,
  }) : _results = results;

  factory _$PostListResponseImpl.fromJson(Map<String, dynamic> json) =>
      _$$PostListResponseImplFromJson(json);

  @override
  @JsonKey(name: 'count')
  final int count;
  @override
  @JsonKey(name: 'next')
  final String? next;
  @override
  @JsonKey(name: 'previous')
  final String? previous;
  final List<PostDataResponse>? _results;
  @override
  @JsonKey(name: 'results')
  List<PostDataResponse>? get results {
    final value = _results;
    if (value == null) return null;
    if (_results is EqualUnmodifiableListView) return _results;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  String toString() {
    return 'PostListDataResponse(count: $count, next: $next, previous: $previous, results: $results)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$PostListResponseImpl &&
            (identical(other.count, count) || other.count == count) &&
            (identical(other.next, next) || other.next == next) &&
            (identical(other.previous, previous) ||
                other.previous == previous) &&
            const DeepCollectionEquality().equals(other._results, _results));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
    runtimeType,
    count,
    next,
    previous,
    const DeepCollectionEquality().hash(_results),
  );

  /// Create a copy of PostListDataResponse
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$PostListResponseImplCopyWith<_$PostListResponseImpl> get copyWith =>
      __$$PostListResponseImplCopyWithImpl<_$PostListResponseImpl>(
        this,
        _$identity,
      );

  @override
  Map<String, dynamic> toJson() {
    return _$$PostListResponseImplToJson(this);
  }
}

abstract class _PostListResponse implements PostListDataResponse {
  const factory _PostListResponse({
    @JsonKey(name: 'count') required final int count,
    @JsonKey(name: 'next') required final String? next,
    @JsonKey(name: 'previous') required final String? previous,
    @JsonKey(name: 'results') final List<PostDataResponse>? results,
  }) = _$PostListResponseImpl;

  factory _PostListResponse.fromJson(Map<String, dynamic> json) =
      _$PostListResponseImpl.fromJson;

  @override
  @JsonKey(name: 'count')
  int get count;
  @override
  @JsonKey(name: 'next')
  String? get next;
  @override
  @JsonKey(name: 'previous')
  String? get previous;
  @override
  @JsonKey(name: 'results')
  List<PostDataResponse>? get results;

  /// Create a copy of PostListDataResponse
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$PostListResponseImplCopyWith<_$PostListResponseImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
