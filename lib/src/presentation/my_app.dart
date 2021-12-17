import 'package:flut_shop/src/core/routes/app_router.dart';
import 'package:flut_shop/src/core/utils/constants.dart';
import 'package:flut_shop/src/themes/theme.dart';
import 'package:flutter/material.dart';

class MyApp extends StatelessWidget {
  final router = AppRouter();

  MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      debugShowCheckedModeBanner: false,
      title: kAppTitle,
      routerDelegate: router.delegate(),
      routeInformationParser: router.defaultRouteParser(),
      theme: theme,
    );
  }
}
