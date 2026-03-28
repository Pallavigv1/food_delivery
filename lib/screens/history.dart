import 'package:flutter/material.dart';
import 'package:food_delivery/screens/bottom%20_navigation.dart';
import 'package:food_delivery/screens/home_screen.dart';

class HistoryScreen extends StatefulWidget {
  const HistoryScreen({super.key});

  @override
  State<HistoryScreen> createState() => _HistoryScreenState();
}

class _HistoryScreenState extends State<HistoryScreen> {
  @override
  Widget build(BuildContext context) {
    return Material(
      //backgroundColor: Color(0xffF5F5F8),
      child: SafeArea(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Spacer(),
            Center(child: Image.asset('assets/images/history_1.png')),
            SizedBox(height: 20),
            Text(
              'No history yet',
              style: TextStyle(
                color: Color(0xff000000),
                fontSize: 28,
                fontWeight: FontWeight.w600,
              ),
            ),
            SizedBox(height: 20),
            Text(
              'Hit the orange button down\n below to Create an order',
              style: TextStyle(
                fontSize: 12,
                color: Colors.grey,
                fontWeight: FontWeight.w400,
              ),
            ),

            Spacer(),

            SizedBox(
              height: 70,
              width: 314,

              child: Padding(
                padding: const EdgeInsets.only(bottom: 20, left: 20, right: 20),
                child: ElevatedButton(
                  style: ButtonStyle(
                    backgroundColor: MaterialStateProperty.all<Color>(
                      Color(0xffFA4A0C),
                    ),
                  ),
                  onPressed: null,

                  child: Text(
                    'Start odering',
                    style: TextStyle(
                      color: Color(0xffF6F6F9),
                      fontSize: 12,
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
