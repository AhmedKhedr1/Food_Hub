import 'package:dio/dio.dart';
import 'package:food_hub/Core/Network/Api_Exception.dart';
import 'package:food_hub/Core/Network/dio_client.dart';

class ApiService {
  final DioClient _dioClient = DioClient();
  //get
  Future<dynamic> get(String endpoint) async {
    try {
      final response = await _dioClient.dio.get(endpoint);
      return response.data;
    } on DioError catch (e) {
      return ApiException.handleError(e);
    }
  }

  //post
  Future<dynamic> post(String endpoint, Map<String, dynamic> body) async {
    try {
      final response = await _dioClient.dio.post(endpoint, data: body);
      return response.data;
    } on DioError catch (e) {
      return ApiException.handleError(e);
    }
  }

  //put
    Future<dynamic> put(String endpoint, Map<String, dynamic> body) async {
    try {
      final response = await _dioClient.dio.put(endpoint, data: body);
      return response.data;
    } on DioError catch (e) {
      return ApiException.handleError(e);
    }
  }
  //delete
    Future<dynamic> delete(String endpoint, Map<String, dynamic> body) async {
    try {
      final response = await _dioClient.dio.delete(endpoint, data: body);
      return response.data;
    } on DioError catch (e) {
      return ApiException.handleError(e);
    }
  }
}
