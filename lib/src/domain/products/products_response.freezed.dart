// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'products_response.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$ProductsResponseTearOff {
  const _$ProductsResponseTearOff();

  ProductsResponseData data(List<Product> product) {
    return ProductsResponseData(
      product,
    );
  }

  ProductsResponseError error(String message) {
    return ProductsResponseError(
      message,
    );
  }
}

/// @nodoc
const $ProductsResponse = _$ProductsResponseTearOff();

/// @nodoc
mixin _$ProductsResponse {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(List<Product> product) data,
    required TResult Function(String message) error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(List<Product> product)? data,
    TResult Function(String message)? error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(List<Product> product)? data,
    TResult Function(String message)? error,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(ProductsResponseData value) data,
    required TResult Function(ProductsResponseError value) error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(ProductsResponseData value)? data,
    TResult Function(ProductsResponseError value)? error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(ProductsResponseData value)? data,
    TResult Function(ProductsResponseError value)? error,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ProductsResponseCopyWith<$Res> {
  factory $ProductsResponseCopyWith(
          ProductsResponse value, $Res Function(ProductsResponse) then) =
      _$ProductsResponseCopyWithImpl<$Res>;
}

/// @nodoc
class _$ProductsResponseCopyWithImpl<$Res>
    implements $ProductsResponseCopyWith<$Res> {
  _$ProductsResponseCopyWithImpl(this._value, this._then);

  final ProductsResponse _value;
  // ignore: unused_field
  final $Res Function(ProductsResponse) _then;
}

/// @nodoc
abstract class $ProductsResponseDataCopyWith<$Res> {
  factory $ProductsResponseDataCopyWith(ProductsResponseData value,
          $Res Function(ProductsResponseData) then) =
      _$ProductsResponseDataCopyWithImpl<$Res>;
  $Res call({List<Product> product});
}

/// @nodoc
class _$ProductsResponseDataCopyWithImpl<$Res>
    extends _$ProductsResponseCopyWithImpl<$Res>
    implements $ProductsResponseDataCopyWith<$Res> {
  _$ProductsResponseDataCopyWithImpl(
      ProductsResponseData _value, $Res Function(ProductsResponseData) _then)
      : super(_value, (v) => _then(v as ProductsResponseData));

  @override
  ProductsResponseData get _value => super._value as ProductsResponseData;

  @override
  $Res call({
    Object? product = freezed,
  }) {
    return _then(ProductsResponseData(
      product == freezed
          ? _value.product
          : product // ignore: cast_nullable_to_non_nullable
              as List<Product>,
    ));
  }
}

/// @nodoc

class _$ProductsResponseData implements ProductsResponseData {
  const _$ProductsResponseData(this.product);

  @override
  final List<Product> product;

  @override
  String toString() {
    return 'ProductsResponse.data(product: $product)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is ProductsResponseData &&
            const DeepCollectionEquality().equals(other.product, product));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(product));

  @JsonKey(ignore: true)
  @override
  $ProductsResponseDataCopyWith<ProductsResponseData> get copyWith =>
      _$ProductsResponseDataCopyWithImpl<ProductsResponseData>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(List<Product> product) data,
    required TResult Function(String message) error,
  }) {
    return data(product);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(List<Product> product)? data,
    TResult Function(String message)? error,
  }) {
    return data?.call(product);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(List<Product> product)? data,
    TResult Function(String message)? error,
    required TResult orElse(),
  }) {
    if (data != null) {
      return data(product);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(ProductsResponseData value) data,
    required TResult Function(ProductsResponseError value) error,
  }) {
    return data(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(ProductsResponseData value)? data,
    TResult Function(ProductsResponseError value)? error,
  }) {
    return data?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(ProductsResponseData value)? data,
    TResult Function(ProductsResponseError value)? error,
    required TResult orElse(),
  }) {
    if (data != null) {
      return data(this);
    }
    return orElse();
  }
}

abstract class ProductsResponseData implements ProductsResponse {
  const factory ProductsResponseData(List<Product> product) =
      _$ProductsResponseData;

  List<Product> get product;
  @JsonKey(ignore: true)
  $ProductsResponseDataCopyWith<ProductsResponseData> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ProductsResponseErrorCopyWith<$Res> {
  factory $ProductsResponseErrorCopyWith(ProductsResponseError value,
          $Res Function(ProductsResponseError) then) =
      _$ProductsResponseErrorCopyWithImpl<$Res>;
  $Res call({String message});
}

/// @nodoc
class _$ProductsResponseErrorCopyWithImpl<$Res>
    extends _$ProductsResponseCopyWithImpl<$Res>
    implements $ProductsResponseErrorCopyWith<$Res> {
  _$ProductsResponseErrorCopyWithImpl(
      ProductsResponseError _value, $Res Function(ProductsResponseError) _then)
      : super(_value, (v) => _then(v as ProductsResponseError));

  @override
  ProductsResponseError get _value => super._value as ProductsResponseError;

  @override
  $Res call({
    Object? message = freezed,
  }) {
    return _then(ProductsResponseError(
      message == freezed
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$ProductsResponseError implements ProductsResponseError {
  const _$ProductsResponseError(this.message);

  @override
  final String message;

  @override
  String toString() {
    return 'ProductsResponse.error(message: $message)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is ProductsResponseError &&
            const DeepCollectionEquality().equals(other.message, message));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(message));

  @JsonKey(ignore: true)
  @override
  $ProductsResponseErrorCopyWith<ProductsResponseError> get copyWith =>
      _$ProductsResponseErrorCopyWithImpl<ProductsResponseError>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(List<Product> product) data,
    required TResult Function(String message) error,
  }) {
    return error(message);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(List<Product> product)? data,
    TResult Function(String message)? error,
  }) {
    return error?.call(message);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(List<Product> product)? data,
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
    required TResult Function(ProductsResponseData value) data,
    required TResult Function(ProductsResponseError value) error,
  }) {
    return error(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(ProductsResponseData value)? data,
    TResult Function(ProductsResponseError value)? error,
  }) {
    return error?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(ProductsResponseData value)? data,
    TResult Function(ProductsResponseError value)? error,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error(this);
    }
    return orElse();
  }
}

abstract class ProductsResponseError implements ProductsResponse {
  const factory ProductsResponseError(String message) = _$ProductsResponseError;

  String get message;
  @JsonKey(ignore: true)
  $ProductsResponseErrorCopyWith<ProductsResponseError> get copyWith =>
      throw _privateConstructorUsedError;
}
