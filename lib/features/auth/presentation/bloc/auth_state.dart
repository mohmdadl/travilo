abstract class AuthState {}
class AuthIntial extends AuthState{}
class AuthLoading extends AuthState{}
class AuthSucsess extends AuthState{
  final String message;

  AuthSucsess(this.message);
}
class AuthError extends AuthState{
  final String message;

  AuthError(this.message);
}
 class  AuthConfirmed extends AuthState{}