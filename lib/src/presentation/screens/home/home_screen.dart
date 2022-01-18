import 'package:flut_shop/src/injection.dart';
import 'package:flut_shop/src/presentation/bloc/home/products_bloc.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'home_screen_view.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) =>
          getIt<ProductsBloc>()..add(ProductsEventGetProducts()),
      child: const HomeScreenView(),
    );
  }
}
