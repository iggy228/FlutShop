// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'create_product_form_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$CreateProductFormStateTearOff {
  const _$CreateProductFormStateTearOff();

  _CreateProductFormState call(
      {required String title,
      required String description,
      required double price,
      File? imageFile}) {
    return _CreateProductFormState(
      title: title,
      description: description,
      price: price,
      imageFile: imageFile,
    );
  }
}

/// @nodoc
const $CreateProductFormState = _$CreateProductFormStateTearOff();

/// @nodoc
mixin _$CreateProductFormState {
  String get title => throw _privateConstructorUsedError;
  String get description => throw _privateConstructorUsedError;
  double get price => throw _privateConstructorUsedError;
  File? get imageFile => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $CreateProductFormStateCopyWith<CreateProductFormState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CreateProductFormStateCopyWith<$Res> {
  factory $CreateProductFormStateCopyWith(CreateProductFormState value,
          $Res Function(CreateProductFormState) then) =
      _$CreateProductFormStateCopyWithImpl<$Res>;
  $Res call({String title, String description, double price, File? imageFile});
}

/// @nodoc
class _$CreateProductFormStateCopyWithImpl<$Res>
    implements $CreateProductFormStateCopyWith<$Res> {
  _$CreateProductFormStateCopyWithImpl(this._value, this._then);

  final CreateProductFormState _value;
  // ignore: unused_field
  final $Res Function(CreateProductFormState) _then;

  @override
  $Res call({
    Object? title = freezed,
    Object? description = freezed,
    Object? price = freezed,
    Object? imageFile = freezed,
  }) {
    return _then(_value.copyWith(
      title: title == freezed
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      description: description == freezed
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String,
      price: price == freezed
          ? _value.price
          : price // ignore: cast_nullable_to_non_nullable
              as double,
      imageFile: imageFile == freezed
          ? _value.imageFile
          : imageFile // ignore: cast_nullable_to_non_nullable
              as File?,
    ));
  }
}

/// @nodoc
abstract class _$CreateProductFormStateCopyWith<$Res>
    implements $CreateProductFormStateCopyWith<$Res> {
  factory _$CreateProductFormStateCopyWith(_CreateProductFormState value,
          $Res Function(_CreateProductFormState) then) =
      __$CreateProductFormStateCopyWithImpl<$Res>;
  @override
  $Res call({String title, String description, double price, File? imageFile});
}

/// @nodoc
class __$CreateProductFormStateCopyWithImpl<$Res>
    extends _$CreateProductFormStateCopyWithImpl<$Res>
    implements _$CreateProductFormStateCopyWith<$Res> {
  __$CreateProductFormStateCopyWithImpl(_CreateProductFormState _value,
      $Res Function(_CreateProductFormState) _then)
      : super(_value, (v) => _then(v as _CreateProductFormState));

  @override
  _CreateProductFormState get _value => super._value as _CreateProductFormState;

  @override
  $Res call({
    Object? title = freezed,
    Object? description = freezed,
    Object? price = freezed,
    Object? imageFile = freezed,
  }) {
    return _then(_CreateProductFormState(
      title: title == freezed
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      description: description == freezed
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String,
      price: price == freezed
          ? _value.price
          : price // ignore: cast_nullable_to_non_nullable
              as double,
      imageFile: imageFile == freezed
          ? _value.imageFile
          : imageFile // ignore: cast_nullable_to_non_nullable
              as File?,
    ));
  }
}

/// @nodoc

class _$_CreateProductFormState implements _CreateProductFormState {
  const _$_CreateProductFormState(
      {required this.title,
      required this.description,
      required this.price,
      this.imageFile});

  @override
  final String title;
  @override
  final String description;
  @override
  final double price;
  @override
  final File? imageFile;

  @override
  String toString() {
    return 'CreateProductFormState(title: $title, description: $description, price: $price, imageFile: $imageFile)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _CreateProductFormState &&
            const DeepCollectionEquality().equals(other.title, title) &&
            const DeepCollectionEquality()
                .equals(other.description, description) &&
            const DeepCollectionEquality().equals(other.price, price) &&
            const DeepCollectionEquality().equals(other.imageFile, imageFile));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(title),
      const DeepCollectionEquality().hash(description),
      const DeepCollectionEquality().hash(price),
      const DeepCollectionEquality().hash(imageFile));

  @JsonKey(ignore: true)
  @override
  _$CreateProductFormStateCopyWith<_CreateProductFormState> get copyWith =>
      __$CreateProductFormStateCopyWithImpl<_CreateProductFormState>(
          this, _$identity);
}

abstract class _CreateProductFormState implements CreateProductFormState {
  const factory _CreateProductFormState(
      {required String title,
      required String description,
      required double price,
      File? imageFile}) = _$_CreateProductFormState;

  @override
  String get title;
  @override
  String get description;
  @override
  double get price;
  @override
  File? get imageFile;
  @override
  @JsonKey(ignore: true)
  _$CreateProductFormStateCopyWith<_CreateProductFormState> get copyWith =>
      throw _privateConstructorUsedError;
}
