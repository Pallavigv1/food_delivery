import 'package:flutter/material.dart';
import 'package:food_delivery/screens/drawer_screen.dart';

class MyOffers extends StatefulWidget {
  const MyOffers({super.key});

  @override
  State<MyOffers> createState() => _MyOffersState();
}

class _MyOffersState extends State<MyOffers> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xffF5F5F8),
      extendBodyBehindAppBar: true,
      appBar: AppBar(
        toolbarHeight: 80,
        backgroundColor: Colors.transparent,
        leading: Padding(
          padding: const EdgeInsets.only(left: 30),
          child: IconButton(
            icon: const Icon(Icons.arrow_back_ios),
            iconSize: 20,
            onPressed: () {
              Navigator.of(context).push(
                MaterialPageRoute(
                  builder: (context) {
                    return DrawerScreen();
                  },
                ),
              );
            },
          ),
        ),
      ),

      body: Padding(
        padding: const EdgeInsets.all(16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(height: 120),

            Padding(
              padding: const EdgeInsets.only(left: 30),
              child: Text(
                'My offers',
                style: TextStyle(
                  color: Color(0xff000000),
                  fontSize: 30,
                  fontWeight: FontWeight.w600,
                ),
              ),
            ),

            Spacer(),

            Align(
              alignment: Alignment.bottomCenter,

              child: Text(
                'ohh snap!  No offers yet',
                style: TextStyle(fontSize: 28, fontWeight: FontWeight(500)),
              ),
            ),

            SizedBox(height: 2),

            Align(
              alignment: Alignment.bottomCenter,
              child: Text(
                'Bella dose’t have any offers\nyet please check again.',
                style: TextStyle(
                  fontSize: 17,
                  fontWeight: FontWeight(400),
                  color: Colors.grey,
                ),
              ),
            ),
            Spacer(),
          ],
        ),
      ),
    );
  }
}
