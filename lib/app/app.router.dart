// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// StackedRouterGenerator
// **************************************************************************

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:flutter/material.dart' as _i6;
import 'package:stacked/stacked.dart' as _i5;
import 'package:stacked_services/stacked_services.dart' as _i4;

import '../ui/views/auth/auth_view.dart' as _i2;
import '../ui/views/home/home_view.dart' as _i3;
import '../ui/views/startup/startup_view.dart' as _i1;

final stackedRouter =
    StackedRouterWeb(navigatorKey: _i4.StackedService.navigatorKey);

class StackedRouterWeb extends _i5.RootStackRouter {
  StackedRouterWeb({_i6.GlobalKey<_i6.NavigatorState>? navigatorKey})
      : super(navigatorKey);

  @override
  final Map<String, _i5.PageFactory> pagesMap = {
    StartupViewRoute.name: (routeData) {
      return _i5.CustomPage<dynamic>(
        routeData: routeData,
        child: const _i1.StartupView(),
        opaque: true,
        barrierDismissible: false,
      );
    },
    AuthViewRoute.name: (routeData) {
      return _i5.CustomPage<dynamic>(
        routeData: routeData,
        child: const _i2.AuthView(),
        opaque: true,
        barrierDismissible: false,
      );
    },
    HomeViewRoute.name: (routeData) {
      return _i5.CustomPage<dynamic>(
        routeData: routeData,
        child: const _i3.HomeView(),
        opaque: true,
        barrierDismissible: false,
      );
    },
  };

  @override
  List<_i5.RouteConfig> get routes => [
        _i5.RouteConfig(
          '/#redirect',
          path: '/',
          redirectTo: '',
          fullMatch: true,
        ),
        _i5.RouteConfig(
          StartupViewRoute.name,
          path: '',
        ),
        _i5.RouteConfig(
          AuthViewRoute.name,
          path: '',
        ),
        _i5.RouteConfig(
          HomeViewRoute.name,
          path: '',
        ),
      ];
}

/// generated route for
/// [_i1.StartupView]
class StartupViewRoute extends _i5.PageRouteInfo<void> {
  const StartupViewRoute()
      : super(
          StartupViewRoute.name,
          path: '',
        );

  static const String name = 'StartupView';
}

/// generated route for
/// [_i2.AuthView]
class AuthViewRoute extends _i5.PageRouteInfo<void> {
  const AuthViewRoute()
      : super(
          AuthViewRoute.name,
          path: '',
        );

  static const String name = 'AuthView';
}

/// generated route for
/// [_i3.HomeView]
class HomeViewRoute extends _i5.PageRouteInfo<void> {
  const HomeViewRoute()
      : super(
          HomeViewRoute.name,
          path: '',
        );

  static const String name = 'HomeView';
}

extension RouterStateExtension on _i4.RouterService {
  Future<dynamic> navigateToStartupView(
      {void Function(_i5.NavigationFailure)? onFailure}) async {
    return navigateTo(
      const StartupViewRoute(),
      onFailure: onFailure,
    );
  }

  Future<dynamic> navigateToAuthView(
      {void Function(_i5.NavigationFailure)? onFailure}) async {
    return navigateTo(
      const AuthViewRoute(),
      onFailure: onFailure,
    );
  }

  Future<dynamic> navigateToHomeView(
      {void Function(_i5.NavigationFailure)? onFailure}) async {
    return navigateTo(
      const HomeViewRoute(),
      onFailure: onFailure,
    );
  }

  Future<dynamic> replaceWithStartupView(
      {void Function(_i5.NavigationFailure)? onFailure}) async {
    return replaceWith(
      const StartupViewRoute(),
      onFailure: onFailure,
    );
  }

  Future<dynamic> replaceWithAuthView(
      {void Function(_i5.NavigationFailure)? onFailure}) async {
    return replaceWith(
      const AuthViewRoute(),
      onFailure: onFailure,
    );
  }

  Future<dynamic> replaceWithHomeView(
      {void Function(_i5.NavigationFailure)? onFailure}) async {
    return replaceWith(
      const HomeViewRoute(),
      onFailure: onFailure,
    );
  }
}
