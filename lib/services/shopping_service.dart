import 'package:boxtout/app/helpers/error_definitions.dart';
import 'package:boxtout/app/models/product_dto.dart';
import 'package:stacked/stacked.dart';
import 'package:supabase_flutter/supabase_flutter.dart';

class ShoppingService with ListenableServiceMixin {
  final _supabase = Supabase.instance.client;

  ShoppingService() {
    listenToReactiveValues([
      _products,
      _cart,
    ]);
  }

  List<ProductDto> get products => _products.value;
  List<ProductDto> get cart => _cart.value;

  num get cartTotal {
    num temp = 0.0;
    for (var element in _cart.value) {
      temp += ((element.price ?? 0) * (element.quantityInCart ?? 0));
    }
    return temp;
  }

  addCartItemQuantity(int id) {
    final index = _cart.value.indexWhere((element) => element.id == id);

    if (index != -1) {
      var temp = _cart.value[index];
      _cart.value[index] =
          temp.copyWith(quantityInCart: (temp.quantityInCart ?? 0) + 1);
      notifyListeners();
    }
  }

  minusCartItemQuantity(int id) {
    final index = _cart.value.indexWhere((element) => element.id == id);

    if (index != -1) {
      var temp = _cart.value[index];
      _cart.value[index] = temp.copyWith(
          quantityInCart: (temp.quantityInCart ?? 0) -
              ((temp.quantityInCart ?? 0) > 1 ? 1 : 0));
      notifyListeners();
    }
  }

  final ReactiveValue<List<ProductDto>> _products =
      ReactiveValue<List<ProductDto>>([]);

  final ReactiveValue<List<ProductDto>> _cart =
      ReactiveValue<List<ProductDto>>([]);

  Future fetchAllProducts() async {
    try {
      final data = await _supabase.from('products').select('*');

      if (data is List && data.isNotEmpty) {
        _products.value = data.map((e) => ProductDto.fromJson(e)).toList();
      }
    } catch (e) {
      return Future.error(errorDefinition(e.toString()));
    }
  }

  Future addToCart(ProductDto product) async {
    final index = _cart.value.indexWhere((element) => element.id == product.id);
    if (index == -1) {
      _cart.value.add(product.copyWith(quantityInCart: 1));
    } else {
      final temp = _cart.value[index].copyWith(
          quantityInCart: (_cart.value[index].quantityInCart ?? 0) + 1);

      _cart.value[index] = temp;
      notifyListeners();
    }

    return null;
  }
}
