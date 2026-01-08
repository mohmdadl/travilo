import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:travilo/features/auth/data/repo/auth_repo.dart';
import 'package:travilo/features/auth/data/repo/google_auth_repo_services.dart';
import 'package:travilo/features/auth/presentation/bloc/auth_google_state.dart';

class GoogleAuthCubit extends Cubit<GoogleAuthState> {
  final GoogleAuthService googleAuthService;
  final AuthRepo authRepo;

  GoogleAuthCubit({
    required this.googleAuthService,
    required this.authRepo,
  }) : super(GoogleAuthInitial());

  Future<void> signIn() async {
    emit(GoogleAuthLoading());

    final account = await googleAuthService.signIn();
    if (account == null) {
      emit(GoogleAuthError("Sign in cancelled or failed"));
      return;
    }

    try {
      final idToken = await googleAuthService.getIdToken(account);
      if (idToken == null) {
        emit(GoogleAuthError("Failed to get idToken"));
        return;
      }

      await authRepo.loginWithGoogle(idToken: idToken);
      emit(GoogleAuthSuccess("Login Successfully"));
    } catch (e) {
      emit(GoogleAuthError(e.toString()));
    }
  }
}
