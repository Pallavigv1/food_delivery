import 'package:flutter/material.dart';
import 'package:food_delivery/constants/offers_promo.dart';
import 'package:food_delivery/screens/drawer_screen.dart';

class MyOffers extends StatefulWidget {
  const MyOffers({super.key});

  @override
  State<MyOffers> createState() => _MyOffersState();
}

class _MyOffersState extends State<MyOffers> {
  final List<Codes> offers = Myoffers.offers;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xffF5F5F8),
      extendBodyBehindAppBar: true,
      appBar: AppBar(
        toolbarHeight: 80,
        backgroundColor: Colors.transparent,
        title: Text(
          "My offers",
          style: TextStyle(
            color: Color(0xff000000),
            fontSize: 30,
            fontWeight: FontWeight.w600,
          ),
        ),
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
        child: offers.isEmpty
            ? Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Spacer(),

                  Align(
                    alignment: Alignment.bottomCenter,

                    child: Text(
                      'ohh snap!  No offers yet',
                      style: TextStyle(
                        fontSize: 28,
                        fontWeight: FontWeight(500),
                      ),
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
              )
            : Column(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Text(
                    "",
                    style: TextStyle(fontSize: 18, color: Colors.blue[800]),
                  ),

                  SizedBox(height: 25),

                  Flexible(
                    child: ListView.builder(
                      itemCount: offers.length,
                      itemBuilder: (context, index) {
                        final code = offers[index];

                        return GestureDetector(
                          onTap: () {
                            setState(() {
                              code.isSelected = !code.isSelected;
                              //print(code.isSelected);
                            });
                          },

                          child: Container(
                            padding: EdgeInsets.all(16),
                            margin: EdgeInsets.symmetric(vertical: 8),

                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(12),
                              // border: Border.all(
                              //   color: code.isSelected
                              //       ? Colors.grey
                              //       : Colors.lightBlue,
                              //   width: 1.2,
                              // ),
                              // color: code.isSelected
                              //     ? Colors.grey
                              //     : Colors.blue,
                            ),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Text(
                                  code.codeName,
                                  style: TextStyle(
                                    fontSize: 15,

                                    color: code.isSelected
                                        ? Colors.grey
                                        : Colors.black,
                                  ),
                                ),

                                Text(
                                  code.isSelected
                                      ? "Reedemed"
                                      : "Tap to Reedem",

                                  style: TextStyle(
                                    fontSize: 13,
                                    color: code.isSelected
                                        ? Colors.grey
                                        : Colors.blue,
                                  ),
                                ),
                              ],
                            ),
                          ),
                        );
                      },
                    ),
                  ),
                ],
              ),
      ),
    );
  }
}
