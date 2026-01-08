import 'package:google_sign_in/google_sign_in.dart';
import 'package:travilo/core/utils/app_constants.dart';

class GoogleAuthService {
  final GoogleSignIn _googleSignIn = GoogleSignIn(
    
    clientId: AppConstants.clientId,
    scopes: ['email', 'profile'],
  );

  Future<GoogleSignInAccount?> signIn() async {
    try {
      final account = await _googleSignIn.signIn();
      return account;
    } catch (e) {
      print("Google SignIn Error: $e");
      return null;
    }
  }
   Future<String?> getIdToken(GoogleSignInAccount account) async {
    final googleAuth = await account.authentication;
    return googleAuth.idToken; // ده اللي هنبعتو للـ Backend
  }

  Future<void> signOut() async {
    await _googleSignIn.signOut();
  }
}
 