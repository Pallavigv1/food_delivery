import 'dart:async';
import 'dart:developer';
import 'dart:io';

import 'package:flutter/material.dart';
import 'package:food_delivery/pages/faq_page.dart';
import 'package:food_delivery/pages/no_wifi.dart';

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
import 'package:connectivity_plus/connectivity_plus.dart';
import 'package:food_delivery/utilities/internet_sensitive_wrappper.dart';
import 'package:shared_preferences/shared_preferences.dart';

// void async {
//   WidgetsFlutterBinding.ensureInitialized();
//   await Firebase.initializeApp();
//   runApp(MyApp());
// }
Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();

  // final prefs = await SharedPreferences.getInstance();
  // final isLoggedIn = prefs.getBool("is_logged_in") ?? false;
  await Firebase.initializeApp();
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  // @override
  // void initState() {
  //   initConnection();
  //   _connectivitySubscription = Connectivity().onConnectivityChanged.listen(
  //     _isInternetAvailable,
  //   );
  //   super.initState();
  // }

  // bool _isInternetConnected = true;

  // late StreamSubscription<List<ConnectivityResult>> _connectivitySubscription;

  // Future<void> initConnection() async {
  //   List<ConnectivityResult> results;

  //   try {
  //     results = await Connectivity().checkConnectivity();
  //   } catch (e) {
  //     log("Couldn't check Connectivity Status : $e");

  //     results = [ConnectivityResult.none];
  //   }
  //   return _isInternetAvailable(results);
  // }

  // Future<void> _isInternetAvailable(List<ConnectivityResult> results) async {
  //   bool hasNetwork =
  //       results.contains(ConnectivityResult.mobile) ||
  //       results.contains(ConnectivityResult.wifi);

  //   if (!hasNetwork) {
  //     setState(() {
  //       _isInternetConnected = false;
  //       return;
  //     });
  //   }
  // }

  // void _retryConnection() {
  //   initConnection();
  // }

  // void dispose() {
  //   _connectivitySubscription.cancel();
  //   super.dispose();
  // }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,

      home: InternetSensitiveWrappper(child: NavigateScreens()),

      // body: StreamBuilder<List<ConnectivityResult>>(
      //   stream: Connectivity().onConnectivityChanged,

      //   builder: (context, snapshot) {
      //     if (!snapshot.hasData) {
      //       return NoWifi(onRetry: () {});
      //     }
      //     final hasInternet =
      //         snapshot.data?.contains(ConnectivityResult.mobile) == true ||
      //         snapshot.data?.contains(ConnectivityResult.wifi) == true;

      //     return hasInternet ? SplashScreen() : NoWifi(onRetry: () {}
    );
  }
}

class NavigateScreens extends StatelessWidget {
  const NavigateScreens({super.key});

  @override
  Widget build(BuildContext context) {
    return Navigator(
      onGenerateRoute: (settings) {
        return MaterialPageRoute(
          builder: (context) {
            return SplashScreen();
          },
        );
      },
    );
  }
}
