
import 'package:dio/dio.dart';

abstract class Fauilre {
  final String message;

  Fauilre(this.message);
   @override
  String toString() => message;
}

class ServerFauilre extends Fauilre{
  ServerFauilre(super.message);

    factory ServerFauilre.fromDioException(DioException dioException) {
  switch (dioException.type) {
  case DioExceptionType.connectionTimeout:
    return ServerFauilre('Connection timeout with ApiServer');

  case DioExceptionType.sendTimeout:
    return ServerFauilre('Send timeout with ApiServer');

  case DioExceptionType.receiveTimeout:
    return ServerFauilre('Receive timeout with ApiServer');

  case DioExceptionType.badResponse:
    return ServerFauilre.fromResponse(
      dioException.response?.statusCode,
      dioException.response?.data,
    );

  case DioExceptionType.cancel:
    return ServerFauilre('Request to ApiServer was cancelled');

  default:
    return ServerFauilre('Opps There was an Error, Please try again');
}

  }

  factory ServerFauilre.fromResponse(int? statusCode, dynamic response) {
  if (statusCode == 400 || statusCode == 401 || statusCode == 403) {
    return ServerFauilre(
      response['message'] ??
      response['error']?['message'] ??
      'Authentication Error',
    );
  } else if (statusCode == 404) {
    return ServerFauilre('Your request not found, Please try later!');
  } else if (statusCode == 422) {
    return ServerFauilre(
      response['message'] ?? 'Validation error',
    );
  } else if (statusCode == 500) {
    return ServerFauilre('Internal Server error, Please try later');
  } else {
    return ServerFauilre('Opps There was an Error, Please try again');
  }
}

}