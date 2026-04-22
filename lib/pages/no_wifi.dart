import 'package:flutter/material.dart';

class NoWifi extends StatefulWidget {
  const NoWifi({super.key});

  @override
  State<NoWifi> createState() => _NoWifiState();
}

class _NoWifiState extends State<NoWifi> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xffF5F5F8),
      extendBodyBehindAppBar: true,

      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Center(
            child: SizedBox(
              height: 200,
              width: 200,

              child: Image.asset('assets/icons/ic_nonet.png'),
            ),
          ),
          SizedBox(height: 3),

          Text(
            'No internet Connection',
            style: TextStyle(fontSize: 28, fontWeight: FontWeight(600)),
          ),
          SizedBox(height: 3),

          Text(
            'Your internet connection is currently\nnot available please check or try again.',
            style: TextStyle(
              fontSize: 14,
              fontWeight: FontWeight(400),
              color: Colors.grey,
            ),
          ),
          SizedBox(height: 80),

          SizedBox(
            height: 75,
            width: 325,

            child: Padding(
              padding: const EdgeInsets.only(bottom: 20, left: 20, right: 20),
              child: ElevatedButton(
                style: ButtonStyle(
                  backgroundColor: WidgetStateProperty.all<Color>(
                    Color(0xffFA4A0C),
                  ),
                ),
                onPressed: null,

                child: Text(
                  'Try again',
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
    );
  }
}
