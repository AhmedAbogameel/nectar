import 'package:flutter/material.dart';
import 'package:nectar/constants.dart';
import 'package:nectar/core/app_router/app_router.dart';
import 'package:nectar/views/login/view.dart';
import 'package:nectar/views/sign_up/view.dart';
import 'package:nectar/widgets/confirm_button.dart';
import 'package:nectar/widgets/my_text.dart';

class LoginOrSignUpView extends StatelessWidget {
  const LoginOrSignUpView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Image.asset(getAsset('auth-logo')),
          MyText(
            verticalMargin: 30,
            horizontalMargin: 20,
            data: 'Get your groceries\nwith nectar',
            fontSize: 30,
            fontWeight: FontWeight.bold,
          ),
          ConfirmButton(
            verticalMargin: 10,
            horizontalMargin: 20,
            title: 'Log in',
            onPressed: () => AppRouter.navigateAndPopAll(context, LoginView()),
          ),
          ConfirmButton(
            verticalMargin: 10,
            horizontalMargin: 20,
            title: 'Create an account',
            backgroundColor: Colors.transparent,
            titleColor: kPrimaryColor,
            onPressed: () => AppRouter.navigateAndPopAll(context, SignUpView()),
          ),
        ],
      ),
    );
  }
}
