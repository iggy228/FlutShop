// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'login_form_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$LoginFormStateTearOff {
  const _$LoginFormStateTearOff();

  _LoginFormState call(
      {required String email,
      required String password,
      required AuthResponse authResponse,
      required bool isSubmitting,
      required bool showErrorMessage}) {
    return _LoginFormState(
      email: email,
      password: password,
      authResponse: authResponse,
      isSubmitting: isSubmitting,
      showErrorMessage: showErrorMessage,
    );
  }
}

/// @nodoc
const $LoginFormState = _$LoginFormStateTearOff();

/// @nodoc
mixin _$LoginFormState {
  String get email => throw _privateConstructorUsedError;
  String get password => throw _privateConstructorUsedError;
  AuthResponse get authResponse => throw _privateConstructorUsedError;
  bool get isSubmitting => throw _privateConstructorUsedError;
  bool get showErrorMessage => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $LoginFormStateCopyWith<LoginFormState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $LoginFormStateCopyWith<$Res> {
  factory $LoginFormStateCopyWith(
          LoginFormState value, $Res Function(LoginFormState) then) =
      _$LoginFormStateCopyWithImpl<$Res>;
  $Res call(
      {String email,
      String password,
      AuthResponse authResponse,
      bool isSubmitting,
      bool showErrorMessage});

  $AuthResponseCopyWith<$Res> get authResponse;
}

/// @nodoc
class _$LoginFormStateCopyWithImpl<$Res>
    implements $LoginFormStateCopyWith<$Res> {
  _$LoginFormStateCopyWithImpl(this._value, this._then);

  final LoginFormState _value;
  // ignore: unused_field
  final $Res Function(LoginFormState) _then;

  @override
  $Res call({
    Object? email = freezed,
    Object? password = freezed,
    Object? authResponse = freezed,
    Object? isSubmitting = freezed,
    Object? showErrorMessage = freezed,
  }) {
    return _then(_value.copyWith(
      email: email == freezed
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as String,
      password: password == freezed
          ? _value.password
          : password // ignore: cast_nullable_to_non_nullable
              as String,
      authResponse: authResponse == freezed
          ? _value.authResponse
          : authResponse // ignore: cast_nullable_to_non_nullable
              as AuthResponse,
      isSubmitting: isSubmitting == freezed
          ? _value.isSubmitting
          : isSubmitting // ignore: cast_nullable_to_non_nullable
              as bool,
      showErrorMessage: showErrorMessage == freezed
          ? _value.showErrorMessage
          : showErrorMessage // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }

  @override
  $AuthResponseCopyWith<$Res> get authResponse {
    return $AuthResponseCopyWith<$Res>(_value.authResponse, (value) {
      return _then(_value.copyWith(authResponse: value));
    });
  }
}

/// @nodoc
abstract class _$LoginFormStateCopyWith<$Res>
    implements $LoginFormStateCopyWith<$Res> {
  factory _$LoginFormStateCopyWith(
          _LoginFormState value, $Res Function(_LoginFormState) then) =
      __$LoginFormStateCopyWithImpl<$Res>;
  @override
  $Res call(
      {String email,
      String password,
      AuthResponse authResponse,
      bool isSubmitting,
      bool showErrorMessage});

  @override
  $AuthResponseCopyWith<$Res> get authResponse;
}

/// @nodoc
class __$LoginFormStateCopyWithImpl<$Res>
    extends _$LoginFormStateCopyWithImpl<$Res>
    implements _$LoginFormStateCopyWith<$Res> {
  __$LoginFormStateCopyWithImpl(
      _LoginFormState _value, $Res Function(_LoginFormState) _then)
      : super(_value, (v) => _then(v as _LoginFormState));

  @override
  _LoginFormState get _value => super._value as _LoginFormState;

  @override
  $Res call({
    Object? email = freezed,
    Object? password = freezed,
    Object? authResponse = freezed,
    Object? isSubmitting = freezed,
    Object? showErrorMessage = freezed,
  }) {
    return _then(_LoginFormState(
      email: email == freezed
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as String,
      password: password == freezed
          ? _value.password
          : password // ignore: cast_nullable_to_non_nullable
              as String,
      authResponse: authResponse == freezed
          ? _value.authResponse
          : authResponse // ignore: cast_nullable_to_non_nullable
              as AuthResponse,
      isSubmitting: isSubmitting == freezed
          ? _value.isSubmitting
          : isSubmitting // ignore: cast_nullable_to_non_nullable
              as bool,
      showErrorMessage: showErrorMessage == freezed
          ? _value.showErrorMessage
          : showErrorMessage // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc

class _$_LoginFormState implements _LoginFormState {
  const _$_LoginFormState(
      {required this.email,
      required this.password,
      required this.authResponse,
      required this.isSubmitting,
      required this.showErrorMessage});

  @override
  final String email;
  @override
  final String password;
  @override
  final AuthResponse authResponse;
  @override
  final bool isSubmitting;
  @override
  final bool showErrorMessage;

  @override
  String toString() {
    return 'LoginFormState(email: $email, password: $password, authResponse: $authResponse, isSubmitting: $isSubmitting, showErrorMessage: $showErrorMessage)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _LoginFormState &&
            const DeepCollectionEquality().equals(other.email, email) &&
            const DeepCollectionEquality().equals(other.password, password) &&
            const DeepCollectionEquality()
                .equals(other.authResponse, authResponse) &&
            const DeepCollectionEquality()
                .equals(other.isSubmitting, isSubmitting) &&
            const DeepCollectionEquality()
                .equals(other.showErrorMessage, showErrorMessage));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(email),
      const DeepCollectionEquality().hash(password),
      const DeepCollectionEquality().hash(authResponse),
      const DeepCollectionEquality().hash(isSubmitting),
      const DeepCollectionEquality().hash(showErrorMessage));

  @JsonKey(ignore: true)
  @override
  _$LoginFormStateCopyWith<_LoginFormState> get copyWith =>
      __$LoginFormStateCopyWithImpl<_LoginFormState>(this, _$identity);
}

abstract class _LoginFormState implements LoginFormState {
  const factory _LoginFormState(
      {required String email,
      required String password,
      required AuthResponse authResponse,
      required bool isSubmitting,
      required bool showErrorMessage}) = _$_LoginFormState;

  @override
  String get email;
  @override
  String get password;
  @override
  AuthResponse get authResponse;
  @override
  bool get isSubmitting;
  @override
  bool get showErrorMessage;
  @override
  @JsonKey(ignore: true)
  _$LoginFormStateCopyWith<_LoginFormState> get copyWith =>
      throw _privateConstructorUsedError;
}
