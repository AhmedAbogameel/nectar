import 'package:flutter/material.dart';
import 'package:nectar/constants.dart';
import 'package:nectar/core/app_router/app_router.dart';
import 'package:nectar/widgets/input_form_field.dart';
import 'package:nectar/widgets/my_text.dart';

import '../select_location/view.dart';

class OTPView extends StatelessWidget {
  const OTPView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(height: 30),
            MyText(
              data: 'Enter your 4-digit code',
              fontSize: 26,
              fontWeight: FontWeight.bold,
            ),
            InputFormField(
              verticalMargin: 30,
              labelText: 'Code',
              hintText: '- - - -',
              keyboardType: TextInputType.number,
            ),
            Spacer(),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                TextButton(
                  onPressed: () {},
                  child: MyText(
                    data: 'Resend Code',
                    color: kPrimaryColor,
                  ),
                ),
                InkWell(
                  onTap: () => AppRouter.navigateAndPopAll(context, SelectLocationView()),
                  child: Container(
                    padding: EdgeInsets.all(15),
                    child: Icon(Icons.arrow_forward_ios, color: kWhiteColor),
                    decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      color: kPrimaryColor
                    ),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
