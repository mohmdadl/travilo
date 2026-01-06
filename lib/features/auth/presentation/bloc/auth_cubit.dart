import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:travilo/features/auth/data/repo/auth_repo.dart';

import 'package:travilo/features/auth/presentation/bloc/auth_state.dart';

class AuthCubit extends Cubit<AuthState> {
  AuthCubit(this.authRepo) : super(AuthIntial());
  final AuthRepo authRepo;

  Future<void> signUp({
    required String userName,
    required String email,
    required String phoneNum,
    required String password,
  }) async {
    emit(AuthLoading());
    var response = await authRepo.signUp(
      userName: userName,
      email: email,
      phoneNum: phoneNum,
      password: password,
    );
    return response.fold(
      (error) => emit(AuthError(error.message)),
      (sucsess) => emit(AuthSucsess(sucsess.message!)),
    );
  }

  Future<void> confirmEmail({
    required String email,
    required String token,
  }) async {
    emit(AuthLoading());
    var result = await authRepo.confirmEmail(email: email, token: token);
    result.fold(
      (failure) => emit(AuthError(failure.message)),
      (response) => emit(AuthSucsess(response.message ?? "Email Verified!")),
    );
  }

  Future<void> forgetPassword({required String email}) async {
    emit(AuthLoading());
    final result = await authRepo.forgetPassword(email: email);
    result.fold(
      (error) => emit(AuthError(error.message)),
      (data) => emit(AuthSucsess(data.message!)),
    );
  }
}
