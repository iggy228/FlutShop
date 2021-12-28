import 'package:freezed_annotation/freezed_annotation.dart';

part 'auth_response.freezed.dart';

@freezed
class AuthResponse with _$AuthResponse {
  const factory AuthResponse.none() = None;
  const factory AuthResponse.success(String id) = AuthData;
  const factory AuthResponse.error(String message) = Error;
}
