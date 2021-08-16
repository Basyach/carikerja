

import 'package:carikerja/theme.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class DetailPage extends StatefulWidget {
  @override
  _DetailPageState createState() => _DetailPageState();
}

class _DetailPageState extends State<DetailPage> {
  bool isApplied = false;
  @override
  Widget build(BuildContext context) {
    Widget applyButton() {
      return Padding(
        padding: const EdgeInsets.only(top: 51.0, left: 80),
        child: Container(
            width: 200,
            height: 45,
            child: TextButton(
                style: TextButton.styleFrom(
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(65),
                    ),
                    backgroundColor: purplecolor),
                onPressed: () {
                  setState(() {
                    isApplied = !isApplied;
                  });
                },
                child: Text(
                  'Apply for Job',
                  style: whiteTextStyle.copyWith(
                      fontSize: 14, fontWeight: FontWeight.w500),
                ))),
      );
    }

    Widget cancelapplyButton() {
      return Padding(
        padding: const EdgeInsets.only(top: 51.0, left: 80),
        child: Container(
            width: 200,
            height: 45,
            child: TextButton(
                style: TextButton.styleFrom(
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(65),
                    ),
                    backgroundColor: Color(0xffFD4F56)),
                onPressed: () {
                  setState(() {
                    isApplied = !isApplied;
                  });
                },
                child: Text(
                  ' Cancel Apply ',
                  style: whiteTextStyle.copyWith(
                      fontSize: 14, fontWeight: FontWeight.w500),
                ))),
      );
    }

    Widget succsesappliedmassages() {
      return Container(
        padding: EdgeInsets.fromLTRB(50, 5,50, 5),
        decoration: BoxDecoration(
            color: Color(0xffECEDF1),
            borderRadius: BorderRadius.all(Radius.circular(20))),
        child: Text(
          'You have applied this job and the\nrecruiter will contact you',
          textAlign: TextAlign.center,
          style: GoogleFonts.poppins(
              color: Color(0xffA2A6B4),
              fontSize: 14,
              fontWeight: FontWeight.w400),
        ),
      );
    }

    return Scaffold(
      body: Center(
        child: SingleChildScrollView(
          child: Column(
            children: [
              SizedBox(
                height: 80,
              ),
              isApplied ? succsesappliedmassages() : SizedBox(),
              Image.asset(
                'assets/google-icon.png',
                width: 60,
                height: 60,
              ),
              SizedBox(
                height: 5,
              ),
              Text(
                'Frond-End Developer',
                style: blackTextStyle.copyWith(
                    fontSize: 20, fontWeight: FontWeight.w600),
              ),
              SizedBox(
                height: 8,
              ),
              Text(
                'Google, Inc • Jakarta',
                style: grayTextStyle.copyWith(
                    fontSize: 14, fontWeight: FontWeight.w400),
              ),
              SizedBox(
                height: 30,
              ),
              Padding(
                  padding: const EdgeInsets.only(left: 24.0),
                  child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'About The Job',
                          style: blackTextStyle.copyWith(
                              fontSize: 14, fontWeight: FontWeight.w500),
                        ),
                        SizedBox(
                          height: 16,
                        ),
                        Column(
                          children: [
                            Row(
                              children: [
                                Image.asset(
                                  'assets/dot.png',
                                  width: 12,
                                  height: 12,
                                ),
                                SizedBox(
                                  width: 8,
                                ),
                                Text(
                                  'Full-Time On Site',
                                  style: blackTextStyle.copyWith(fontSize: 14),
                                )
                              ],
                            ),
                            SizedBox(
                              height: 16,
                            ),
                            Row(
                              children: [
                                Image.asset(
                                  'assets/dot.png',
                                  width: 12,
                                  height: 12,
                                ),
                                SizedBox(
                                  width: 8,
                                ),
                                Text(
                                  'Start at \$ 18,000 per month',
                                  style: blackTextStyle.copyWith(fontSize: 14),
                                ),
                              ],
                            )
                          ],
                        ),
                        SizedBox(
                          height: 30,
                        ),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              'Qualifications',
                              style: blackTextStyle.copyWith(
                                  fontSize: 14, fontWeight: FontWeight.w500),
                            ),
                            SizedBox(
                              height: 16,
                            ),
                            Column(
                              children: [
                                Row(
                                  children: [
                                    Image.asset(
                                      'assets/dot.png',
                                      width: 12,
                                      height: 12,
                                    ),
                                    SizedBox(
                                      width: 8,
                                    ),
                                    Text(
                                      'Candidate must possess at least a\n Bachelor\'s Degree.',
                                      style:
                                          blackTextStyle.copyWith(fontSize: 14),
                                    )
                                  ],
                                ),
                                SizedBox(
                                  height: 16,
                                ),
                                Row(
                                  children: [
                                    Image.asset(
                                      'assets/dot.png',
                                      width: 12,
                                      height: 12,
                                    ),
                                    SizedBox(
                                      width: 8,
                                    ),
                                    Text(
                                      'Able to use Microsoft Office and Google \nbased service.',
                                      style:
                                          blackTextStyle.copyWith(fontSize: 14),
                                    ),
                                  ],
                                ),
                                SizedBox(
                                  height: 16,
                                ),
                                Row(
                                  children: [
                                    Image.asset(
                                      'assets/dot.png',
                                      width: 12,
                                      height: 12,
                                    ),
                                    SizedBox(
                                      width: 8,
                                    ),
                                    Text(
                                      'Have an excellent time management,\n good at organized and details',
                                      style:
                                          blackTextStyle.copyWith(fontSize: 14),
                                    ),
                                  ],
                                )
                              ],
                            ),
                            SizedBox(
                              height: 30,
                            ),
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  'Responsibilities',
                                  style: blackTextStyle.copyWith(
                                      fontSize: 14,
                                      fontWeight: FontWeight.w500),
                                ),
                                SizedBox(
                                  height: 16,
                                ),
                                Column(
                                  children: [
                                    Row(
                                      children: [
                                        Image.asset(
                                          'assets/dot.png',
                                          width: 12,
                                          height: 12,
                                        ),
                                        SizedBox(
                                          width: 8,
                                        ),
                                        Text(
                                          'Initiate and promote any programs,\nevents, training, or activities.',
                                          style: blackTextStyle.copyWith(
                                              fontSize: 14),
                                        )
                                      ],
                                    ),
                                    SizedBox(
                                      height: 16,
                                    ),
                                    Row(
                                      children: [
                                        Image.asset(
                                          'assets/dot.png',
                                          width: 12,
                                          height: 12,
                                        ),
                                        SizedBox(
                                          width: 8,
                                        ),
                                        Text(
                                          'Assessing and anticipating needs and \ncollaborate with Division.',
                                          style: blackTextStyle.copyWith(
                                              fontSize: 14),
                                        ),
                                      ],
                                    ),
                                  ],
                                ),
                                isApplied ? cancelapplyButton() : applyButton(),
                                Padding(
                                  padding: const EdgeInsets.only(
                                      left: 120.0, top: 20),
                                  child: Row(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.center,
                                    children: [
                                      Text(
                                        'Message Recruiter',
                                        style: grayTextStyle.copyWith(
                                            fontSize: 14),
                                      ),
                                    ],
                                  ),
                                )
                              ],
                            ),
                          ],
                        ),
                      ]))
            ],
          ),
        ),
      ),
    );
  }
}
