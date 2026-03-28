import 'package:flutter/material.dart';
import 'package:food_delivery/screens/bottom%20_navigation.dart';
//import 'package:food_delivery/screens/home_screen.dart';
//import 'package:food_delivery/screens/bottom _navigation.dart';
import 'package:food_delivery/utilities/verification_otp.dart';

class PhoneNumber extends StatefulWidget {
  // Rename class name - phone number
  const PhoneNumber({super.key});

  @override
  State<PhoneNumber> createState() => _PhoneNumberState();
}

class _PhoneNumberState extends State<PhoneNumber> {
  final _formKey = GlobalKey<FormState>();

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
                ' Phone Number ',
                style: TextStyle(
                  fontSize: 15,
                  color: Colors.grey,
                  fontWeight: FontWeight.w800,
                ),
              ),
              SizedBox(height: 2),

              TextFormField(
                decoration: InputDecoration(),
                obscureText: false,
                onChanged: (value) {
                  setState(() {});
                  _formKey.currentState!.validate();
                },

                validator: (value) {
                  if (value == null || value.isEmpty) {
                    return 'Enter email';
                  }
                  if (value.length == 10 && int.tryParse(value) != null) {
                    return null;
                  }

                  if (!value.contains('@gmail.com')) {
                    return 'Enter valid email address';
                  }

                  if (!value.endsWith('@gmail.com')) {
                    return 'Invalid email address';
                  } else {
                    return null;
                  }
                },
              ),

              // SizedBox(height: 20),

              // Text(
              //   'Password',
              //   style: TextStyle(
              //     fontSize: 15,
              //     color: Colors.grey,
              //     fontWeight: FontWeight.w800,
              //   ),
              // ),

              // SizedBox(height: 2),

              // TextFormField(
              //   onChanged: (value) {},
              //   obscureText: true,
              //   validator: (value) {
              //     if (value == null || value.isEmpty) {
              //       return 'Enter Password';
              //     }

              //     if (value.length < 8) {
              //       return 'Password must have atleast 8 characters';
              //     } else {
              //       return null;
              //     }
              //   },
              // ),
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
                      final otp = await showOtpDialouge(context);

                      if (otp != null && otp.length == 6) {
                        Navigator.pushReplacement(
                          context,
                          MaterialPageRoute(
                            builder: (context) => BottomNavigation(),
                          ),
                        );
                      }
                    },

                    // {

                    //   if (_formKey.currentState!.validate()) {
                    //     Navigator.pushReplacement(
                    //       context,
                    //       MaterialPageRoute<void>(
                    //         builder: (context) => const BottomNavigation(),
                    //       ),
                    //     );
                    //     // ScaffoldMessenger.of(
                    //     //   context,
                    //     // ).showSnackBar(SnackBar(content: Text('Login Successful')));
                    //   }
                    // },
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
