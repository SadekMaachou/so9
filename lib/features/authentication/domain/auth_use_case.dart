import 'package:google_sign_in/google_sign_in.dart';
import 'package:marchic/features/authentication/data/auth_providers.dart';

class AuthUseCase {
  final GoogleSignIn _googleSignIn = GoogleSignIn();

  AuthUseCase(AuthStateNotifier authStateNotifier);

  Future<GoogleSignInAccount?> signIn() async {
    try {
      final user = await _googleSignIn.signIn();
      return user;
    } catch (error) {
      // Handle error appropriately
      print('Sign in failed: $error');
      return null;
    }
  }
}
