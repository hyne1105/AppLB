import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:labeaute/screens/product_detail_screen.dart';
import 'package:labeaute/screens/splash_screen.dart';
import 'package:labeaute/screens/login_screen.dart';
import 'package:labeaute/screens/onboarding_screen.dart';
import 'package:labeaute/screens/signup_screen.dart';
import 'package:labeaute/screens/navigation_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    SystemChrome.setPreferredOrientations(
      [DeviceOrientation.portraitUp, DeviceOrientation.portraitDown]
    );
    return MaterialApp(
      title: "LaBeauté",
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primaryColor: Color(0xFF820233),
      ),

      home: ProductDetailScreen(),
    );
  }
}
