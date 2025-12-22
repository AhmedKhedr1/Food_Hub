import 'package:dio/dio.dart';
import 'package:food_hub/Core/Network/api_error.dart';
import 'package:food_hub/Core/Network/api_exception.dart';
import 'package:food_hub/Core/Network/api_service.dart';
import 'package:food_hub/Core/Utils/pref_helper.dart';
import 'package:food_hub/Features/Auth/data/user_model.dart';

class AuthRepo {
  ApiService apiService = ApiService();

  // login
  Future<UserModel?> login(String Email, String Password) async {
    try {
      final response = await apiService.post('/login', {
        'email': Email,
        'password': Password,
      });
      if (response is ApiError) {
        throw response;
      }
      if (response is Map<String, dynamic>) {
        final msg = response['message'];
        final data = response['data'];

        if (data == null) {
          throw ApiError(Message: msg);
        }
        final user = UserModel.fromjson(response['data']);
        if (user.token != null) {
          await PrefHelper.SaveToken(user.token!);
        }
        return user;
      } else {
        throw ApiError(Message: 'Un Excepcted Error');
      }
    } on DioError catch (e) {
      throw ApiException.handleError(e);
    } catch (e) {
      if (e is ApiError) {
        throw e;
      } else {
        throw ApiError(Message: e.toString());
      }
    }
  }

  //register
  Future<UserModel?> Signup(String Name, String Email, String Password) async {
    try {
      final response = await apiService.post('/register', {
        'name': Name,
        'email': Email,
        'password': Password,
      });
      if (response is ApiError) {
        throw response;
      }
      if (response is Map<String, dynamic>) {
        final msg = response['message'];
        final data = response['data'];

        if (data == null) {
          throw ApiError(Message: msg ?? 'Register failed');
        }
        final user = UserModel.fromjson(response['data']);
        if (user.token != null) {
          await PrefHelper.SaveToken(user.token!);
        }
        return user;
      } else {
        throw ApiError(Message: 'Un Excepcted Error');
      }
    } on DioError catch (e) {
      throw ApiException.handleError(e);
    } catch (e) {
      if (e is ApiError) {
        throw e;
      } else {
        throw ApiError(Message: e.toString());
      }
    }
  }

  //edit profile
  //logout
}
