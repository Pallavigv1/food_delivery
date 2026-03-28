import 'package:flutter/material.dart';
import 'package:food_delivery/screens/login_screen.dart';
import 'package:food_delivery/screens/phone_number.dart';
//import 'package:food_delivery/screens/signup_screen.dart';
//import 'package:food_delivery/screens/bottom _navigation.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 2,
      child: SafeArea(
        child: Scaffold(
          backgroundColor: Color(0xffF2F2F2),
          resizeToAvoidBottomInset: true,
          body: SingleChildScrollView(
            child: SizedBox(
              height: MediaQuery.of(context).size.height,
              child: Column(
                children: [
                  Container(
                    width: double.infinity,
                    padding: EdgeInsets.only(top: 80, bottom: 20),

                    decoration: BoxDecoration(
                      color: Color(0xffFFFFFF),
                      borderRadius: BorderRadiusGeometry.only(
                        bottomLeft: Radius.circular(30),
                        bottomRight: Radius.circular(30),
                      ),
                    ),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,

                      children: [
                        SizedBox(height: 80),
                        Image.asset(
                          'assets/images/Group 3.png',
                          width: 150,
                          height: 162.38,
                        ),

                        SizedBox(height: 30),

                        TabBar(
                          indicatorColor: Color(0xffFA4A0C),
                          indicatorWeight: 5,
                          dividerColor: Colors.transparent,
                          indicator: UnderlineTabIndicator(
                            borderSide: BorderSide(
                              width: 5.0,
                              color: Color(0xffFA4A0C),
                            ),
                            insets: EdgeInsetsGeometry.symmetric(
                              horizontal: 50.0,
                            ),
                          ),

                          labelColor: Color(0xff000000),
                          labelStyle: TextStyle(
                            fontSize: 14,
                            fontWeight: FontWeight.w600,
                          ),

                          tabs: [
                            Tab(text: 'Phone number'),
                            Tab(text: 'Email'),
                          ],
                        ),
                      ],
                    ),
                  ),
                  Expanded(
                    child: TabBarView(
                      children: [
                        EmailAddress() /*SignupScreen()*/,
                        PhoneNumber(),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
