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

  final ReactiveValue<List<ProductDto>> _products =
      ReactiveValue<List<ProductDto>>([]);

  final ReactiveValue<List<ProductDto>> _cart =
      ReactiveValue<List<ProductDto>>([]);

  Future fetchAllProducts() async {
    try {
      final data = await _supabase.from('products').select('*');
      print(data);
      if (data is List && data.isNotEmpty) {
        _products.value = data.map((e) => ProductDto.fromJson(e)).toList();
      }
    } catch (e) {
      return Future.error(errorDefinition(e.toString()));
    }
  }

  Future addToCart(ProductDto product) async {
    _cart.value.add(product);
    return null;
  }
}
