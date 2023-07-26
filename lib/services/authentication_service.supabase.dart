import 'package:boxtout/services/authentication_service.dart';
import 'package:supabase_flutter/supabase_flutter.dart';

class SupabaseAuthenticationService implements AuthenticationService {
  @override
  Future<void> initialise() async {
    await Supabase.initialize(
      url: "https://zxjwzmhlvkxtqvynuhzc.supabase.co",
      anonKey:
          "eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJpc3MiOiJzdXBhYmFzZSIsInJlZiI6Inp4and6bWhsdmt4dHF2eW51aHpjIiwicm9sZSI6ImFub24iLCJpYXQiOjE2OTAzODA2MDEsImV4cCI6MjAwNTk1NjYwMX0.20rPk4V8N4NLJ1o2QpsDonVUXinynPlNWHi7kOL5vLg",
    );
  }

  @override
  Future signInWithEmail({required String email, required String password}) {
    // TODO: implement loginWithEmail
    throw UnimplementedError();
  }

  @override
  Future signUpWithEmail({required String email, required String password}) {
    // TODO: implement signUpWithEmail
    throw UnimplementedError();
  }
}
