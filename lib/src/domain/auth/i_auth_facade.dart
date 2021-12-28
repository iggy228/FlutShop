abstract class IAuthFacade {
  Future<void> login(String email, String password) async {}

  Future<void> register(String email, String password) async {}

  Future<void> loginViaGoogle() async {}
}
