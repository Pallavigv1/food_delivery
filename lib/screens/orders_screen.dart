import 'package:flutter/material.dart';
import 'package:food_delivery/screens/home_screen.dart';

class OrdersScreen extends StatefulWidget {
  const OrdersScreen({super.key});

  @override
  State<OrdersScreen> createState() => _OrdersScreenState();
}

class _OrdersScreenState extends State<OrdersScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        toolbarHeight: 70,

        leading: Padding(
          padding: const EdgeInsets.only(top: 30, left: 10),
          child: IconButton(
            icon: Icon(Icons.arrow_back_ios),
            onPressed: () {
              Navigator.of(context).pop(HomeScreen());
            },
          ),
        ),
        titleSpacing: 120,
        title: Padding(
          padding: const EdgeInsets.only(top: 30),
          child: Text(
            'Orders',
            style: TextStyle(
              color: Color(0xff000000),
              fontSize: 16,
              fontWeight: FontWeight.w600,
            ),
          ),
        ),
      ),

      body: SafeArea(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Spacer(),
            Center(
              child: SizedBox(
                height: 113.13,
                width: 107.99,
                child: Image.asset('assets/images/ic_cart.png'),
              ),
            ),
            SizedBox(height: 20),
            Text(
              'No Orders yet',
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
                    backgroundColor: WidgetStateProperty.all<Color>(
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
