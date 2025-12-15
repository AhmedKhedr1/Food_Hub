// ignore_for_file: deprecated_member_use, file_names
import 'package:dio/dio.dart';
import 'package:food_hub/Core/Network/api_error.dart';

class ApiException {
  static ApiError handleError(DioError error) {
    switch (error.type) {
      case DioErrorType.connectionTimeout:
        return ApiError(Message: 'Bad Connection');
      case DioErrorType.connectionError:
        return ApiError(Message: error.toString());
      default:
        return ApiError(Message: 'Something went wrong ');
    }
  }
}
