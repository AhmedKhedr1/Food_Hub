import 'package:food_hub/Core/Network/api_error.dart';
import 'package:food_hub/Core/Network/api_service.dart';
import 'package:food_hub/Features/Home/data/Models/category_model.dart';
import 'package:food_hub/Features/Home/data/Models/product_model.dart';

class ProductRepo {
  ApiService _apiService = ApiService();

  // get product
  Future<List<ProductModel>> GetProducts() async {
    try {
      final response = await _apiService.get('/products');
      return (response['data'] as List)
          .map((e) => ProductModel.frojson(e))
          .toList();
    } on ApiError {
      rethrow;
    } catch (e) {
      throw ApiError(Message: e.toString());
    }
  }

  //search
  //get category
  Future<List<CategoryModel>> GetAllCategory() async {
    try {
      final response = await _apiService.get('/categories');
      return (response['data'] as List)
          .map((e) => CategoryModel.fromjson(e))
          .toList();
    } on ApiError {
      rethrow;
    } catch (e) {
      throw ApiError(Message: e.toString());
    }
  }
}
