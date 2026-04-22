import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:food_delivery/utilities/done_screen.dart';

//import 'package:food_delivery/screens/home_screen.dart';
//import 'package:food_delivery/screens/bottom _navigation.dart';
import 'package:flutter/services.dart';

class PhoneNumber extends StatefulWidget {
  // Rename class name - phone number
  const PhoneNumber({super.key});

  @override
  State<PhoneNumber> createState() => _PhoneNumberState();
}

class _PhoneNumberState extends State<PhoneNumber> {
  final _formKey = GlobalKey<FormState>();
  final TextEditingController phoneController = TextEditingController();

  bool checkedValue = false;

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      physics: NeverScrollableScrollPhysics(),
      padding: EdgeInsets.only(
        left: 20,
        right: 20,
        bottom: MediaQuery.of(context).viewInsets.bottom,
      ),

      child: Padding(
        padding: EdgeInsets.all(5),

        child: Form(
          key: _formKey,

          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,

            children: [
              SizedBox(height: 20),

              Text(
                'Phone Number',
                style: TextStyle(
                  fontSize: 15,
                  color: Colors.grey,
                  fontWeight: FontWeight.w800,
                ),
              ),
              SizedBox(height: 2),

              TextFormField(
                decoration: InputDecoration(prefixText: "+91"),
                obscureText: false,
                keyboardType: TextInputType.phone,
                controller: phoneController,

                inputFormatters: [
                  FilteringTextInputFormatter.digitsOnly,
                  LengthLimitingTextInputFormatter(10),
                ],
                onChanged: (value) {
                  setState(() {});
                  _formKey.currentState!.validate();
                },

                validator: (value) {
                  if (value?.length == 10 && int.tryParse(value!) != null) {
                    return null;
                  }
                  if (value?.length != 10) {
                    return 'Mobile Number must be of 10 digit';
                  } else {
                    return null;
                  }
                },
              ),

              SizedBox(height: 20),

              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                mainAxisSize: MainAxisSize.max,
                children: [
                  Expanded(
                    child: Row(
                      mainAxisSize: MainAxisSize.max,
                      children: [
                        Checkbox(
                          value: checkedValue,
                          onChanged: (newvalue) {
                            setState(() {
                              checkedValue = newvalue!;
                            });
                          },
                          materialTapTargetSize:
                              MaterialTapTargetSize.shrinkWrap,
                          visualDensity: VisualDensity.compact,
                        ),
                        SizedBox(width: 2),

                        Text(
                          'Remember me',
                          style: TextStyle(
                            fontSize: 15,
                            fontWeight: FontWeight.w800,
                            color: Color(0xff000000),
                          ),
                        ),

                        SizedBox(width: 50),

                        TextButton(
                          onPressed: () {
                            ScaffoldMessenger.of(context).showSnackBar(
                              SnackBar(content: Text('Under Construction')),
                            );
                          },

                          child: Text(
                            'Forgot passcode?',
                            style: TextStyle(
                              fontSize: 15,
                              color: Color(0xffFA4A0C),
                              fontWeight: FontWeight.w800,
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),

              SizedBox(height: 30),

              SizedBox(
                width: double.infinity,
                height: 60,

                child: Padding(
                  padding: EdgeInsets.zero,
                  child: ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Color(0xffFA4A0C),
                    ),
                    onPressed: () async {
                      if (!_formKey.currentState!.validate()) return;
                      print('Botton Clicked');
                      print('phone number : +91${phoneController.text}');

                      try {
                        await FirebaseAuth.instance.verifyPhoneNumber(
                          phoneNumber: "+91${phoneController.text}",

                          verificationCompleted:
                              (PhoneAuthCredential credential) {
                                print('Auto verification completed');
                              },

                          verificationFailed: (FirebaseAuthException ex) {
                            print('Verification Failed');
                          },

                          codeSent: (String verificationId, int? resendToken) {
                            print('Code has bee sent');
                            Navigator.of(context).push(
                              MaterialPageRoute(
                                builder: (context) {
                                  return DoneScreen(
                                    verificationId: verificationId,
                                  );
                                },
                              ),
                            );

                            // catch (e) {
                            //   ScaffoldMessenger.of(context).showSnackBar(
                            //     SnackBar(content: Text('Invalid OTP')),
                            //   );
                            // }
                          },

                          codeAutoRetrievalTimeout: (String verificationId) {
                            print('Time out send again');
                          },
                        );
                      } catch (e) {
                        ScaffoldMessenger.of(context).showSnackBar(
                          SnackBar(content: Text("Something went wrong")),
                        );
                      }
                    },

                    child: Text(
                      'Send Verification Code',

                      style: TextStyle(
                        color: Color(0xffF6F6F9),
                        fontSize: 15,
                        fontWeight: FontWeight.w800,
                      ),
                    ),
                  ),
                ),
              ),

              SizedBox(height: 2),
              Center(
                child: Text(
                  "Don't have an account yet ?     Sign up",
                  style: TextStyle(
                    fontSize: 14,
                    fontWeight: FontWeight.w400,
                    color: Colors.grey,
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
