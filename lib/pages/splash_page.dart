import 'dart:async';


import 'package:carikerja/pages/onboarding_page.dart';
import 'package:carikerja/theme.dart';
import 'package:flutter/material.dart';

class SplashPage extends StatefulWidget {
  @override
  _SplashPageState createState() => _SplashPageState();
}

class _SplashPageState extends State<SplashPage> {
@override
void initState(){
  super.initState();

  Timer(Duration(seconds: 3),(){
    Navigator.pushReplacement(context,MaterialPageRoute(builder: (context) =>OnboardingPage()));
  });
}

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: purplecolor,
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
              child: Image.asset(
                'assets/logo.png',
                height: 75,
                width: 60,
              ),
            ),
            SizedBox(
              height: 30,
            ),
            Text(
              'CariKerja',
              style: whiteTextStyle.copyWith(
                  fontSize: 32, fontWeight: FontWeight.w600),
            )
          ],
        ),
      ),
    );
  }
}
