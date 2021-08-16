import 'package:carikerja/pages/second_homepage.dart';
import 'package:flutter/material.dart';

import '../theme.dart';

class JobCard extends StatelessWidget {
  final String text;
  final String imageUrl;
  JobCard({this.imageUrl, this.text});

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        Navigator.push(
            context, MaterialPageRoute(builder: (context) => SecondHomePage(jobTitleHome: text,imageUrl: imageUrl,)));
      },
      child: Container(
          height: 200,
          width: 150,
          child: Align(
            alignment: Alignment.bottomLeft,
            child: Padding(
              padding: const EdgeInsets.only(
                  top: 15, left: 10, bottom: 15, right: 10),
              child: Text(
                text,
                style: whiteTextStyle.copyWith(
                    fontSize: 18, fontWeight: FontWeight.w500),
              ),
            ),
          ),
          decoration: BoxDecoration(
              image: DecorationImage(image: AssetImage(imageUrl)))),
    );
  }
}
