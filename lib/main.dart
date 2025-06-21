import 'package:flutter/material.dart';
import 'package:hematkuy/screen/main_page.dart';
import 'package:hematkuy/screen/splashscreen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'hematkuy',
      debugShowCheckedModeBanner: false,
      routes: {
        '/':(context) => SplashPage(),
        '/home':(context) => MainPage()},
    );
  }
}
