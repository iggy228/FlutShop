import 'package:firebase_auth/firebase_auth.dart';
import 'package:flut_shop/src/domain/auth/auth_response.dart';
import 'package:flut_shop/src/domain/auth/i_auth_facade.dart';
import 'package:google_sign_in/google_sign_in.dart';
import 'package:injectable/injectable.dart';

@LazySingleton(as: IAuthFacade)
class AuthFacade implements IAuthFacade {
  final FirebaseAuth _firebaseAuth;
  final GoogleSignIn _googleSignIn;

  const AuthFacade(this._firebaseAuth, this._googleSignIn);

  @override
  Future<AuthResponse> login(String email, String password) async {
    try {
      final credential = await _firebaseAuth.signInWithEmailAndPassword(
        email: email,
        password: password,
      );

      return AuthResponse.success(credential.user!.uid);
    } on FirebaseAuthException catch (e) {
      if (e.code == 'user-not-found') {
        return const AuthResponse.error('User was not found.');
      } else if (e.code == 'wrong-password' || e.code == 'invalid-email') {
        return const AuthResponse.error('Invalid email or password.');
      } else {
        return const AuthResponse.error('Server error');
      }
    }
  }

  @override
  Future<AuthResponse> loginViaGoogle() async {
    final googleSignIn = await _googleSignIn.signIn();

    // check if signIn was aborted
    if (googleSignIn == null) {
      return const AuthResponse.none();
    }

    final googleAuth = await googleSignIn.authentication;

    final gCredential = GoogleAuthProvider.credential(
      idToken: googleAuth.idToken,
      accessToken: googleAuth.accessToken,
    );

    try {
      final credential = await _firebaseAuth.signInWithCredential(gCredential);

      return AuthResponse.success(credential.user!.uid);
    } on FirebaseAuthException catch (e) {
      if (e.code == 'account-exists-with-different-credential') {
        return const AuthResponse.error(
            'Account already exists. Try login with email and password.');
      } else {
        return const AuthResponse.error('Server error');
      }
    }
  }

  @override
  Future<AuthResponse> register(String email, String password) async {
    try {
      final credential = await _firebaseAuth.createUserWithEmailAndPassword(
        email: email,
        password: password,
      );
      return AuthResponse.success(credential.user!.uid);
    } on FirebaseAuthException catch (e) {
      if (e.code == 'email-already-in-use') {
        return const AuthResponse.error('Email is already used.');
      } else if (e.code == 'invalid-email') {
        return const AuthResponse.error('Invalid email.');
      } else if (e.code == 'weak-password') {
        return const AuthResponse.error('Weak password.');
      } else {
        return const AuthResponse.error('Server error');
      }
    }
  }
}
