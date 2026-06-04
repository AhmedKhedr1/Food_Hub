import 'package:food_hub/Core/Network/api_error.dart';
import 'package:food_hub/Core/Network/api_service.dart';
import 'package:food_hub/Features/Cart/data/Models/cart_request_model.dart';

class CartRepo {
  ApiService _apiService = ApiService();

  Future<void> AddToCart(CartRequestModel cartdata) async {
    try {
      final response = await _apiService.post('/cart/add', cartdata.toJson());
    } catch (e) {
      throw ApiError(Message: e.toString());
    }
  }
}
