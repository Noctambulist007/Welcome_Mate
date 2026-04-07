// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'checklist_data_response.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
  'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models',
);

ChecklistDataResponse _$ChecklistDataResponseFromJson(
  Map<String, dynamic> json,
) {
  return _ChecklistDataResponse.fromJson(json);
}

/// @nodoc
mixin _$ChecklistDataResponse {
  @JsonKey(name: 'count')
  int get count => throw _privateConstructorUsedError;
  @JsonKey(name: 'next')
  String? get next => throw _privateConstructorUsedError;
  @JsonKey(name: 'previous')
  String? get previous => throw _privateConstructorUsedError;
  @JsonKey(name: 'results')
  List<ChecklistItemDataResponse>? get results =>
      throw _privateConstructorUsedError;

  /// Serializes this ChecklistDataResponse to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of ChecklistDataResponse
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $ChecklistDataResponseCopyWith<ChecklistDataResponse> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ChecklistDataResponseCopyWith<$Res> {
  factory $ChecklistDataResponseCopyWith(
    ChecklistDataResponse value,
    $Res Function(ChecklistDataResponse) then,
  ) = _$ChecklistDataResponseCopyWithImpl<$Res, ChecklistDataResponse>;
  @useResult
  $Res call({
    @JsonKey(name: 'count') int count,
    @JsonKey(name: 'next') String? next,
    @JsonKey(name: 'previous') String? previous,
    @JsonKey(name: 'results') List<ChecklistItemDataResponse>? results,
  });
}

/// @nodoc
class _$ChecklistDataResponseCopyWithImpl<
  $Res,
  $Val extends ChecklistDataResponse
>
    implements $ChecklistDataResponseCopyWith<$Res> {
  _$ChecklistDataResponseCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of ChecklistDataResponse
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
                      as List<ChecklistItemDataResponse>?,
          )
          as $Val,
    );
  }
}

/// @nodoc
abstract class _$$ChecklistDataResponseImplCopyWith<$Res>
    implements $ChecklistDataResponseCopyWith<$Res> {
  factory _$$ChecklistDataResponseImplCopyWith(
    _$ChecklistDataResponseImpl value,
    $Res Function(_$ChecklistDataResponseImpl) then,
  ) = __$$ChecklistDataResponseImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({
    @JsonKey(name: 'count') int count,
    @JsonKey(name: 'next') String? next,
    @JsonKey(name: 'previous') String? previous,
    @JsonKey(name: 'results') List<ChecklistItemDataResponse>? results,
  });
}

/// @nodoc
class __$$ChecklistDataResponseImplCopyWithImpl<$Res>
    extends
        _$ChecklistDataResponseCopyWithImpl<$Res, _$ChecklistDataResponseImpl>
    implements _$$ChecklistDataResponseImplCopyWith<$Res> {
  __$$ChecklistDataResponseImplCopyWithImpl(
    _$ChecklistDataResponseImpl _value,
    $Res Function(_$ChecklistDataResponseImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of ChecklistDataResponse
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
      _$ChecklistDataResponseImpl(
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
                  as List<ChecklistItemDataResponse>?,
      ),
    );
  }
}

/// @nodoc
@JsonSerializable()
class _$ChecklistDataResponseImpl implements _ChecklistDataResponse {
  const _$ChecklistDataResponseImpl({
    @JsonKey(name: 'count') required this.count,
    @JsonKey(name: 'next') required this.next,
    @JsonKey(name: 'previous') required this.previous,
    @JsonKey(name: 'results') final List<ChecklistItemDataResponse>? results,
  }) : _results = results;

  factory _$ChecklistDataResponseImpl.fromJson(Map<String, dynamic> json) =>
      _$$ChecklistDataResponseImplFromJson(json);

  @override
  @JsonKey(name: 'count')
  final int count;
  @override
  @JsonKey(name: 'next')
  final String? next;
  @override
  @JsonKey(name: 'previous')
  final String? previous;
  final List<ChecklistItemDataResponse>? _results;
  @override
  @JsonKey(name: 'results')
  List<ChecklistItemDataResponse>? get results {
    final value = _results;
    if (value == null) return null;
    if (_results is EqualUnmodifiableListView) return _results;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  String toString() {
    return 'ChecklistDataResponse(count: $count, next: $next, previous: $previous, results: $results)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ChecklistDataResponseImpl &&
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

  /// Create a copy of ChecklistDataResponse
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$ChecklistDataResponseImplCopyWith<_$ChecklistDataResponseImpl>
  get copyWith =>
      __$$ChecklistDataResponseImplCopyWithImpl<_$ChecklistDataResponseImpl>(
        this,
        _$identity,
      );

  @override
  Map<String, dynamic> toJson() {
    return _$$ChecklistDataResponseImplToJson(this);
  }
}

abstract class _ChecklistDataResponse implements ChecklistDataResponse {
  const factory _ChecklistDataResponse({
    @JsonKey(name: 'count') required final int count,
    @JsonKey(name: 'next') required final String? next,
    @JsonKey(name: 'previous') required final String? previous,
    @JsonKey(name: 'results') final List<ChecklistItemDataResponse>? results,
  }) = _$ChecklistDataResponseImpl;

  factory _ChecklistDataResponse.fromJson(Map<String, dynamic> json) =
      _$ChecklistDataResponseImpl.fromJson;

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
  List<ChecklistItemDataResponse>? get results;

  /// Create a copy of ChecklistDataResponse
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$ChecklistDataResponseImplCopyWith<_$ChecklistDataResponseImpl>
  get copyWith => throw _privateConstructorUsedError;
}
