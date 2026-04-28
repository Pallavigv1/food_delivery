import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:food_delivery/screens/drawer_screen.dart';

class EmailDoneScreen extends StatefulWidget {
  const EmailDoneScreen({super.key});

  @override
  State<EmailDoneScreen> createState() => _EmailDoneScreenState();
}

class _EmailDoneScreenState extends State<EmailDoneScreen> {
  TextEditingController otpController = TextEditingController();
  List<Map<String, dynamic>>? jsonData;
  String? otp;

  @override
  void initState() {
    super.initState();
    loadJson();
  }

  Future<void> loadJson() async {
    final String jsonString = await rootBundle.loadString(
      'assets/json/login.json',
    );
    final List<Map<String, dynamic>>? data = jsonDecode(jsonString);

    setState(() {
      jsonData = data;
      otp = data![0]['data']['otp'];
    });
  }

  void verifyOtp() {
    if (otpController.text.trim() == '123456') {
      Navigator.of(context).pushReplacement(
        MaterialPageRoute(
          builder: (context) {
            return DrawerScreen();
          },
        ),
      );
    } else {
      ScaffoldMessenger.of(
        context,
      ).showSnackBar(SnackBar(content: Text('Invalid OTP')));
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 25),
            child: TextField(
              controller: otpController,
              keyboardType: TextInputType.phone,
              decoration: InputDecoration(
                hintText: 'Enter Otp',
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(25),
                ),
              ),
            ),
          ),
          SizedBox(height: 30),
          ElevatedButton(onPressed: verifyOtp, child: const Text('Verify')),
        ],
      ),
    );
  }
}
