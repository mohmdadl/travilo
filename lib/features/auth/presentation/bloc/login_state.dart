import 'package:travilo/features/auth/data/models/user_model.dart';

abstract class LoginState {}
class LoginIntial extends LoginState{}
class LoginLoading extends LoginState{}
class LoginSucsess extends LoginState{
 
   final UserModel userModel;

  LoginSucsess(this.userModel);
}
class LoginError extends LoginState{

   final String message;

  LoginError(this.message);
}