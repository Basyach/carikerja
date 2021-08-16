import 'package:carikerja/theme.dart';
import 'package:carikerja/widgets/custom_list.dart';
import 'package:carikerja/widgets/job_card.dart';
import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
 
  @override
  Widget build(BuildContext context) {
    Widget header() {
      return SafeArea(
        child: Container(
          padding: EdgeInsets.only(top: 20, left: 24, right: 24),
          child: Row(
            children: [
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Howdy',
                    style: grayTextStyle.copyWith(fontSize: 16),
                  ),
                  Text(
                    'Basyach Aryodito',
                    style: blackTextStyle.copyWith(
                        fontSize: 24, fontWeight: FontWeight.bold),
                  ),
                ],
              ),
              Spacer(),
              Image.asset(
                'assets/user_pic.png',
                width: 58,
                height: 58,
              )
            ],
          ),
        ),
      );
    }

    Widget body() {
      return Container(
        child: Padding(
          padding: const EdgeInsets.only(left: 24, top: 10),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                'Hot Categories',
                style: blackTextStyle.copyWith(
                    fontSize: 16, fontWeight: FontWeight.w400),
              ),
              SizedBox(
                height: 16,
              ),
              SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Padding(
                  padding: const EdgeInsets.only(left: 24),
                  child: Row(
                    children: [
                      JobCard(
                        text: 'Website Developer',
                        imageUrl: 'assets/card_category.png',
                      ),
                      SizedBox(
                        width: 16,
                      ),
                      JobCard(
                        text: 'Mobile Developer',
                        imageUrl: 'assets/card_category4.png',
                      ),
                      SizedBox(
                        width: 16,
                      ),
                      JobCard(
                        text: 'App Designer',
                        imageUrl: 'assets/card_category5.png',
                      ),
                      SizedBox(
                        width: 16,
                      ),
                      JobCard(
                        text: 'Content Writer',
                        imageUrl: 'assets/card_category5.png',
                      ),
                      SizedBox(
                        width: 16,
                      ),
                      JobCard(
                        text: 'Video Grapher',
                        imageUrl: 'assets/card_category6.png',
                      )
                    ],
                  ),
                ),
              ),
              SizedBox(
                height: 30,
              ),
              Padding(
                padding: const EdgeInsets.only(left: 24),
                child: Text(
                  'just posted',
                  style: blackTextStyle.copyWith(
                      fontSize: 16, fontWeight: FontWeight.w400),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 26, left: 24),
              ),
              CustomList(
                imageUrl: 'assets/google-icon.png',
                jobtitle: 'Front-End Developer',
                companyName: 'google',
              ),
              SizedBox(
                height: 10,
              ),
              CustomList(
                imageUrl: 'assets/facebook.png',
                jobtitle: 'Data Scientist',
                companyName: 'Facebook',
              ),
              SizedBox(
                height: 10,
              ),
              CustomList(
                imageUrl: 'assets/instagram.png',
                jobtitle: 'Ui Designer',
                companyName: 'instagram',
              ),
              SizedBox(
                height: 10,
              ),
            ],
          ),
        ),
      );
    }

    return Scaffold(
      bottomNavigationBar: Container(
        margin: EdgeInsets.only(top:30),
        child: BottomNavigationBar(
          type: BottomNavigationBarType.fixed,
          showSelectedLabels: false,
          unselectedItemColor: Color(0xffB3B5C4),
          selectedItemColor: Color(0xff272C2F),
          currentIndex: 0,
          elevation: 0,
          iconSize: 24,
          items: [
          BottomNavigationBarItem(
              icon: ImageIcon(
            AssetImage('assets/icon_apps_outline.png'),
          ),
          label: '',
          ),
          BottomNavigationBarItem(
              icon: ImageIcon(
            AssetImage('assets/icon_notification_outline.png'),
          ),
          label: '',
          ),
          BottomNavigationBarItem(
              icon: ImageIcon(
            AssetImage('assets/icon_love_outline.png'),
          ),
          label: '',
          ),
          BottomNavigationBarItem(
              icon: ImageIcon(
            AssetImage('assets/iIcon_user_outline.png'),
          ),
          label: '',
          )
        ]),
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [header(), body()],
      ),
    );
  }
}
