import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:travilo/features/auth/data/repo/auth_repo.dart';
import 'package:travilo/features/auth/presentation/bloc/login_state.dart';

class LoginCubit extends Cubit<LoginState> {
  LoginCubit(this.authRepo) : super(LoginIntial());
  final AuthRepo authRepo;
  void login(String email, String password) async {
    emit(LoginLoading());

    final result = await authRepo.userLogin(email: email, password: password);

    result.fold(
      (failure) => emit(LoginError(failure.message)),
      (user) => emit(LoginSucsess(user)),
    );
  }
}
