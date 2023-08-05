import 'package:boxtout/app/app.locator.dart';
import 'package:boxtout/app/app.router.dart';
import 'package:boxtout/app/models/product_dto.dart';
import 'package:boxtout/services/auth_service.dart';
import 'package:boxtout/services/shopping_service.dart';
import 'package:stacked/stacked.dart';
import 'package:stacked_services/stacked_services.dart';

class HomeViewModel extends ReactiveViewModel {
  final _authService = locator<AuthService>();
  final navService = locator<RouterService>();
  final _shopService = locator<ShoppingService>();
  @override
  List<ListenableServiceMixin> get listenableServices => [
        _shopService,
      ];

  Future start() async {
    await runBusyFuture(_shopService.fetchAllProducts(), throwException: true);
  }

  Future addToCart(ProductDto product) async {
    await runBusyFuture(_shopService.addToCart(product), throwException: true);
  }

  addCartItemQuantity(int id) {
    _shopService.addCartItemQuantity(id);
  }

  minusCartItemQuantity(int id) {
    _shopService.minusCartItemQuantity(id);
  }

  signOut() async {
    await _authService.signOut();
    await navService.replaceWithAuthView();
  }

  num get cartTotal => _shopService.cartTotal;
  int get cartItemsQuantity => _shopService.cartItemsQuantity;
  List<ProductDto> get products => _shopService.products;
  List<ProductDto> get cart => _shopService.cart;
}
