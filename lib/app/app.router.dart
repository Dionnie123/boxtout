// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// StackedRouterGenerator
// **************************************************************************

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:flutter/material.dart' as _i7;
import 'package:stacked/stacked.dart' as _i6;
import 'package:stacked_services/stacked_services.dart' as _i5;

import '../ui/views/auth/auth_view.dart' as _i2;
import '../ui/views/foo/foo_view.dart' as _i4;
import '../ui/views/home/home_view.dart' as _i3;
import '../ui/views/startup/startup_view.dart' as _i1;

final stackedRouter =
    StackedRouterWeb(navigatorKey: _i5.StackedService.navigatorKey);

class StackedRouterWeb extends _i6.RootStackRouter {
  StackedRouterWeb({_i7.GlobalKey<_i7.NavigatorState>? navigatorKey})
      : super(navigatorKey);

  @override
  final Map<String, _i6.PageFactory> pagesMap = {
    StartupViewRoute.name: (routeData) {
      return _i6.CustomPage<dynamic>(
        routeData: routeData,
        child: const _i1.StartupView(),
        opaque: true,
        barrierDismissible: false,
      );
    },
    AuthViewRoute.name: (routeData) {
      return _i6.CustomPage<dynamic>(
        routeData: routeData,
        child: const _i2.AuthView(),
        opaque: true,
        barrierDismissible: false,
      );
    },
    HomeViewRoute.name: (routeData) {
      return _i6.CustomPage<dynamic>(
        routeData: routeData,
        child: const _i3.HomeView(),
        opaque: true,
        barrierDismissible: false,
      );
    },
    FooViewRoute.name: (routeData) {
      return _i6.MaterialPageX<dynamic>(
        routeData: routeData,
        child: const _i4.FooView(),
      );
    },
  };

  @override
  List<_i6.RouteConfig> get routes => [
        _i6.RouteConfig(
          '/#redirect',
          path: '/',
          redirectTo: '',
          fullMatch: true,
        ),
        _i6.RouteConfig(
          StartupViewRoute.name,
          path: '',
        ),
        _i6.RouteConfig(
          AuthViewRoute.name,
          path: '',
        ),
        _i6.RouteConfig(
          HomeViewRoute.name,
          path: '',
        ),
        _i6.RouteConfig(
          FooViewRoute.name,
          path: '/foo-view',
        ),
      ];
}

/// generated route for
/// [_i1.StartupView]
class StartupViewRoute extends _i6.PageRouteInfo<void> {
  const StartupViewRoute()
      : super(
          StartupViewRoute.name,
          path: '',
        );

  static const String name = 'StartupView';
}

/// generated route for
/// [_i2.AuthView]
class AuthViewRoute extends _i6.PageRouteInfo<void> {
  const AuthViewRoute()
      : super(
          AuthViewRoute.name,
          path: '',
        );

  static const String name = 'AuthView';
}

/// generated route for
/// [_i3.HomeView]
class HomeViewRoute extends _i6.PageRouteInfo<void> {
  const HomeViewRoute()
      : super(
          HomeViewRoute.name,
          path: '',
        );

  static const String name = 'HomeView';
}

/// generated route for
/// [_i4.FooView]
class FooViewRoute extends _i6.PageRouteInfo<void> {
  const FooViewRoute()
      : super(
          FooViewRoute.name,
          path: '/foo-view',
        );

  static const String name = 'FooView';
}

extension RouterStateExtension on _i5.RouterService {
  Future<dynamic> navigateToStartupView(
      {void Function(_i6.NavigationFailure)? onFailure}) async {
    return navigateTo(
      const StartupViewRoute(),
      onFailure: onFailure,
    );
  }

  Future<dynamic> navigateToAuthView(
      {void Function(_i6.NavigationFailure)? onFailure}) async {
    return navigateTo(
      const AuthViewRoute(),
      onFailure: onFailure,
    );
  }

  Future<dynamic> navigateToHomeView(
      {void Function(_i6.NavigationFailure)? onFailure}) async {
    return navigateTo(
      const HomeViewRoute(),
      onFailure: onFailure,
    );
  }

  Future<dynamic> navigateToFooView(
      {void Function(_i6.NavigationFailure)? onFailure}) async {
    return navigateTo(
      const FooViewRoute(),
      onFailure: onFailure,
    );
  }

  Future<dynamic> replaceWithStartupView(
      {void Function(_i6.NavigationFailure)? onFailure}) async {
    return replaceWith(
      const StartupViewRoute(),
      onFailure: onFailure,
    );
  }

  Future<dynamic> replaceWithAuthView(
      {void Function(_i6.NavigationFailure)? onFailure}) async {
    return replaceWith(
      const AuthViewRoute(),
      onFailure: onFailure,
    );
  }

  Future<dynamic> replaceWithHomeView(
      {void Function(_i6.NavigationFailure)? onFailure}) async {
    return replaceWith(
      const HomeViewRoute(),
      onFailure: onFailure,
    );
  }

  Future<dynamic> replaceWithFooView(
      {void Function(_i6.NavigationFailure)? onFailure}) async {
    return replaceWith(
      const FooViewRoute(),
      onFailure: onFailure,
    );
  }
}
