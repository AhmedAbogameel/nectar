import 'package:flutter/material.dart';
import 'package:nectar/constants.dart';
import 'views/splash/view.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: SplashView(),
      theme: theme,
      title: 'Nectar',
      builder: (context, child) => SafeArea(child: child!),
      debugShowCheckedModeBanner: false,
    );
  }
}