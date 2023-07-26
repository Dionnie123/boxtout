import 'package:boxtout/services/authentication_service.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_core/firebase_core.dart';

class FirebaseAuthenticationService implements AuthenticationService {
  @override
  Future<void> initialise() async {
    await Firebase.initializeApp();
  }

  final FirebaseAuth _firebaseAuth = FirebaseAuth.instance;

  @override
  Future signInWithEmail({
    required String email,
    required String password,
  }) async {
    try {
      UserCredential userCredential = await _firebaseAuth
          .signInWithEmailAndPassword(email: email, password: password);
      return userCredential.user != null;
    } catch (e) {
      return e.toString();
    }
  }

  @override
  Future signUpWithEmail({
    required String email,
    required String password,
  }) async {
    try {
      var authResult = await _firebaseAuth.createUserWithEmailAndPassword(
          email: email, password: password);
      return authResult.user != null;
    } catch (e) {
      return e.toString();
    }
  }
}
