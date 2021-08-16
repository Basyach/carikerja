import 'package:carikerja/theme.dart';
import 'package:carikerja/widgets/custom_list.dart';
import 'package:flutter/material.dart';

class SecondHomePage extends StatelessWidget {
  final String jobTitleHome;
  final String imageUrl;
  SecondHomePage({this.imageUrl, this.jobTitleHome});
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: ListView(
          children: [
            Column(
              children: [
                Stack(
                  children: [
                    ClipRRect(
                        borderRadius:
                            BorderRadius.only(bottomLeft: Radius.circular(20),
                            bottomRight: Radius.circular(20)),
                        child: Container(
                          width: double.infinity,
                          height: 270,
                          child: Image.asset(
                            imageUrl,
                            fit: BoxFit.cover,
                          ),
                        )),
                    Padding(
                      padding: const EdgeInsets.only(top: 170.0, left: 24),
                      child: Text(
                        jobTitleHome,
                        style: whiteTextStyle.copyWith(
                            fontSize: 24, fontWeight: FontWeight.w600),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(top: 210, left: 24),
                      child: Text(
                        '12,309 available',
                        style: whiteTextStyle.copyWith(
                            fontSize: 16, fontWeight: FontWeight.w600),
                      ),
                    ),
                  ],
                ),
                Container(
                  padding: EdgeInsets.only(top: 30, left: 24),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Big Companies',
                        style: blackTextStyle.copyWith(
                            fontSize: 16, fontWeight: FontWeight.w400),
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      Column(
                        children: [
                          CustomList(
                            companyName: 'Google',
                            jobtitle: 'Front-End Developer',
                            imageUrl: 'assets/google-icon.png',
                          ),
                          SizedBox(
                            height: 16,
                          ),
                          CustomList(
                            companyName: 'Instagram',
                            jobtitle: 'UI Designer',
                            imageUrl: 'assets/instagram.png',
                          ),
                          SizedBox(
                            height: 16,
                          ),
                          CustomList(
                            companyName: 'Facebook',
                            jobtitle: 'Data Scientist',
                            imageUrl: 'assets/facebook.png',
                          ),
                        ],
                      )
                    ],
                  ),
                ),
                Container(
                  padding: EdgeInsets.only(top: 30, left: 24),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'New StartUps',
                        style: blackTextStyle.copyWith(
                            fontSize: 16, fontWeight: FontWeight.w400),
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      Column(
                        children: [
                          CustomList(
                            companyName: 'Google',
                            jobtitle: 'Front-End Developer',
                            imageUrl: 'assets/google-icon.png',
                          ),
                          SizedBox(
                            height: 16,
                          ),
                          CustomList(
                            companyName: 'Instagram',
                            jobtitle: 'UI Designer',
                            imageUrl: 'assets/instagram.png',
                          ),
                          SizedBox(
                            height: 16,
                          ),
                          CustomList(
                            companyName: 'Facebook',
                            jobtitle: 'Data Scientist',
                            imageUrl: 'assets/facebook.png',
                          ),
                        ],
                      )
                    ],
                  ),
                )
              ],
            ),
          ],
        ),
      ),
    );
  }
}
