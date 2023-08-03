import 'package:boxtout/app/app.locator.dart';
import 'package:boxtout/app/models/product_dto.dart';
import 'package:boxtout/services/shopping_service.dart';
import 'package:stacked/stacked.dart';

class HomeViewModel extends ReactiveViewModel {
  final _shoppingService = locator<ShoppingService>();
  @override
  List<ListenableServiceMixin> get listenableServices => [
        _shoppingService,
      ];

  Future start() async {
    await runBusyFuture(_shoppingService.fetchAllProducts(),
        throwException: true);
  }

  Future addToCart(ProductDto product) async {
    await runBusyFuture(_shoppingService.addToCart(product),
        throwException: true);
  }

  List<ProductDto> get products => _shoppingService.products;
  List<ProductDto> get cart => _shoppingService.cart;
}
