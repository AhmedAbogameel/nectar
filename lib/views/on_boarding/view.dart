import 'package:flutter/material.dart';
import 'package:nectar/constants.dart';
import 'package:nectar/core/app_router/app_router.dart';
import 'package:nectar/widgets/confirm_button.dart';
import 'package:nectar/widgets/my_text.dart';
import '../login_or_sign_up/view.dart';

class OnBoardingView extends StatelessWidget {
  const OnBoardingView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Image.asset(
            getAsset('person'),
            width: getWidth(context, 1),
            height: getHeight(context, 1, subtractAppBar: false),
            fit: BoxFit.fill,
          ),
          Padding(
            padding: const EdgeInsets.all(20),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                Image.asset(
                  getAsset('logo'),
                  width: 50,
                  height: 50,
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(vertical: 15),
                  child: MyText(
                    data: "Welcome\nto our store",
                    color: kWhiteColor,
                    fontWeight: FontWeight.bold,
                    fontSize: 40,
                    textAlign: TextAlign.center,
                  ),
                ),
                MyText(
                  data: 'Ger your groceries in as fast as one hour',
                  color: kGrayColor,
                  textAlign: TextAlign.center,
                ),
                ConfirmButton(
                  title: "Get Started",
                  verticalMargin: 20,
                  onPressed: () => AppRouter.navigateAndPopAll(context, LoginOrSignUpView()),
                ),
                SizedBox(height: 30),
              ],
            ),
          ),
        ],
      ),
    );
  }
}