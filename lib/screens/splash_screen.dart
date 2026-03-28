import 'package:flutter/material.dart';
import 'package:food_delivery/pages/login_page.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    Future.delayed(const Duration(seconds: 3), () {
      if (!mounted) return;
      Navigator.push(
        context,
        MaterialPageRoute<void>(builder: (context) => const LoginPage()),
      );
    });
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Scaffold(
          backgroundColor: Color(0xFFFF4B3A),
          body: SizedBox(
            height: MediaQuery.of(context).size.height,
            width: MediaQuery.of(context).size.width,
            child: Image.asset(
              "assets/images/splash_screen.png",
              fit: BoxFit.fill,
            ),
          ),
        ),
        Positioned(
          bottom: 20,
          left: 30,
          right: 30,

          child: Center(
            child: SizedBox(
              height: 70,
              width: 314,
              child: Padding(
                padding: const EdgeInsets.only(bottom: 20),
                child: ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.white,
                  ),

                  onPressed: () {},

                  child: Text(
                    'Get Started',
                    style: TextStyle(
                      color: Color(0xffFF460A),
                      fontSize: 15,
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                ),
              ),
            ),
          ),
        ),
      ],
    );
  }
}
