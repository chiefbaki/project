// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// AutoRouterGenerator
// **************************************************************************

// ignore_for_file: type=lint
// coverage:ignore-file

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:auto_route/auto_route.dart' as _i5;
import 'package:flutter_application_1/feature/presentation/screens/guides_screen.dart'
    as _i1;
import 'package:flutter_application_1/feature/presentation/screens/home_screen.dart'
    as _i2;
import 'package:flutter_application_1/feature/presentation/screens/login_screen.dart'
    as _i3;
import 'package:flutter_application_1/feature/presentation/screens/reg_screen.dart'
    as _i4;

abstract class $AppRouter extends _i5.RootStackRouter {
  $AppRouter({super.navigatorKey});

  @override
  final Map<String, _i5.PageFactory> pagesMap = {
    GuidesRoute.name: (routeData) {
      return _i5.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i1.GuidesScreen(),
      );
    },
    HomeRoute.name: (routeData) {
      return _i5.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i2.HomeScreen(),
      );
    },
    LoginRoute.name: (routeData) {
      return _i5.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i3.LoginPage(),
      );
    },
    RegRoute.name: (routeData) {
      return _i5.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i4.RegScreen(),
      );
    },
  };
}

/// generated route for
/// [_i1.GuidesScreen]
class GuidesRoute extends _i5.PageRouteInfo<void> {
  const GuidesRoute({List<_i5.PageRouteInfo>? children})
      : super(
          GuidesRoute.name,
          initialChildren: children,
        );

  static const String name = 'GuidesRoute';

  static const _i5.PageInfo<void> page = _i5.PageInfo<void>(name);
}

/// generated route for
/// [_i2.HomeScreen]
class HomeRoute extends _i5.PageRouteInfo<void> {
  const HomeRoute({List<_i5.PageRouteInfo>? children})
      : super(
          HomeRoute.name,
          initialChildren: children,
        );

  static const String name = 'HomeRoute';

  static const _i5.PageInfo<void> page = _i5.PageInfo<void>(name);
}

/// generated route for
/// [_i3.LoginPage]
class LoginRoute extends _i5.PageRouteInfo<void> {
  const LoginRoute({List<_i5.PageRouteInfo>? children})
      : super(
          LoginRoute.name,
          initialChildren: children,
        );

  static const String name = 'LoginRoute';

  static const _i5.PageInfo<void> page = _i5.PageInfo<void>(name);
}

/// generated route for
/// [_i4.RegScreen]
class RegRoute extends _i5.PageRouteInfo<void> {
  const RegRoute({List<_i5.PageRouteInfo>? children})
      : super(
          RegRoute.name,
          initialChildren: children,
        );

  static const String name = 'RegRoute';

  static const _i5.PageInfo<void> page = _i5.PageInfo<void>(name);
}
