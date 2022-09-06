import 'package:flutter/material.dart';

abstract class AppRouter {
  static Future<void> navigateTo(BuildContext context, Widget page) {
    return Navigator.of(context).push(MaterialPageRoute(builder: (context) => page));
  }

  static Future<void> navigateAndPop(BuildContext context, Widget page) {
    return Navigator.of(context).pushReplacement(MaterialPageRoute(builder: (context) => page));
  }

  static Future<void> navigateAndPopAll(BuildContext context, Widget page) {
    return Navigator.of(context).pushAndRemoveUntil(
      MaterialPageRoute(builder: (context) => page),
          (route) => false,
    );
  }

  static void pop(BuildContext context) {
    return Navigator.pop(context);
  }
}