import 'package:flutter/material.dart';

class GmailOtp extends StatefulWidget {
  const GmailOtp({super.key});

  @override
  State<GmailOtp> createState() => _GmailOtpState();
}

class _GmailOtpState extends State<GmailOtp> {
  TextEditingController verifcodeController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 25),
            child: TextField(
              controller: verifcodeController,
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
          ElevatedButton(onPressed: () async {}, child: Text('Verify')),
        ],
      ),
    );
  }
}
