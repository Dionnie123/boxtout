// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// StackedRouterGenerator
// **************************************************************************

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:flutter/material.dart' as _i10;
import 'package:stacked/stacked.dart' as _i9;
import 'package:stacked_services/stacked_services.dart' as _i8;

import '../ui/views/account/account_view.dart' as _i7;
import '../ui/views/auth/auth_view.dart' as _i1;
import '../ui/views/cart/cart_view.dart' as _i2;
import '../ui/views/home/home_view.dart' as _i3;
import '../ui/views/messages/messages_view.dart' as _i6;
import '../ui/views/orders/orders_view.dart' as _i5;
import '../ui/views/startup/startup_view.dart' as _i4;

final stackedRouter =
    StackedRouterWeb(navigatorKey: _i8.StackedService.navigatorKey);

class StackedRouterWeb extends _i9.RootStackRouter {
  StackedRouterWeb({_i10.GlobalKey<_i10.NavigatorState>? navigatorKey})
      : super(navigatorKey);

  @override
  final Map<String, _i9.PageFactory> pagesMap = {
    AuthViewRoute.name: (routeData) {
      return _i9.MaterialPageX<dynamic>(
        routeData: routeData,
        child: const _i1.AuthView(),
      );
    },
    CartViewRoute.name: (routeData) {
      return _i9.MaterialPageX<dynamic>(
        routeData: routeData,
        child: const _i2.CartView(),
      );
    },
    HomeViewRoute.name: (routeData) {
      return _i9.CustomPage<dynamic>(
        routeData: routeData,
        child: const _i3.HomeView(),
        transitionsBuilder: _i9.TransitionsBuilders.fadeIn,
        opaque: true,
        barrierDismissible: false,
      );
    },
    StartupViewRoute.name: (routeData) {
      return _i9.CustomPage<dynamic>(
        routeData: routeData,
        child: const _i4.StartupView(),
        transitionsBuilder: _i9.TransitionsBuilders.fadeIn,
        opaque: true,
        barrierDismissible: false,
      );
    },
    OrdersViewRoute.name: (routeData) {
      return _i9.CustomPage<dynamic>(
        routeData: routeData,
        child: const _i5.OrdersView(),
        transitionsBuilder: _i9.TransitionsBuilders.fadeIn,
        opaque: true,
        barrierDismissible: false,
      );
    },
    MessagesViewRoute.name: (routeData) {
      return _i9.CustomPage<dynamic>(
        routeData: routeData,
        child: const _i6.MessagesView(),
        transitionsBuilder: _i9.TransitionsBuilders.fadeIn,
        opaque: true,
        barrierDismissible: false,
      );
    },
    AccountViewRoute.name: (routeData) {
      return _i9.CustomPage<dynamic>(
        routeData: routeData,
        child: const _i7.AccountView(),
        transitionsBuilder: _i9.TransitionsBuilders.fadeIn,
        opaque: true,
        barrierDismissible: false,
      );
    },
  };

  @override
  List<_i9.RouteConfig> get routes => [
        _i9.RouteConfig(
          AuthViewRoute.name,
          path: '/',
        ),
        _i9.RouteConfig(
          CartViewRoute.name,
          path: '/',
        ),
        _i9.RouteConfig(
          HomeViewRoute.name,
          path: '/',
        ),
        _i9.RouteConfig(
          StartupViewRoute.name,
          path: '/',
        ),
        _i9.RouteConfig(
          OrdersViewRoute.name,
          path: '/',
        ),
        _i9.RouteConfig(
          MessagesViewRoute.name,
          path: '/',
        ),
        _i9.RouteConfig(
          AccountViewRoute.name,
          path: '/',
        ),
      ];
}

/// generated route for
/// [_i1.AuthView]
class AuthViewRoute extends _i9.PageRouteInfo<void> {
  const AuthViewRoute()
      : super(
          AuthViewRoute.name,
          path: '/',
        );

  static const String name = 'AuthView';
}

/// generated route for
/// [_i2.CartView]
class CartViewRoute extends _i9.PageRouteInfo<void> {
  const CartViewRoute()
      : super(
          CartViewRoute.name,
          path: '/',
        );

  static const String name = 'CartView';
}

/// generated route for
/// [_i3.HomeView]
class HomeViewRoute extends _i9.PageRouteInfo<void> {
  const HomeViewRoute()
      : super(
          HomeViewRoute.name,
          path: '/',
        );

  static const String name = 'HomeView';
}

/// generated route for
/// [_i4.StartupView]
class StartupViewRoute extends _i9.PageRouteInfo<void> {
  const StartupViewRoute()
      : super(
          StartupViewRoute.name,
          path: '/',
        );

  static const String name = 'StartupView';
}

/// generated route for
/// [_i5.OrdersView]
class OrdersViewRoute extends _i9.PageRouteInfo<void> {
  const OrdersViewRoute()
      : super(
          OrdersViewRoute.name,
          path: '/',
        );

  static const String name = 'OrdersView';
}

/// generated route for
/// [_i6.MessagesView]
class MessagesViewRoute extends _i9.PageRouteInfo<void> {
  const MessagesViewRoute()
      : super(
          MessagesViewRoute.name,
          path: '/',
        );

  static const String name = 'MessagesView';
}

/// generated route for
/// [_i7.AccountView]
class AccountViewRoute extends _i9.PageRouteInfo<void> {
  const AccountViewRoute()
      : super(
          AccountViewRoute.name,
          path: '/',
        );

  static const String name = 'AccountView';
}

extension RouterStateExtension on _i8.RouterService {
  Future<dynamic> navigateToAuthView(
      {void Function(_i9.NavigationFailure)? onFailure}) async {
    return navigateTo(
      const AuthViewRoute(),
      onFailure: onFailure,
    );
  }

  Future<dynamic> navigateToCartView(
      {void Function(_i9.NavigationFailure)? onFailure}) async {
    return navigateTo(
      const CartViewRoute(),
      onFailure: onFailure,
    );
  }

  Future<dynamic> navigateToHomeView(
      {void Function(_i9.NavigationFailure)? onFailure}) async {
    return navigateTo(
      const HomeViewRoute(),
      onFailure: onFailure,
    );
  }

  Future<dynamic> navigateToStartupView(
      {void Function(_i9.NavigationFailure)? onFailure}) async {
    return navigateTo(
      const StartupViewRoute(),
      onFailure: onFailure,
    );
  }

  Future<dynamic> navigateToOrdersView(
      {void Function(_i9.NavigationFailure)? onFailure}) async {
    return navigateTo(
      const OrdersViewRoute(),
      onFailure: onFailure,
    );
  }

  Future<dynamic> navigateToMessagesView(
      {void Function(_i9.NavigationFailure)? onFailure}) async {
    return navigateTo(
      const MessagesViewRoute(),
      onFailure: onFailure,
    );
  }

  Future<dynamic> navigateToAccountView(
      {void Function(_i9.NavigationFailure)? onFailure}) async {
    return navigateTo(
      const AccountViewRoute(),
      onFailure: onFailure,
    );
  }

  Future<dynamic> replaceWithAuthView(
      {void Function(_i9.NavigationFailure)? onFailure}) async {
    return replaceWith(
      const AuthViewRoute(),
      onFailure: onFailure,
    );
  }

  Future<dynamic> replaceWithCartView(
      {void Function(_i9.NavigationFailure)? onFailure}) async {
    return replaceWith(
      const CartViewRoute(),
      onFailure: onFailure,
    );
  }

  Future<dynamic> replaceWithHomeView(
      {void Function(_i9.NavigationFailure)? onFailure}) async {
    return replaceWith(
      const HomeViewRoute(),
      onFailure: onFailure,
    );
  }

  Future<dynamic> replaceWithStartupView(
      {void Function(_i9.NavigationFailure)? onFailure}) async {
    return replaceWith(
      const StartupViewRoute(),
      onFailure: onFailure,
    );
  }

  Future<dynamic> replaceWithOrdersView(
      {void Function(_i9.NavigationFailure)? onFailure}) async {
    return replaceWith(
      const OrdersViewRoute(),
      onFailure: onFailure,
    );
  }

  Future<dynamic> replaceWithMessagesView(
      {void Function(_i9.NavigationFailure)? onFailure}) async {
    return replaceWith(
      const MessagesViewRoute(),
      onFailure: onFailure,
    );
  }

  Future<dynamic> replaceWithAccountView(
      {void Function(_i9.NavigationFailure)? onFailure}) async {
    return replaceWith(
      const AccountViewRoute(),
      onFailure: onFailure,
    );
  }
}
