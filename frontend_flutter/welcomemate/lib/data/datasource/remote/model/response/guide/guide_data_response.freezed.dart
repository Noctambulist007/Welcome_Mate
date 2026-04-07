// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'guide_data_response.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
  'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models',
);

GuideDataResponse _$GuideDataResponseFromJson(Map<String, dynamic> json) {
  return _GuideDataResponse.fromJson(json);
}

/// @nodoc
mixin _$GuideDataResponse {
  @JsonKey(name: 'count')
  int get count => throw _privateConstructorUsedError;
  @JsonKey(name: 'next')
  String? get next => throw _privateConstructorUsedError;
  @JsonKey(name: 'previous')
  String? get previous => throw _privateConstructorUsedError;
  @JsonKey(name: 'results')
  List<GuideItemDataResponse>? get results =>
      throw _privateConstructorUsedError;

  /// Serializes this GuideDataResponse to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of GuideDataResponse
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $GuideDataResponseCopyWith<GuideDataResponse> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $GuideDataResponseCopyWith<$Res> {
  factory $GuideDataResponseCopyWith(
    GuideDataResponse value,
    $Res Function(GuideDataResponse) then,
  ) = _$GuideDataResponseCopyWithImpl<$Res, GuideDataResponse>;
  @useResult
  $Res call({
    @JsonKey(name: 'count') int count,
    @JsonKey(name: 'next') String? next,
    @JsonKey(name: 'previous') String? previous,
    @JsonKey(name: 'results') List<GuideItemDataResponse>? results,
  });
}

/// @nodoc
class _$GuideDataResponseCopyWithImpl<$Res, $Val extends GuideDataResponse>
    implements $GuideDataResponseCopyWith<$Res> {
  _$GuideDataResponseCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of GuideDataResponse
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
                      as List<GuideItemDataResponse>?,
          )
          as $Val,
    );
  }
}

/// @nodoc
abstract class _$$GuideDataResponseImplCopyWith<$Res>
    implements $GuideDataResponseCopyWith<$Res> {
  factory _$$GuideDataResponseImplCopyWith(
    _$GuideDataResponseImpl value,
    $Res Function(_$GuideDataResponseImpl) then,
  ) = __$$GuideDataResponseImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({
    @JsonKey(name: 'count') int count,
    @JsonKey(name: 'next') String? next,
    @JsonKey(name: 'previous') String? previous,
    @JsonKey(name: 'results') List<GuideItemDataResponse>? results,
  });
}

/// @nodoc
class __$$GuideDataResponseImplCopyWithImpl<$Res>
    extends _$GuideDataResponseCopyWithImpl<$Res, _$GuideDataResponseImpl>
    implements _$$GuideDataResponseImplCopyWith<$Res> {
  __$$GuideDataResponseImplCopyWithImpl(
    _$GuideDataResponseImpl _value,
    $Res Function(_$GuideDataResponseImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of GuideDataResponse
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
      _$GuideDataResponseImpl(
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
                  as List<GuideItemDataResponse>?,
      ),
    );
  }
}

/// @nodoc
@JsonSerializable()
class _$GuideDataResponseImpl implements _GuideDataResponse {
  const _$GuideDataResponseImpl({
    @JsonKey(name: 'count') required this.count,
    @JsonKey(name: 'next') required this.next,
    @JsonKey(name: 'previous') required this.previous,
    @JsonKey(name: 'results') final List<GuideItemDataResponse>? results,
  }) : _results = results;

  factory _$GuideDataResponseImpl.fromJson(Map<String, dynamic> json) =>
      _$$GuideDataResponseImplFromJson(json);

  @override
  @JsonKey(name: 'count')
  final int count;
  @override
  @JsonKey(name: 'next')
  final String? next;
  @override
  @JsonKey(name: 'previous')
  final String? previous;
  final List<GuideItemDataResponse>? _results;
  @override
  @JsonKey(name: 'results')
  List<GuideItemDataResponse>? get results {
    final value = _results;
    if (value == null) return null;
    if (_results is EqualUnmodifiableListView) return _results;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  String toString() {
    return 'GuideDataResponse(count: $count, next: $next, previous: $previous, results: $results)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$GuideDataResponseImpl &&
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

  /// Create a copy of GuideDataResponse
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$GuideDataResponseImplCopyWith<_$GuideDataResponseImpl> get copyWith =>
      __$$GuideDataResponseImplCopyWithImpl<_$GuideDataResponseImpl>(
        this,
        _$identity,
      );

  @override
  Map<String, dynamic> toJson() {
    return _$$GuideDataResponseImplToJson(this);
  }
}

abstract class _GuideDataResponse implements GuideDataResponse {
  const factory _GuideDataResponse({
    @JsonKey(name: 'count') required final int count,
    @JsonKey(name: 'next') required final String? next,
    @JsonKey(name: 'previous') required final String? previous,
    @JsonKey(name: 'results') final List<GuideItemDataResponse>? results,
  }) = _$GuideDataResponseImpl;

  factory _GuideDataResponse.fromJson(Map<String, dynamic> json) =
      _$GuideDataResponseImpl.fromJson;

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
  List<GuideItemDataResponse>? get results;

  /// Create a copy of GuideDataResponse
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$GuideDataResponseImplCopyWith<_$GuideDataResponseImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
