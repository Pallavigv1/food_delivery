import 'package:flutter/material.dart';
import 'package:food_delivery/bottom_navigation/fav_blank.dart';

class Payment extends StatefulWidget {
  const Payment({super.key});

  @override
  State<Payment> createState() => _PaymentState();
}

class _PaymentState extends State<Payment> {
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
              Navigator.of(context).pop(FavBlank());
            },
          ),
        ),
        title: Padding(
          padding: const EdgeInsets.only(right: 40),
          child: Center(
            child: Text(
              'Checkout',
              style: TextStyle(
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
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(height: 120),

              Padding(
                padding: const EdgeInsets.only(left: 30),
                child: Text(
                  'Payment',
                  style: TextStyle(
                    color: Color(0xff000000),
                    fontSize: 30,
                    fontWeight: FontWeight.w600,
                  ),
                ),
              ),

              SizedBox(height: 20),

              Padding(
                padding: const EdgeInsets.only(left: 30),
                child: Text(
                  'Payment method',
                  style: TextStyle(fontSize: 17, fontWeight: FontWeight.w600),
                ),
              ),

              SizedBox(height: 10),

              Center(
                child: Container(
                  width: 315,
                  height: 205,
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
                            decoration: BoxDecoration(
                              color: Color(0xffF47B0A),
                              borderRadius: BorderRadius.circular(10),
                            ),
                            child: Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Image.asset('assets/icons/ic_cardpay.png'),
                            ),
                          ),
                          SizedBox(width: 12),
                          Text('Card'),
                        ],
                      ),

                      SizedBox(height: 10),

                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 16),
                        child: Divider(color: Colors.grey.shade300),
                      ),

                      SizedBox(height: 10),

                      Row(
                        children: [
                          SizedBox(width: 16),
                          Icon(Icons.circle_outlined, size: 15),
                          SizedBox(width: 12),
                          Container(
                            height: 40,
                            width: 40,
                            decoration: BoxDecoration(
                              color: Color(0xffEB4796),
                              borderRadius: BorderRadius.circular(10),
                            ),
                            child: Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Image.asset(
                                'assets/icons/ic_online-banking.png',
                              ),
                            ),
                          ),
                          SizedBox(width: 12),
                          Text('Bank account'),
                        ],
                      ),
                    ],
                  ),
                ),
              ),

              SizedBox(height: 30),

              Padding(
                padding: const EdgeInsets.only(left: 30),
                child: Text(
                  'Delivery method.',
                  style: TextStyle(fontSize: 17, fontWeight: FontWeight.w600),
                ),
              ),

              SizedBox(height: 10),

              Center(
                child: Container(
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
                          Text('Door delivery'),
                        ],
                      ),

                      SizedBox(height: 10),

                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 35),
                        child: Divider(color: Colors.grey.shade300),
                      ),

                      SizedBox(height: 10),

                      Row(
                        children: [
                          SizedBox(width: 16),
                          Icon(Icons.circle_outlined, size: 15),
                          SizedBox(width: 12),
                          Text('Pick up'),
                        ],
                      ),
                    ],
                  ),
                ),
              ),

              SizedBox(height: 30),

              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 30),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      'Total',
                      style: TextStyle(
                        fontSize: 17,
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                    Text('23,000', style: TextStyle(fontSize: 22)),
                  ],
                ),
              ),

              SizedBox(height: 40),

              Center(
                child: SizedBox(
                  height: 75,
                  width: 325,
                  child: ElevatedButton(
                    style: ButtonStyle(
                      backgroundColor: WidgetStateProperty.all(
                        Color(0xffFA4A0C),
                      ),
                    ),
                    onPressed: () {},
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
      ),
    );
  }
}
