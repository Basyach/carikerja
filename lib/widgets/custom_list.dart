import 'package:carikerja/pages/detail_page.dart';
import 'package:flutter/material.dart';

import '../theme.dart';

class CustomList extends StatelessWidget {
  final String jobtitle;
  final String imageUrl;
  final String companyName;

  CustomList({this.companyName, this.imageUrl, this.jobtitle});

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: (){
        Navigator.push(context, MaterialPageRoute(builder: (context)=>DetailPage()));
      },
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Image.asset(
            imageUrl,
            width: 45,
            height: 45,
          ),
          SizedBox(
            width: 15,
          ),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  jobtitle,
                  style: blackTextStyle.copyWith(
                      fontSize: 16, fontWeight: FontWeight.w500),
                ),
                Text(
                  companyName,
                  style: grayTextStyle.copyWith(
                      fontSize: 14, fontWeight: FontWeight.w500),
                ),
                Divider(
                  color: graycolor1,
                  thickness: 1,
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}
