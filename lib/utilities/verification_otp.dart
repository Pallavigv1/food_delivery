import 'package:flutter/material.dart';

Future<String?> showOtpDialouge(BuildContext context) {
  TextEditingController otpController = TextEditingController();
  return showDialog<String>(
    barrierDismissible: false,
    context: context,

    builder: (context) {
      return AlertDialog(
        title: Text('Enter Code'),

        content: TextField(
          controller: otpController,
          keyboardType: TextInputType.number,
          maxLength: 6,
          decoration: InputDecoration(
            hintText: '6-digit code',
            hintStyle: TextStyle(
              color: Colors.grey,
              fontSize: 12,
              fontWeight: FontWeight.w400,
            ),
            counterText: '',
          ),
        ),

        actions: [
          TextButton(
            onPressed: () {
              Navigator.pop(context);
            },

            child: Text('Cancel'),
          ),
          TextButton(
            onPressed: () {
              if (otpController.text.length == 6) {
                Navigator.pop(context, otpController.text);
              }
            },
            child: Text('Submit'),
          ),
        ],
      );
    },
  );
}
