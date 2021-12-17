import 'package:auto_route/auto_route.dart';
import 'package:flut_shop/src/presentation/screens/login_screen.dart';
import 'package:flutter/widgets.dart';

part 'app_router.gr.dart';

@MaterialAutoRouter(
  routes: <AutoRoute>[
    AutoRoute(page: LoginScreen, initial: true),
  ],
)
class AppRouter extends _$AppRouter {}
