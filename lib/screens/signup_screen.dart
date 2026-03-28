import 'package:flutter/material.dart';
//import 'package:food_delivery/screens/home_screen.dart';

class SignupScreen extends StatefulWidget {
  const SignupScreen({super.key});

  @override
  State<SignupScreen> createState() => _SignupScreenState();
}

class _SignupScreenState extends State<SignupScreen> {
  final _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      padding: EdgeInsets.only(
        left: 20,
        right: 20,
        bottom: MediaQuery.of(context).viewInsets.bottom,
      ),

      child: Padding(
        padding: EdgeInsets.all(10),

        child: Form(
          key: _formKey,

          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(height: 5),
              Text(
                'Enter Full Name',
                style: TextStyle(
                  fontSize: 15,
                  fontWeight: FontWeight.w800,
                  color: Colors.grey,
                ),
              ),
              TextFormField(
                obscureText: false,
                validator: (value) {
                  if (value == null ||
                      value.isEmpty ||
                      RegExp(r"^[A-Z][a-z][\s\-']+$").hasMatch(value)) {
                    return 'Enter Full Name';
                  } else {
                    return null;
                  }
                },
              ),

              SizedBox(height: 10),
              Text(
                'Enter Email Address',
                style: TextStyle(
                  fontSize: 15,
                  fontWeight: FontWeight.w800,
                  color: Colors.grey,
                ),
              ),

              TextFormField(
                obscureText: false,

                validator: (value) {
                  if (value == null || value.isEmpty) {
                    return 'Enter Email address';
                  } else {
                    return null;
                  }
                },
              ),

              SizedBox(height: 10),
              Text(
                'Phone Number',
                style: TextStyle(
                  fontSize: 15,
                  fontWeight: FontWeight.w800,
                  color: Colors.grey,
                ),
              ),

              TextFormField(
                obscureText: false,

                validator: (value) {
                  if (value == null || value.isEmpty) {
                    return 'Enter Valid Phome number';
                  } else {
                    return null;
                  }
                },
              ),

              SizedBox(height: 10),

              Text(
                'Create Password',
                style: TextStyle(
                  fontSize: 15,
                  fontWeight: FontWeight.w800,
                  color: Colors.grey,
                ),
              ),

              TextFormField(
                obscureText: true,
                validator: (value) {
                  if (value == null || value.isEmpty) {
                    return 'Enter Password';
                  } else {
                    return null;
                  }
                },
              ),

              SizedBox(height: 10),

              Text(
                'Confirm Password',
                style: TextStyle(
                  fontSize: 15,
                  fontWeight: FontWeight.w800,
                  color: Colors.grey,
                ),
              ),

              TextFormField(
                obscureText: true,
                validator: (value) {
                  if (value == null || value.isEmpty) {
                    return 'Verify Password ';
                  } else {
                    return null;
                  }
                },
              ),

              SizedBox(height: 20),

              SizedBox(
                height: 70,
                width: 350,

                child: Padding(
                  padding: EdgeInsets.only(left: 0, right: 0, bottom: 0),
                  child: ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Color(0xffFA4A0C),
                    ),

                    onPressed: () {
                      if (_formKey.currentState!.validate()) {
                        ScaffoldMessenger.of(context).showSnackBar(
                          SnackBar(content: Text('Succesfully Signed Up ')),
                        );
                      }
                    },

                    child: Text(
                      'Sign Up',
                      style: TextStyle(
                        color: Color(0xffF6F6F9),
                        fontSize: 15,
                        fontWeight: FontWeight.w800,
                      ),
                    ),
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
