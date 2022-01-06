import 'package:auto_route/src/router/auto_router_x.dart';
import 'package:flut_shop/src/core/routes/app_router.dart';
import 'package:flut_shop/src/injection.dart';
import 'package:flut_shop/src/presentation/bloc/login_form_bloc.dart';
import 'package:flut_shop/src/presentation/screens/auth/login_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class AuthScreen extends StatelessWidget {
  const AuthScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => getIt<LoginFormBloc>(),
      child: BlocConsumer<LoginFormBloc, LoginFormState>(
        listener: (context, state) {
          state.authResponse.maybeWhen(
            success: (val) => context.router.replace(const HomeScreenRoute()),
            error: (val) {
              showDialog(
                context: context,
                builder: (_) => AlertDialog(
                  title: Column(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      const Icon(
                        Icons.error_outline_outlined,
                        color: Colors.red,
                        size: 64,
                      ),
                      SizedBox(height: 16),
                      Text(val),
                    ],
                  ),
                  actions: [
                    TextButton(
                      onPressed: () => Navigator.pop(context),
                      child: Text('OK'),
                    ),
                  ],
                ),
              );
              context.read<LoginFormBloc>().add(LoginFormResetAuthState());
            },
            orElse: () {},
          );
        },
        builder: (context, state) {
          if (state.isSubmitting) {
            return const Scaffold(
              body: Center(
                child: CircularProgressIndicator(),
              ),
            );
          } else {
            return const LoginScreen();
          }
        },
      ),
    );
  }
}
