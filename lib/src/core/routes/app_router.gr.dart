// **************************************************************************
// AutoRouteGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// AutoRouteGenerator
// **************************************************************************
//
// ignore_for_file: type=lint

part of 'app_router.dart';

class _$AppRouter extends RootStackRouter {
  _$AppRouter([GlobalKey<NavigatorState>? navigatorKey]) : super(navigatorKey);

  @override
  final Map<String, PageFactory> pagesMap = {
    AuthScreenRoute.name: (routeData) {
      return MaterialPageX<dynamic>(
          routeData: routeData, child: const AuthScreen());
    },
    HomeScreenRoute.name: (routeData) {
      return MaterialPageX<dynamic>(
          routeData: routeData, child: const HomeScreen());
    },
    CreateProductScreenRoute.name: (routeData) {
      return MaterialPageX<Product?>(
          routeData: routeData, child: const CreateProductScreen());
    }
  };

  @override
  List<RouteConfig> get routes => [
        RouteConfig(AuthScreenRoute.name, path: '/'),
        RouteConfig(HomeScreenRoute.name, path: '/home-screen'),
        RouteConfig(CreateProductScreenRoute.name,
            path: '/create-product-screen')
      ];
}

/// generated route for
/// [AuthScreen]
class AuthScreenRoute extends PageRouteInfo<void> {
  const AuthScreenRoute() : super(AuthScreenRoute.name, path: '/');

  static const String name = 'AuthScreenRoute';
}

/// generated route for
/// [HomeScreen]
class HomeScreenRoute extends PageRouteInfo<void> {
  const HomeScreenRoute() : super(HomeScreenRoute.name, path: '/home-screen');

  static const String name = 'HomeScreenRoute';
}

/// generated route for
/// [CreateProductScreen]
class CreateProductScreenRoute extends PageRouteInfo<void> {
  const CreateProductScreenRoute()
      : super(CreateProductScreenRoute.name, path: '/create-product-screen');

  static const String name = 'CreateProductScreenRoute';
}
