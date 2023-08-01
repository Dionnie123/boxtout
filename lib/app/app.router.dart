// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// StackedRouterGenerator
// **************************************************************************

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:flutter/material.dart' as _i8;
import 'package:stacked/stacked.dart' as _i7;
import 'package:stacked_services/stacked_services.dart' as _i6;

import '../ui/views/auth/auth_view.dart' as _i2;
import '../ui/views/cart/cart_view.dart' as _i4;
import '../ui/views/foo/foo_view.dart' as _i3;
import '../ui/views/home/home_view.dart' as _i5;
import '../ui/views/startup/startup_view.dart' as _i1;

final stackedRouter =
    StackedRouterWeb(navigatorKey: _i6.StackedService.navigatorKey);

class StackedRouterWeb extends _i7.RootStackRouter {
  StackedRouterWeb({_i8.GlobalKey<_i8.NavigatorState>? navigatorKey})
      : super(navigatorKey);

  @override
  final Map<String, _i7.PageFactory> pagesMap = {
    StartupViewRoute.name: (routeData) {
      return _i7.CustomPage<dynamic>(
        routeData: routeData,
        child: const _i1.StartupView(),
        opaque: true,
        barrierDismissible: false,
      );
    },
    AuthViewRoute.name: (routeData) {
      return _i7.CustomPage<dynamic>(
        routeData: routeData,
        child: const _i2.AuthView(),
        opaque: true,
        barrierDismissible: false,
      );
    },
    FooViewRoute.name: (routeData) {
      return _i7.MaterialPageX<dynamic>(
        routeData: routeData,
        child: const _i3.FooView(),
      );
    },
    CartViewRoute.name: (routeData) {
      return _i7.MaterialPageX<dynamic>(
        routeData: routeData,
        child: const _i4.CartView(),
      );
    },
    HomeViewRoute.name: (routeData) {
      return _i7.CustomPage<dynamic>(
        routeData: routeData,
        child: const _i5.HomeView(),
        opaque: true,
        barrierDismissible: false,
      );
    },
  };

  @override
  List<_i7.RouteConfig> get routes => [
        _i7.RouteConfig(
          '/#redirect',
          path: '/',
          redirectTo: '',
          fullMatch: true,
        ),
        _i7.RouteConfig(
          StartupViewRoute.name,
          path: '',
        ),
        _i7.RouteConfig(
          AuthViewRoute.name,
          path: '',
        ),
        _i7.RouteConfig(
          FooViewRoute.name,
          path: '/foo-view',
        ),
        _i7.RouteConfig(
          CartViewRoute.name,
          path: '/cart-view',
        ),
        _i7.RouteConfig(
          HomeViewRoute.name,
          path: '/home-view',
        ),
      ];
}

/// generated route for
/// [_i1.StartupView]
class StartupViewRoute extends _i7.PageRouteInfo<void> {
  const StartupViewRoute()
      : super(
          StartupViewRoute.name,
          path: '',
        );

  static const String name = 'StartupView';
}

/// generated route for
/// [_i2.AuthView]
class AuthViewRoute extends _i7.PageRouteInfo<void> {
  const AuthViewRoute()
      : super(
          AuthViewRoute.name,
          path: '',
        );

  static const String name = 'AuthView';
}

/// generated route for
/// [_i3.FooView]
class FooViewRoute extends _i7.PageRouteInfo<void> {
  const FooViewRoute()
      : super(
          FooViewRoute.name,
          path: '/foo-view',
        );

  static const String name = 'FooView';
}

/// generated route for
/// [_i4.CartView]
class CartViewRoute extends _i7.PageRouteInfo<void> {
  const CartViewRoute()
      : super(
          CartViewRoute.name,
          path: '/cart-view',
        );

  static const String name = 'CartView';
}

/// generated route for
/// [_i5.HomeView]
class HomeViewRoute extends _i7.PageRouteInfo<void> {
  const HomeViewRoute()
      : super(
          HomeViewRoute.name,
          path: '/home-view',
        );

  static const String name = 'HomeView';
}

extension RouterStateExtension on _i6.RouterService {
  Future<dynamic> navigateToStartupView(
      {void Function(_i7.NavigationFailure)? onFailure}) async {
    return navigateTo(
      const StartupViewRoute(),
      onFailure: onFailure,
    );
  }

  Future<dynamic> navigateToAuthView(
      {void Function(_i7.NavigationFailure)? onFailure}) async {
    return navigateTo(
      const AuthViewRoute(),
      onFailure: onFailure,
    );
  }

  Future<dynamic> navigateToFooView(
      {void Function(_i7.NavigationFailure)? onFailure}) async {
    return navigateTo(
      const FooViewRoute(),
      onFailure: onFailure,
    );
  }

  Future<dynamic> navigateToCartView(
      {void Function(_i7.NavigationFailure)? onFailure}) async {
    return navigateTo(
      const CartViewRoute(),
      onFailure: onFailure,
    );
  }

  Future<dynamic> navigateToHomeView(
      {void Function(_i7.NavigationFailure)? onFailure}) async {
    return navigateTo(
      const HomeViewRoute(),
      onFailure: onFailure,
    );
  }

  Future<dynamic> replaceWithStartupView(
      {void Function(_i7.NavigationFailure)? onFailure}) async {
    return replaceWith(
      const StartupViewRoute(),
      onFailure: onFailure,
    );
  }

  Future<dynamic> replaceWithAuthView(
      {void Function(_i7.NavigationFailure)? onFailure}) async {
    return replaceWith(
      const AuthViewRoute(),
      onFailure: onFailure,
    );
  }

  Future<dynamic> replaceWithFooView(
      {void Function(_i7.NavigationFailure)? onFailure}) async {
    return replaceWith(
      const FooViewRoute(),
      onFailure: onFailure,
    );
  }

  Future<dynamic> replaceWithCartView(
      {void Function(_i7.NavigationFailure)? onFailure}) async {
    return replaceWith(
      const CartViewRoute(),
      onFailure: onFailure,
    );
  }

  Future<dynamic> replaceWithHomeView(
      {void Function(_i7.NavigationFailure)? onFailure}) async {
    return replaceWith(
      const HomeViewRoute(),
      onFailure: onFailure,
    );
  }
}
