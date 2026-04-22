import 'package:flutter/material.dart';

class MyProfile extends StatefulWidget {
  const MyProfile({super.key});

  @override
  State<MyProfile> createState() => _MyProfileState();
}

class _MyProfileState extends State<MyProfile> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Padding(
        padding: const EdgeInsets.all(16),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          //crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            SizedBox(height: 20),

            Padding(
              padding: const EdgeInsets.only(left: 30),
              child: Align(
                alignment: Alignment.centerLeft,

                child: Text(
                  'Information',
                  style: TextStyle(
                    color: Color(0xff000000),
                    fontSize: 17,
                    fontWeight: FontWeight.w600,
                  ),
                ),
              ),
            ),
            SizedBox(height: 2),

            Container(
              width: 315,
              height: 133,
              decoration: BoxDecoration(
                color: Color(0xffFFFFFF),
                borderRadius: BorderRadius.circular(20),
              ),
              child: Stack(
                children: [
                  Positioned(
                    top: 20,
                    left: 16,
                    bottom: 53,
                    right: 230,

                    child: Container(
                      width: 60,
                      height: 60,
                      decoration: BoxDecoration(
                        color: Color(0xffC4C4C4),
                        borderRadius: BorderRadius.circular(10),
                      ),
                      child: Image.asset(
                        'assets/icons/ic_profile.png',
                        fit: BoxFit.fill,
                      ),
                    ),
                  ),

                  Positioned(
                    top: 20,
                    bottom: 92,
                    right: 78,
                    left: 99,

                    child: Text(
                      'Marvis Ighedosa',
                      style: TextStyle(fontSize: 16),
                    ),
                  ),

                  Positioned(
                    top: 50,
                    bottom: 67,
                    right: 79,
                    left: 99,

                    child: Text(
                      'dosamarvis@gmail.com',
                      style: TextStyle(fontSize: 12),
                    ),
                  ),

                  Positioned(
                    top: 75,
                    bottom: 26,
                    right: 33,
                    left: 99,

                    child: Text(
                      'No 15 uti street off ovie palace road effurun delta state',
                      style: TextStyle(fontSize: 12),
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(height: 40),

            Align(
              alignment: Alignment.centerLeft,
              child: Padding(
                padding: const EdgeInsets.only(left: 35),
                child: Text(
                  'Payment Method',
                  style: TextStyle(
                    fontSize: 17,
                    fontWeight: FontWeight(600),
                    color: Color(0xff000000),
                  ),
                ),
              ),
            ),

            SizedBox(height: 3),
            Container(
              width: 315,
              height: 231,
              decoration: BoxDecoration(
                color: Color(0xffFFFFFF),
                borderRadius: BorderRadius.circular(20),
              ),
              child: Column(
                children: [
                  SizedBox(height: 16),

                  Row(
                    children: [
                      SizedBox(width: 16),
                      Icon(Icons.circle_outlined, size: 15),
                      SizedBox(width: 12),
                      Container(
                        height: 40,
                        width: 40,
                        clipBehavior: Clip.none,
                        decoration: BoxDecoration(
                          color: Color(0xffF47B0A),
                          borderRadius: BorderRadius.circular(10),
                        ),
                        child: Image.asset(
                          'assets/icons/ic_cardpay.png',
                          errorBuilder: (context, error, stackTrace) {
                            return Text("ABCD");
                          },
                          // height: 10,
                          // width: 10,
                          frameBuilder:
                              (context, child, frame, wasSynchronouslyLoaded) {
                                return Padding(
                                  padding: const EdgeInsets.all(8.0),
                                  child: child,
                                );
                              },
                          // filterQuality: FilterQuality.low,

                          // fit: BoxFit.scaleDown,
                        ),
                      ),
                      SizedBox(width: 12),
                      Text('Card'),
                    ],
                  ),

                  SizedBox(height: 10),

                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 16),
                    child: Divider(thickness: 1, color: Colors.grey.shade300),
                  ),

                  SizedBox(height: 10),

                  Row(
                    children: [
                      SizedBox(width: 16),
                      Icon(Icons.circle_outlined, size: 15),
                      SizedBox(width: 12),
                      Container(
                        height: 40,
                        clipBehavior: Clip.none,
                        width: 40,
                        decoration: BoxDecoration(
                          color: Color(0xffEB4796),
                          borderRadius: BorderRadius.circular(10),
                        ),

                        child: Image.asset(
                          'assets/icons/ic_online-banking.png',
                          errorBuilder: (context, error, stackTrace) {
                            return Text('Error');
                          },
                          frameBuilder:
                              (context, child, frame, wasSynchronouslyLoaded) {
                                return Padding(
                                  padding: const EdgeInsets.all(8.0),
                                  child: child,
                                );
                              },
                        ),
                      ),
                      SizedBox(width: 12),
                      Text('Bank account'),
                    ],
                  ),

                  SizedBox(height: 10),

                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 16),
                    child: Divider(thickness: 1, color: Colors.grey.shade300),
                  ),

                  SizedBox(height: 10),

                  Row(
                    children: [
                      SizedBox(width: 16),
                      Icon(Icons.circle_outlined, size: 15),
                      SizedBox(width: 12),
                      Center(
                        child: Container(
                          height: 40,
                          width: 40,
                          decoration: BoxDecoration(
                            color: Color(0xff0038FF),
                            borderRadius: BorderRadius.circular(10),
                          ),
                          child: Image.asset(
                            'assets/icons/ic_paypal.png',
                            errorBuilder: (context, error, stackTrace) {
                              return Text('Error');
                            },
                            frameBuilder:
                                (
                                  context,
                                  child,
                                  frame,
                                  wasSynchronouslyLoaded,
                                ) {
                                  return Padding(
                                    padding: const EdgeInsets.all(8.0),
                                    child: child,
                                  );
                                },
                          ),
                        ),
                      ),
                      SizedBox(width: 12),
                      Text('Paypal'),
                    ],
                  ),
                ],
              ),
            ),
            Spacer(),

            SizedBox(
              height: 75,
              width: 325,

              child: Padding(
                padding: const EdgeInsets.only(bottom: 10, left: 20, right: 20),
                child: ElevatedButton(
                  style: ButtonStyle(
                    backgroundColor: WidgetStateProperty.all<Color>(
                      Color(0xffFA4A0C),
                    ),
                  ),
                  onPressed: null,

                  child: Text(
                    'Update',
                    style: TextStyle(
                      color: Color(0xffF6F6F9),
                      fontSize: 15,
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
