import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:nectar/constants.dart';
import 'package:nectar/views/login/view.dart';
import 'package:nectar/views/otp/view.dart';
import 'package:nectar/widgets/confirm_button.dart';
import 'package:nectar/widgets/input_form_field.dart';
import 'package:nectar/widgets/my_text.dart';
import '../../core/app_router/app_router.dart';

class SignUpView extends StatelessWidget {
  const SignUpView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        padding: EdgeInsets.all(20),
        children: [
          SizedBox(height: 20),
          Image.asset(
            getAsset('colored-logo'),
            height: 50,
            width: 50,
          ),
          SizedBox(height: getHeight(context, 13, subtractAppBar: false),),
          MyText(
            data: 'Sign Up',
            verticalMargin: 10,
            fontWeight: FontWeight.bold,
            fontSize: 26,
          ),
          MyText(
            data: 'Enter your credentials to continue',
            fontSize: 16,
            color: kGrayColor,
          ),
          SizedBox(height: 30),
          InputFormField(
            labelText: 'Username',
          ),
          InputFormField(
            verticalMargin: 20,
            labelText: 'Email',
            keyboardType: TextInputType.emailAddress,
          ),
          InputFormField(
            labelText: 'Password',
            secure: true,
          ),
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 20),
            child: RichText(
              text: TextSpan(
                text: 'By continuing you agree to our ',
                style: TextStyle(
                  color: kGrayColor,
                ),
                children: [
                  TextSpan(
                    text: 'Terms of Service',
                    style: TextStyle(
                      color: kPrimaryColor,
                      fontWeight: FontWeight.bold
                    ),
                    children: [
                      TextSpan(
                        text: ' and ',
                        style: TextStyle(
                          color: kGrayColor,
                          fontWeight: FontWeight.normal,
                        ),
                        children: [
                          TextSpan(
                            text: 'Privacy Policy.',
                            style: TextStyle(
                              color: kPrimaryColor,
                              fontWeight: FontWeight.bold,
                            ),
                            recognizer: TapGestureRecognizer()..onTap = () {
                              print('Privacy Policy.');
                            },
                          ),
                        ],
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ),
          ConfirmButton(
            title: "Sign Up",
            onPressed: () => AppRouter.navigateAndPopAll(context, OTPView()),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              MyText(data: 'Have an account?'),
              TextButton(
                onPressed: () => AppRouter.navigateAndPopAll(context, LoginView()),
                child: MyText(
                  data: 'Login now',
                  color: kPrimaryColor,
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
