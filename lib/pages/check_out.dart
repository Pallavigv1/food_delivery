import 'package:flutter/material.dart';
import 'package:food_delivery/bottom_navigation/fav_blank.dart';
import 'package:food_delivery/constants/cart_data.dart';
import 'package:food_delivery/constants/food_data.dart';
//import 'package:food_delivery/constants/total_amount.dart';

class CheckOut extends StatefulWidget {
  const CheckOut({super.key});

  @override
  State<CheckOut> createState() => _CheckOutState();
}

class _CheckOutState extends State<CheckOut> {
  List<FoodItem> get foodItems => MyCartData.cartItems;
  // double CalculateTotal(List<Map<String, dynamic>> cartItems) {
  //   return cartItems.fold(
  //     0.0,
  //     (previousValue, item) =>
  //         previousValue + (item['price'] * item['quantity']),
  //   );
  // }

  static const double deliveryCharge = 40;
  static const double gstPerc = 0.05;

  double grosstotal(List<FoodItem> items) {
    return items.fold(0.0, (sum, item) => sum + (item.price * item.counter));
  }

  double get subgrosstotal => grosstotal(foodItems);
  double get gst => subgrosstotal * gstPerc;
  double get grandtotal => subgrosstotal + gst + deliveryCharge;
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
              Navigator.of(context).pop();
            },
          ),
        ),
        title: Center(
          child: Padding(
            padding: const EdgeInsets.only(right: 80),
            child: Text(
              'Checkout',
              style: const TextStyle(
                color: Color(0xff000000),
                fontSize: 18,
                fontWeight: FontWeight.w600,
              ),
            ),
          ),
        ),
      ),

      body: Padding(
        padding: const EdgeInsets.all(16),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          //crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            SizedBox(height: 120),

            Padding(
              padding: const EdgeInsets.only(left: 30),
              child: Align(
                alignment: Alignment.centerLeft,

                child: Text(
                  'Delivery',
                  style: TextStyle(
                    color: Color(0xff000000),
                    fontSize: 30,
                    fontWeight: FontWeight.w600,
                  ),
                ),
              ),
            ),
            SizedBox(height: 20),

            Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Padding(
                  padding: const EdgeInsets.only(left: 30),
                  child: Text(
                    'Address details',
                    style: TextStyle(
                      color: Color(0xff000000),
                      fontSize: 17,
                      fontWeight: FontWeight(600),
                    ),
                  ),
                ),
                SizedBox(width: 100),

                TextButton(
                  child: Text(
                    'change',
                    style: TextStyle(
                      color: Color(0xffF47B0A),
                      fontSize: 13,
                      fontWeight: FontWeight(400),
                    ),
                  ),
                  onPressed: () {},
                ),
              ],
            ),
            SizedBox(height: 10),

            Container(
              width: 315,
              height: 168,
              decoration: BoxDecoration(
                color: Color(0xffFFFFFF),
                borderRadius: BorderRadius.circular(20),
              ),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Padding(
                    padding: const EdgeInsets.only(right: 100, top: 20),
                    child: Text(
                      'Marvis Kparobo',
                      style: TextStyle(
                        fontSize: 17,
                        fontWeight: FontWeight(500),
                      ),
                    ),
                  ),
                  SizedBox(height: 2),

                  Padding(
                    padding: const EdgeInsets.only(left: 35, right: 35),
                    child: Divider(thickness: 1, color: Colors.grey.shade300),
                  ),
                  Text(
                    'Km 5 refinery road oppsite re\npublic road, effurun, delta state',
                    style: TextStyle(fontSize: 15, fontWeight: FontWeight(400)),
                  ),
                  SizedBox(height: 2),

                  Padding(
                    padding: const EdgeInsets.only(left: 35, right: 35),
                    child: Divider(thickness: 1, color: Colors.grey.shade300),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(right: 120, bottom: 20),
                    child: Text(
                      '+234 9011039271',
                      style: TextStyle(
                        fontSize: 15,
                        fontWeight: FontWeight(400),
                      ),
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(height: 30),

            Padding(
              padding: const EdgeInsets.only(left: 30),
              child: Align(
                alignment: Alignment.centerLeft,
                child: Text(
                  'Delivery method.',
                  style: TextStyle(
                    color: Color(0xff000000),
                    fontSize: 17,
                    fontWeight: FontWeight(600),
                  ),
                ),
              ),
            ),

            SizedBox(height: 20),

            Container(
              width: 315,
              height: 146,
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
                      Text(
                        'Door delivery',
                        style: TextStyle(
                          fontSize: 17,
                          fontWeight: FontWeight(400),
                          color: Color(0xff000000),
                        ),
                      ),
                    ],
                  ),

                  SizedBox(height: 10),

                  Padding(
                    padding: const EdgeInsets.only(left: 35, right: 35),
                    child: Divider(thickness: 1, color: Colors.grey.shade300),
                  ),

                  SizedBox(height: 10),

                  Row(
                    children: [
                      SizedBox(width: 16),
                      Icon(Icons.circle_outlined, size: 15),

                      SizedBox(width: 12),
                      Text(
                        'Pick up',
                        style: TextStyle(
                          fontSize: 17,
                          fontWeight: FontWeight(400),
                          color: Color(0xff000000),
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),

            SizedBox(height: 30),

            Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Padding(
                  padding: const EdgeInsets.only(left: 30),
                  child: Text(
                    'Total',
                    style: TextStyle(
                      color: Color(0xff000000),
                      fontSize: 17,
                      fontWeight: FontWeight(600),
                    ),
                  ),
                ),
                SizedBox(width: 100),

                Align(
                  alignment: Alignment.centerRight,
                  child: Padding(
                    padding: const EdgeInsets.only(left: 80),
                    child: Text(
                      '# ${grandtotal.toStringAsFixed(2)}',
                      style: TextStyle(
                        color: Color(0xff000000),
                        fontSize: 22,
                        fontWeight: FontWeight(400),
                      ),
                    ),
                  ),
                ),
              ],
            ),

            SizedBox(height: 40),

            SizedBox(
              height: 75,
              width: 325,

              child: Padding(
                padding: const EdgeInsets.only(bottom: 10, left: 0, right: 0),
                child: ElevatedButton(
                  style: ButtonStyle(
                    backgroundColor: WidgetStateProperty.all<Color>(
                      Color(0xffFA4A0C),
                    ),
                  ),
                  onPressed: null,

                  child: Text(
                    'Proceed to payment',
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
