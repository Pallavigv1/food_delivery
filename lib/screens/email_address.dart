import 'dart:convert';

//import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:food_delivery/json/auth/usecases/send_Otp.dart';
import 'package:food_delivery/screens/email_done_screen.dart';
//import 'package:food_delivery/screens/home_screen.dart';
//import 'package:food_delivery/screens/bottom _navigation.dart';
// ignore: unused_import
import 'package:food_delivery/utilities/verification_otp.dart';
import 'package:flutter/services.dart';

class EmailAddress extends StatefulWidget {
  const EmailAddress({super.key});

  @override
  State<EmailAddress> createState() => _EmailAddressState();
}

class _EmailAddressState extends State<EmailAddress> {
  //final user = FirebaseAuth.instance.currentUser;
  final _formKey = GlobalKey<FormState>();
  List<Map<String, dynamic>>? jsonData;
  Future<void> loadJsonAsset() async {
    final String jsonString = await rootBundle.loadString(
      'assets/json/login.json',
    );
    var data = jsonDecode(jsonString);
    setState(() {
      jsonData = data;
    });
    print(jsonData![0]['message']);
  }

  @override
  void initState() {
    super.initState();
    loadJsonAsset();
  }

  bool checkedValue = false;

  // signout() async {
  //   await FirebaseAuth.instance.signOut();
  // }

  TextEditingController email = TextEditingController();
  TextEditingController password = TextEditingController();

  // Future<void> SignIn() async {
  //   await FirebaseAuth.instance.signInWithEmailAndPassword(
  //     email: email.text,
  //     password: password.text,
  //   );
  // }

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
                ' Email Address',
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
                    onPressed: () {
                      if (_formKey.currentState!.validate()) ;
                      Navigator.of(context).push(
                        MaterialPageRoute(
                          builder: (context) {
                            return EmailDoneScreen();
                          },
                        ),
                      );
                    },

                    child: Text(
                      ' Send Verification Code',

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
