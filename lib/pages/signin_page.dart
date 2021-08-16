import 'package:carikerja/pages/signup_page.dart';
import 'package:carikerja/theme.dart';
import 'package:flutter/material.dart';
import 'package:email_validator/email_validator.dart';

class SigninPage extends StatefulWidget {
  @override
  _SigninPageState createState() => _SigninPageState();
}

class _SigninPageState extends State<SigninPage> {
  bool isEmailValid = true;

  TextEditingController emailController = TextEditingController(text:'');
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: Padding(
          padding: const EdgeInsets.only(top: 40, left: 24, right: 24),
          child: ListView(
            children: [
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Sign In',
                    style: grayTextStyle.copyWith(fontSize: 18),
                  ),
                  SizedBox(
                    height: 15,
                  ),
                  Text(
                    'Build Your Career',
                    style: blackTextStyle.copyWith(
                        fontWeight: FontWeight.w600, fontSize: 24),
                  ),
                  Center(
                    child: Column(
                      children: [
                        Image.asset(
                          'assets/ilustrasi.png',
                          width: 260,
                          height: 250,
                        ),
                      ],
                    ),
                  ),
                  SizedBox(
                    height: 30,
                  ),
                  SingleChildScrollView(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'Email address',
                          style: grayTextStyle.copyWith(fontSize: 16),
                        ),
                        SizedBox(
                          height: 8,
                        ),
                        TextFormField(
                          controller: emailController,
                          onChanged: (value){
                            print(value);
                            bool isValid =EmailValidator.validate(value);
                            print(isValid);
                            if(isValid){
                              setState(() {
                                isEmailValid = true;
                                                          
                                                        });
                            }
                            else{
                              setState(() {
                                isEmailValid=false  ;                                  
                                                        });
                            }
                          },
                          decoration: InputDecoration(
                            fillColor: graycolor3,
                            filled: true,
                            enabledBorder: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(100),
                              borderSide: BorderSide(color:isEmailValid ? Color(0xff4141A4)
                              : Color(0xffFD4F56) ),
                            ),
                            focusedBorder: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(100),
                              borderSide: BorderSide.none,
                            ),
                            hintText: '',
                          ),
                          style: TextStyle(color: isEmailValid ? 
                           Color(0xff4141A4)
                              : Color(0xffFD4F56) ),
                        ),
                      ],
                    ),
                  ),
                  SizedBox(height: 20),
                  SingleChildScrollView(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'Password',
                          style: grayTextStyle.copyWith(fontSize: 16),
                        ),
                        SizedBox(
                          height: 8,
                        ),
                        TextFormField(
                          obscureText: true,
                          decoration: InputDecoration(
                            fillColor: graycolor3,
                            filled: true,
                            enabledBorder: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(100),
                              borderSide: BorderSide.none,
                            ),
                            focusedBorder: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(100),
                              borderSide: BorderSide(color:  Color(0xff4141A4)),
                            ),
                            hintText: '',
                          ),
                        ),
                      ],
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
                          onPressed: () {},
                          child: Text(
                            'SignIn',
                            style: whiteTextStyle,
                          ))),
                          SizedBox(height: 8,),
                  Center(
                      child: InkWell(
                        onTap: (){
                          Navigator.push(context, MaterialPageRoute(builder: (context)=>SignUpPage()));
                        },
                        child: Text(
                    'create new account',
                    style: grayTextStyle.copyWith(
                          fontWeight: FontWeight.w300, fontSize: 14),
                  ),
                      ))
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
