import 'package:flut_shop/src/core/utils/constants.dart';
import 'package:flut_shop/src/gen/assets.gen.dart';
import 'package:flut_shop/src/presentation/widgets/login_form.dart';
import 'package:flutter/material.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: GestureDetector(
        onTap: () => FocusManager.instance.primaryFocus?.unfocus(),
        child: SafeArea(
          child: ListView(
            physics: const ClampingScrollPhysics(),
            children: <Widget>[
              Container(
                height: 300,
                decoration: BoxDecoration(
                  image: DecorationImage(
                    image: Assets.images.loginBackground,
                    fit: BoxFit.cover,
                  ),
                  borderRadius: const BorderRadius.only(
                    bottomRight: Radius.elliptical(999, 80),
                  ),
                ),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      kAppTitle,
                      style: Theme.of(context).textTheme.headline2?.copyWith(
                            color: const Color(0xffffffff),
                          ),
                      textAlign: TextAlign.center,
                    ),
                  ],
                ),
              ),
              const Padding(
                padding: EdgeInsets.fromLTRB(16, 30, 16, 16),
                child: LoginForm(),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
