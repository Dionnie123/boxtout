import 'package:stacked/stacked.dart';

abstract class AuthenticationService with Initialisable {
  Future signInWithEmail({
    required String email,
    required String password,
  });

  Future signUpWithEmail({
    required String email,
    required String password,
  });
}
