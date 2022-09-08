import 'package:flutter/material.dart';
import 'package:nectar/constants.dart';
import 'package:nectar/widgets/confirm_button.dart';
import 'package:nectar/widgets/my_text.dart';

import '../../core/app_router/app_router.dart';
import '../../widgets/drop_menu.dart';
import '../nav_bar/view.dart';

class SelectLocationView extends StatelessWidget {
  const SelectLocationView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Image.asset(getAsset('map')),
            MyText(
              data: 'Select Your Location',
              fontWeight: FontWeight.bold,
              fontSize: 26,
              textAlign: TextAlign.center,
            ),
            MyText(
              data:
                  'Switch on your location to stay in tune with what’s happening in your area',
              verticalMargin: 15,
              color: kGrayColor,
              fontSize: 16,
              textAlign: TextAlign.center,
            ),
            DropMenu(
              labelText: 'Your Zone',
              items: ['Cairo', 'Alex', 'Mansoura', 'Tanta'],
              onChanged: (v) {
                print("Your Zone is $v");
              },
            ),
            DropMenu(
              labelText: 'Your Area',
              items: ['Maadi', 'Geza', 'Tahrer'],
              onChanged: (v) {
                print("Your Area is $v");
              },
            ),
            SizedBox(height: 40),
            ConfirmButton(
              title: 'Submit',
              onPressed: () => AppRouter.navigateAndPopAll(context, NavBarView()),
            ),
          ],
        ),
      ),
    );
  }
}
