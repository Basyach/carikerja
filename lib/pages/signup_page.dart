import 'package:carikerja/theme.dart';
import 'package:flutter/material.dart';
import 'package:email_validator/email_validator.dart';

import 'home_page.dart';

class SignUpPage extends StatefulWidget {
  @override
  _SignUpPageState createState() => _SignUpPageState();
}

class _SignUpPageState extends State<SignUpPage> {
  bool isEmailValid = true;
 

  TextEditingController emailController = TextEditingController(text: '');
  
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: Padding(
          padding: const EdgeInsets.only(top: 80, left: 24, right: 24),
          child: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'Sign Up',
                  style: grayTextStyle,
                ),
                SizedBox(
                  height: 15,
                ),
                Text(
                  'Begin New Journey',
                  style: blackTextStyle.copyWith(
                      fontWeight: FontWeight.w600, fontSize: 24),
                ),
                Center(
                  child: Column(
                    children: [
                      Image.asset(
                        'assets/user_pic.png',
                        height: 140,
                        width: 160,
                      ),
                    ],
                  ),
                ),
                SizedBox(height: 8),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'full Name',
                      style: grayTextStyle.copyWith(fontSize: 16),
                    ),
                    SizedBox(height: 8),
                    TextFormField(
                      decoration: InputDecoration(
                          fillColor: Color(0xffF1F0F5),
                          filled: true,
                          enabledBorder: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(100),
                              borderSide: BorderSide.none),
                          focusedBorder: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(100),
                              borderSide: BorderSide(color:  Color(0xff4141A4))
                              ),
                              hintText: ''
                              ),
                    ),
                  ],
                ),
                SizedBox(height: 8),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Email Address',
                      style: grayTextStyle.copyWith(fontSize: 16),
                    ),
                    SizedBox(height: 8),
                    TextFormField(
                      controller: emailController,
                      onChanged: (value) {
                        print(value);
                        bool isValid = EmailValidator.validate(value);
                        print(isValid);
                        if (isValid) {
                          setState(() {
                            isEmailValid = true;
                          });
                        } else {
                          setState(() {
                            isEmailValid = false;
                          });
                        }
                      },
                      decoration: InputDecoration(
                          fillColor: Color(0xffF1F0F5),
                          filled: true,
                          enabledBorder: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(100),
                              borderSide: BorderSide(
                                  color: isEmailValid
                                      ? Color(0xff4141A4)
                                      : Color(0xffFD4F56))),
                          focusedBorder: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(100),
                              borderSide: BorderSide.none),
                              hintText: '',
                              ),
                              style: TextStyle(color: isEmailValid ? 
                           Color(0xff4141A4)
                              : Color(0xffFD4F56) ),
                    ),
                  ],
                ),
                SizedBox(height: 8),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'password',
                      style: grayTextStyle.copyWith(fontSize: 16),
                    ),
                    SizedBox(height: 8),
                    TextFormField(
                      decoration: InputDecoration(
                          fillColor: Color(0xffF1F0F5),
                          filled: true,
                          enabledBorder: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(100),
                              borderSide: BorderSide.none),
                          focusedBorder: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(100),
                              borderSide: BorderSide(color:  Color(0xff4141A4)
                              ),
                              
                              ),
                               hintText: '',
                    ),
                    ),
                  ],
                ),
                SizedBox(height: 8),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'your Goal',
                      style: grayTextStyle.copyWith(fontSize: 16),
                    ),
                    SizedBox(height: 8),
                    TextFormField(
                      decoration: InputDecoration(
                          fillColor: Color(0xffF1F0F5),
                          filled: true,
                          enabledBorder: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(100),
                              borderSide: BorderSide.none),
                          focusedBorder: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(100),
                              borderSide: BorderSide(color:  Color(0xff4141A4))
                              ),
                              hintText: ''
                              ),
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    Container(
                        width: 400,
                        height: 55,
                        child: TextButton(
                            style: TextButton.styleFrom(
                              backgroundColor: purplecolor,
                              shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(65)),
                            ),
                            onPressed: () {
                               Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => HomePage()));
                            },
                            child: Text(
                              'SignUp',
                              style: whiteTextStyle,
                            ))),
                    SizedBox(
                      height: 8,
                    ),
                    Center(
                        child: Padding(
                      padding: const EdgeInsets.only(bottom: 50),
                      child: InkWell(
                        onTap: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => SignUpPage()));
                        },
                        child: Text(
                          'Back To sign In',
                          style: grayTextStyle.copyWith(
                              fontWeight: FontWeight.w300, fontSize: 14),
                        ),
                      ),
                    ))
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
