import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:food_delivery/screens/drawer_screen.dart';

// ignore: must_be_immutable
class DoneScreen extends StatefulWidget {
  String verificationId;
  DoneScreen({super.key, required this.verificationId});

  @override
  State<DoneScreen> createState() => _DoneScreenState();
}

class _DoneScreenState extends State<DoneScreen> {
  TextEditingController otpController = TextEditingController();
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
          ElevatedButton(
            onPressed: () async {
              verifyPhoneNumber(context, "8111019170");
              // try {
              //   PhoneAuthCredential credential = PhoneAuthProvider.credential(
              //     verificationId: widget.verificationId,
              //     smsCode: otpController.text.toString(),
              //   );
              //   await FirebaseAuth.instance
              //       .signInWithCredential(credential)
              //       .then((value) {
              //         Navigator.of(context).push(
              //           MaterialPageRoute(
              //             builder: (context) {
              //               return DrawerScreen();
              //             },
              //           ),
              //         );
              //       });
              // } catch (ex) {
              //   print(ex.toString());
              //   ScaffoldMessenger.of(
              //     context,
              //   ).showSnackBar(SnackBar(content: Text("Invalid OTP")));
              // }
            },

            child: Text('Verify'),
          ),
        ],
      ),
    );
  }

  static void verifyPhoneNumber(BuildContext context, String number) async {
    String verId = "";
    final FirebaseAuth _firebaseAuth = FirebaseAuth.instance;
    await _firebaseAuth.verifyPhoneNumber(
      phoneNumber: '+91 $number',
      verificationCompleted: (PhoneAuthCredential credential) {
        signInWithPhoneNumber(
          context,
          credential.verificationId!,
          credential.smsCode!,
          _firebaseAuth,
        );
      },
      verificationFailed: (FirebaseAuthException e) {
        if (e.code == 'invalid-phone-number') {
          print('The provided phone number is not valid.');
        }
      },
      codeSent: (String verificationId, int? resendToken) {
        verId = verificationId;
        print("verficationId $verId");
        // Navigator.push(context, MaterialPageRoute(builder: (ctx){
        //   return const OtpScreen();
        // }));
        print("code sent");
      },
      codeAutoRetrievalTimeout: (String verificationId) {},
    );
  }

  static Future<void> signInWithPhoneNumber(
    BuildContext context,
    String verificationId,
    String smsCode,
    FirebaseAuth _firebaseAuth,
  ) async {
    try {
      final AuthCredential credential = PhoneAuthProvider.credential(
        verificationId: verificationId,
        smsCode: smsCode,
      );
      final UserCredential userCredential = await _firebaseAuth
          .signInWithCredential(credential);
      print(userCredential.user!.phoneNumber);
      print("Login successful");
      // TODO: Navigate to home page
      // Navigator.push(
      //   context,
      //   MaterialPageRoute(
      //     builder: (context) {
      //       return const HomePage();
      //     },
      //   ),
      // );
    } catch (e) {
      print('Error signing in with phone number: $e');
    }
  }
}
