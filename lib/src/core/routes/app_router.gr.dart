// **************************************************************************
// AutoRouteGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// AutoRouteGenerator
// **************************************************************************

part of 'app_router.dart';

class _$AppRouter extends RootStackRouter {
  _$AppRouter([GlobalKey<NavigatorState>? navigatorKey]) : super(navigatorKey);

  @override
  final Map<String, PageFactory> pagesMap = {
    AuthScreenRoute.name: (routeData) {
      return MaterialPageX<dynamic>(
          routeData: routeData, child: const AuthScreen());
    }
  };

  @override
  List<RouteConfig> get routes =>
      [RouteConfig(AuthScreenRoute.name, path: '/')];
}

/// generated route for
/// [AuthScreen]
class AuthScreenRoute extends PageRouteInfo<void> {
  const AuthScreenRoute() : super(AuthScreenRoute.name, path: '/');

  static const String name = 'AuthScreenRoute';
}
