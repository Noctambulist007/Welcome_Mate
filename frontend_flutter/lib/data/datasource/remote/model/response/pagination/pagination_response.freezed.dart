// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'pagination_response.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
  'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models',
);

PaginationResponse _$PaginationResponseFromJson(Map<String, dynamic> json) {
  return _PaginationResponse.fromJson(json);
}

/// @nodoc
mixin _$PaginationResponse {
  @JsonKey(name: 'page')
  int get page => throw _privateConstructorUsedError;
  @JsonKey(name: 'limit')
  int get limit => throw _privateConstructorUsedError;
  @JsonKey(name: 'total')
  int get total => throw _privateConstructorUsedError;
  @JsonKey(name: 'pages')
  int get pages => throw _privateConstructorUsedError;

  /// Serializes this PaginationResponse to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of PaginationResponse
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $PaginationResponseCopyWith<PaginationResponse> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PaginationResponseCopyWith<$Res> {
  factory $PaginationResponseCopyWith(
    PaginationResponse value,
    $Res Function(PaginationResponse) then,
  ) = _$PaginationResponseCopyWithImpl<$Res, PaginationResponse>;
  @useResult
  $Res call({
    @JsonKey(name: 'page') int page,
    @JsonKey(name: 'limit') int limit,
    @JsonKey(name: 'total') int total,
    @JsonKey(name: 'pages') int pages,
  });
}

/// @nodoc
class _$PaginationResponseCopyWithImpl<$Res, $Val extends PaginationResponse>
    implements $PaginationResponseCopyWith<$Res> {
  _$PaginationResponseCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of PaginationResponse
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? page = null,
    Object? limit = null,
    Object? total = null,
    Object? pages = null,
  }) {
    return _then(
      _value.copyWith(
            page: null == page
                ? _value.page
                : page // ignore: cast_nullable_to_non_nullable
                      as int,
            limit: null == limit
                ? _value.limit
                : limit // ignore: cast_nullable_to_non_nullable
                      as int,
            total: null == total
                ? _value.total
                : total // ignore: cast_nullable_to_non_nullable
                      as int,
            pages: null == pages
                ? _value.pages
                : pages // ignore: cast_nullable_to_non_nullable
                      as int,
          )
          as $Val,
    );
  }
}

/// @nodoc
abstract class _$$PaginationResponseImplCopyWith<$Res>
    implements $PaginationResponseCopyWith<$Res> {
  factory _$$PaginationResponseImplCopyWith(
    _$PaginationResponseImpl value,
    $Res Function(_$PaginationResponseImpl) then,
  ) = __$$PaginationResponseImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({
    @JsonKey(name: 'page') int page,
    @JsonKey(name: 'limit') int limit,
    @JsonKey(name: 'total') int total,
    @JsonKey(name: 'pages') int pages,
  });
}

/// @nodoc
class __$$PaginationResponseImplCopyWithImpl<$Res>
    extends _$PaginationResponseCopyWithImpl<$Res, _$PaginationResponseImpl>
    implements _$$PaginationResponseImplCopyWith<$Res> {
  __$$PaginationResponseImplCopyWithImpl(
    _$PaginationResponseImpl _value,
    $Res Function(_$PaginationResponseImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of PaginationResponse
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? page = null,
    Object? limit = null,
    Object? total = null,
    Object? pages = null,
  }) {
    return _then(
      _$PaginationResponseImpl(
        page: null == page
            ? _value.page
            : page // ignore: cast_nullable_to_non_nullable
                  as int,
        limit: null == limit
            ? _value.limit
            : limit // ignore: cast_nullable_to_non_nullable
                  as int,
        total: null == total
            ? _value.total
            : total // ignore: cast_nullable_to_non_nullable
                  as int,
        pages: null == pages
            ? _value.pages
            : pages // ignore: cast_nullable_to_non_nullable
                  as int,
      ),
    );
  }
}

/// @nodoc
@JsonSerializable()
class _$PaginationResponseImpl implements _PaginationResponse {
  const _$PaginationResponseImpl({
    @JsonKey(name: 'page') required this.page,
    @JsonKey(name: 'limit') required this.limit,
    @JsonKey(name: 'total') required this.total,
    @JsonKey(name: 'pages') required this.pages,
  });

  factory _$PaginationResponseImpl.fromJson(Map<String, dynamic> json) =>
      _$$PaginationResponseImplFromJson(json);

  @override
  @JsonKey(name: 'page')
  final int page;
  @override
  @JsonKey(name: 'limit')
  final int limit;
  @override
  @JsonKey(name: 'total')
  final int total;
  @override
  @JsonKey(name: 'pages')
  final int pages;

  @override
  String toString() {
    return 'PaginationResponse(page: $page, limit: $limit, total: $total, pages: $pages)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$PaginationResponseImpl &&
            (identical(other.page, page) || other.page == page) &&
            (identical(other.limit, limit) || other.limit == limit) &&
            (identical(other.total, total) || other.total == total) &&
            (identical(other.pages, pages) || other.pages == pages));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, page, limit, total, pages);

  /// Create a copy of PaginationResponse
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$PaginationResponseImplCopyWith<_$PaginationResponseImpl> get copyWith =>
      __$$PaginationResponseImplCopyWithImpl<_$PaginationResponseImpl>(
        this,
        _$identity,
      );

  @override
  Map<String, dynamic> toJson() {
    return _$$PaginationResponseImplToJson(this);
  }
}

abstract class _PaginationResponse implements PaginationResponse {
  const factory _PaginationResponse({
    @JsonKey(name: 'page') required final int page,
    @JsonKey(name: 'limit') required final int limit,
    @JsonKey(name: 'total') required final int total,
    @JsonKey(name: 'pages') required final int pages,
  }) = _$PaginationResponseImpl;

  factory _PaginationResponse.fromJson(Map<String, dynamic> json) =
      _$PaginationResponseImpl.fromJson;

  @override
  @JsonKey(name: 'page')
  int get page;
  @override
  @JsonKey(name: 'limit')
  int get limit;
  @override
  @JsonKey(name: 'total')
  int get total;
  @override
  @JsonKey(name: 'pages')
  int get pages;

  /// Create a copy of PaginationResponse
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$PaginationResponseImplCopyWith<_$PaginationResponseImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
