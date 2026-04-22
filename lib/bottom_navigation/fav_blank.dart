import 'package:flutter/material.dart';
import 'package:food_delivery/pages/check_out.dart';
import 'package:food_delivery/pages/not_found.dart';
import 'package:food_delivery/pages/payment_pay.dart';
import 'package:food_delivery/pages/personal_details.dart';
import 'package:food_delivery/pages/proceed_page.dart';
import 'package:food_delivery/pages/swipe_cart.dart';
import 'package:food_delivery/screens/drawer_screen.dart';

class FavBlank extends StatefulWidget {
  const FavBlank({super.key});

  @override
  State<FavBlank> createState() => _FavBlankState();
}

class _FavBlankState extends State<FavBlank> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBodyBehindAppBar: true,
      backgroundColor: Color(0xffF5F5F8),
      appBar: AppBar(
        toolbarHeight: 150,
        centerTitle: true,
        title: Text(' All Other Screens\n Click on the buttons'),
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
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,

          children: [
            ElevatedButton(
              onPressed: () {
                Navigator.of(context).push(
                  MaterialPageRoute(
                    builder: (context) {
                      return CheckOut();
                    },
                  ),
                );
              },
              child: Text('Delivery'),
            ),
            ElevatedButton(
              onPressed: () {
                Navigator.of(context).push(
                  MaterialPageRoute(
                    builder: (context) {
                      return Payment();
                    },
                  ),
                );
              },
              child: Text('Payment'),
            ),
            ElevatedButton(
              onPressed: () {
                Navigator.of(context).push(
                  MaterialPageRoute(
                    builder: (context) {
                      return SwipeCart();
                    },
                  ),
                );
              },
              child: Text('Swipe Cart'),
            ),
            ElevatedButton(
              onPressed: () {
                Navigator.of(context).push(
                  MaterialPageRoute(
                    builder: (context) {
                      return Proceed();
                    },
                  ),
                );
              },
              child: Text('Proceed Payment'),
            ),

            ElevatedButton(
              onPressed: () {
                Navigator.of(context).push(
                  MaterialPageRoute(
                    builder: (context) {
                      return PersonalDetails();
                    },
                  ),
                );
              },
              child: Text('Personal Details'),
            ),
            ElevatedButton(
              onPressed: () {
                Navigator.of(context).push(
                  MaterialPageRoute(
                    builder: (context) {
                      return NotFound();
                    },
                  ),
                );
              },
              child: Text('Not Found'),
            ),
          ],
        ),
      ),
    );
  }
}
