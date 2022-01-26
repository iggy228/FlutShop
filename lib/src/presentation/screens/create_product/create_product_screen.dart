import 'package:flut_shop/src/injection.dart';
import 'package:flut_shop/src/presentation/bloc/create_product/create_product_form_bloc.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'create_product_screen_view.dart';

class CreateProductScreen extends StatelessWidget {
  const CreateProductScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => getIt<CreateProductFormBloc>(),
      child: const CreateProductScreenView(),
    );
  }
}
