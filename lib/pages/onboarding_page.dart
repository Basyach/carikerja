import 'package:carikerja/pages/signin_page.dart';
import 'package:carikerja/theme.dart';
import 'package:flutter/material.dart';

class OnboardingPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Container(
            decoration: BoxDecoration(
                image: DecorationImage(
                    image: AssetImage('assets/bg.png'), fit: BoxFit.cover)),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 50, left: 30, right: 30),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'Build Your Next \nFuture Career Like \na Master',
                  style: whiteTextStyle.copyWith(fontSize: 28),
                ),
                SizedBox(
                  height: 15,
                ),
                Text(
                  '18,000 jobs available',
                  style: whiteTextStyle.copyWith(
                      fontWeight: FontWeight.w200, fontSize: 14),
                ),
                Center(
                  child: Padding(
                    padding: const EdgeInsets.only(top: 380),
                    child: Container(
                      width: 200,
                      height: 50,
                      child: TextButton(
                          style: TextButton.styleFrom(
                              backgroundColor: whitecolor,
                              shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(50))),
                          onPressed: () {},
                          child: Text(
                            'Get Started',
                            style: purpleTextStyle.copyWith(
                                fontSize: 14, fontWeight: FontWeight.w500),
                          )),
                    ),
                  ),
                ),
                Center(
                  child: Padding(
                    padding: const EdgeInsets.only(top: 10),
                    child: Container(
                      width: 200,
                      height: 50,
                      child: OutlinedButton(
                        onPressed: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => SigninPage()));
                        },
                        style: TextButton.styleFrom(
                          side: BorderSide(color: whitecolor),
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(50)),
                        ),
                        child: Text(
                          'Sign In',
                          style: whiteTextStyle.copyWith(
                              fontSize: 14, fontWeight: FontWeight.w500),
                        ),
                      ),
                    ),
                  ),
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}
