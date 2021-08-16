import 'package:carikerja/pages/onboarding_page.dart';
import 'package:carikerja/pages/splash_page.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      routes: {
        '/':(context) =>SplashPage(),
        '/onboarding':(context) => OnboardingPage()
      },
      
    );
  }
}