import 'package:flut_shop/src/domain/auth/auth_response.dart';

abstract class IAuthFacade {
  Future<AuthResponse> login(String email, String password);

  Future<AuthResponse> register(String email, String password);

  Future<AuthResponse> loginViaGoogle();
}
