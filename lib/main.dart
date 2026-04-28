import 'package:flutter/material.dart';

import 'package:food_delivery/pages/product_details.dart';
//import 'package:food_delivery/pages/login_page.dart';
//import 'package:food_delivery/screens/login_screen.dart';
//import 'package:food_delivery/screens/signup_screen.dart';
//import 'package:food_delivery/screens/home_screen.dart';
//import 'package:food_delivery/screens/home_screen.dart';
//import 'package:food_delivery/pages/login_page.dart';
//import 'package:food_delivery/pages/login_page.dart';
//import 'package:food_delivery/screens/history.dart';
//import 'screens/bottom _navigation.dart';
//import 'package:food_delivery/screens/splash_screen.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:food_delivery/screens/splash_screen.dart';
import 'package:food_delivery/utilities/done_screen.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: SplashScreen(),
      //   body: Center(
      //     child: CircleAvatar(
      //       radius: 100,
      //       backgroundImage: AssetImage('assets/images/food_1.png'),
      //     ),
      //   ),

      // ),
    );
  }
}
