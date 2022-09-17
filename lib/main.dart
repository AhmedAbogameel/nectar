import 'package:flutter/material.dart';
import 'package:nectar/constants.dart';
import 'package:nectar/views/cart/view.dart';
import 'package:nectar/views/nav_bar/view.dart';
import 'views/splash/view.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: CartView(),
      theme: theme,
      title: 'Nectar',
      builder: (context, child) => SafeArea(child: child!),
      debugShowCheckedModeBanner: false,
    );
  }
}