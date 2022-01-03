import 'package:auto_route/auto_route.dart';
import 'package:flut_shop/src/presentation/screens/auth/auth_screen.dart';
import 'package:flut_shop/src/presentation/screens/auth/login_screen.dart';
import 'package:flutter/widgets.dart';

part 'app_router.gr.dart';

@MaterialAutoRouter(
  routes: <AutoRoute>[
    AutoRoute(page: AuthScreen, initial: true),
  ],
)
class AppRouter extends _$AppRouter {}
