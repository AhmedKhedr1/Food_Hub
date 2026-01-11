import 'package:food_hub/Core/Network/api_error.dart';
import 'package:food_hub/Core/Network/api_service.dart';
import 'package:food_hub/Features/Home/data/Models/tooping_model.dart';

class ToopingRepo {
  ApiService _apiService = ApiService();
  // get toopings
  Future<List<ToopingModel>> GetToopings() async {
    try {
      final response = await _apiService.get('/toppings');
      return (response['data'] as List)
          .map((e) => ToopingModel.fromjson(e))
          .toList();
    } on ApiError {
      rethrow;
    } catch (e) {
      throw ApiError(Message: e.toString());
    }
  }

  // get side options
  Future<List<ToopingModel>> GetSideOption() async {
    try {
      final response = await _apiService.get('/side-options');
      return (response['data'] as List)
          .map((e) => ToopingModel.fromjson(e))
          .toList();
    } on ApiError {
      rethrow;
    } catch (e) {
      print(ApiError(Message: e.toString()));
      throw ApiError(Message: e.toString());
    }
  }
}
