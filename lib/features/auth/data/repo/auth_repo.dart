import 'package:dartz/dartz.dart';
import 'package:dio/dio.dart';
import 'package:travilo/core/error/fauilre.dart';
import 'package:travilo/core/network/dio_client.dart';
import 'package:travilo/core/utils/app_constants.dart';
import 'package:travilo/core/utils/pref_helper.dart';
import 'package:travilo/features/auth/data/models/base_response_model.dart';
import 'package:travilo/features/auth/data/models/user_model.dart';

class AuthRepo {
  Future<Either<ServerFauilre, UserModel>> userLogin({
    required String email,
    required String password,
  }) async {
    try {
      final response = await DioClient.postData(
        endPoint: 'Auth/login',
        data: {'email': email, 'password': password, 'clientUri': AppConstants.clientUri},
      );
      if (response.statusCode == 200) {
        final user = UserModel.fromJson(response.data);
        PrefHelper.saveToken(user.token);
        print(user.token);
        return right(user);
      } else {
        return left(ServerFauilre('Invalid response from server'));
      }
    } catch (e) {
      if (e is DioException) {
        final failure = ServerFauilre.fromDioException(e);
        return left(ServerFauilre(failure.message));
      } else {
        return left(ServerFauilre('Unexpected Error, please try again'));
      }
    }
  }

  Future<Either<ServerFauilre, BaseResponseModel>> signUp({
    required String userName,
    required String email,
    required String phoneNum,
    required String password,
  }) async {
    try {
      var response = await DioClient.postData(
        endPoint: 'Auth/Register',
        data: {
          'userName': userName,
          'email': email,
          'phoneNumber': phoneNum,
          'password': password,
          'clientUri': AppConstants.clientUri,
        },
      );
      return right(BaseResponseModel.fromJson(response.data));
    } catch (e) {
      if (e is DioException) {
        final failure = ServerFauilre.fromDioException(e);
        return left(ServerFauilre(failure.message));
      } else {
        return left(ServerFauilre('Unexpected Error, please try again'));
      }
    }
  }

Future<Either<ServerFauilre, BaseResponseModel>> confirmEmail({
    required String email,
    required String token,
  }) async {
    try {
      var response = await DioClient.postData(
        endPoint: 'Auth/ConfirmEmail',
        data: {
          'email': email, 
          'token': token
        },
      );
      // بنرجع Success لو الـ API رجع بيانات
      return right(BaseResponseModel.fromJson(response.data));
    } catch (e) {
      if (e is DioException) {
        return left(ServerFauilre.fromDioException(e));
      }
      return left(ServerFauilre('Unexpected Error, please try again'));
    }
  }

 Future<Either<ServerFauilre, BaseResponseModel>> forgetPassword({
    required String email,
  }) async {
    try {
      var response = await DioClient.postData(
        endPoint: 'Auth/Forget-Password',
        data: {'email': email, 'clientUri': AppConstants.clientUri}, 
      );

      return right(BaseResponseModel.fromJson(response.data));

    } catch (e) {
      if (e is DioException) {
       
        return left(ServerFauilre.fromDioException(e));
      } 
      return left(ServerFauilre('Unexpected Error, please try again'));
    }
  }
  Future<void> loginWithGoogle({required String idToken}) async {
    final response = await DioClient.postData(
      endPoint: 'Auth/google',
      data: {
        'idToken': idToken,
      },
    );

    if (response.statusCode == 200) {
      // هنا ممكن تحفظ التوكن لو API بيرجعلك واحد
      print("Google Login Success");
    } else {
      throw Exception('Google login failed');
    }
  }
}

