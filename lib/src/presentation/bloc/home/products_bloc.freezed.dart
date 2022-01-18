// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'products_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$ProductsStateTearOff {
  const _$ProductsStateTearOff();

  _ProductsState call({required List<Product> products}) {
    return _ProductsState(
      products: products,
    );
  }
}

/// @nodoc
const $ProductsState = _$ProductsStateTearOff();

/// @nodoc
mixin _$ProductsState {
  List<Product> get products => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $ProductsStateCopyWith<ProductsState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ProductsStateCopyWith<$Res> {
  factory $ProductsStateCopyWith(
          ProductsState value, $Res Function(ProductsState) then) =
      _$ProductsStateCopyWithImpl<$Res>;
  $Res call({List<Product> products});
}

/// @nodoc
class _$ProductsStateCopyWithImpl<$Res>
    implements $ProductsStateCopyWith<$Res> {
  _$ProductsStateCopyWithImpl(this._value, this._then);

  final ProductsState _value;
  // ignore: unused_field
  final $Res Function(ProductsState) _then;

  @override
  $Res call({
    Object? products = freezed,
  }) {
    return _then(_value.copyWith(
      products: products == freezed
          ? _value.products
          : products // ignore: cast_nullable_to_non_nullable
              as List<Product>,
    ));
  }
}

/// @nodoc
abstract class _$ProductsStateCopyWith<$Res>
    implements $ProductsStateCopyWith<$Res> {
  factory _$ProductsStateCopyWith(
          _ProductsState value, $Res Function(_ProductsState) then) =
      __$ProductsStateCopyWithImpl<$Res>;
  @override
  $Res call({List<Product> products});
}

/// @nodoc
class __$ProductsStateCopyWithImpl<$Res>
    extends _$ProductsStateCopyWithImpl<$Res>
    implements _$ProductsStateCopyWith<$Res> {
  __$ProductsStateCopyWithImpl(
      _ProductsState _value, $Res Function(_ProductsState) _then)
      : super(_value, (v) => _then(v as _ProductsState));

  @override
  _ProductsState get _value => super._value as _ProductsState;

  @override
  $Res call({
    Object? products = freezed,
  }) {
    return _then(_ProductsState(
      products: products == freezed
          ? _value.products
          : products // ignore: cast_nullable_to_non_nullable
              as List<Product>,
    ));
  }
}

/// @nodoc

class _$_ProductsState implements _ProductsState {
  const _$_ProductsState({required this.products});

  @override
  final List<Product> products;

  @override
  String toString() {
    return 'ProductsState(products: $products)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _ProductsState &&
            const DeepCollectionEquality().equals(other.products, products));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(products));

  @JsonKey(ignore: true)
  @override
  _$ProductsStateCopyWith<_ProductsState> get copyWith =>
      __$ProductsStateCopyWithImpl<_ProductsState>(this, _$identity);
}

abstract class _ProductsState implements ProductsState {
  const factory _ProductsState({required List<Product> products}) =
      _$_ProductsState;

  @override
  List<Product> get products;
  @override
  @JsonKey(ignore: true)
  _$ProductsStateCopyWith<_ProductsState> get copyWith =>
      throw _privateConstructorUsedError;
}
