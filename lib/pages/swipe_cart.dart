import 'dart:math';

import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:food_delivery/bottom_navigation/fav_blank.dart';
import 'package:food_delivery/constants/cart_data.dart';
import 'package:food_delivery/pages/check_out.dart';

class SwipeCart extends StatefulWidget {
  const SwipeCart({super.key});

  @override
  State<SwipeCart> createState() => _SwipeCartState();
}

class _SwipeCartState extends State<SwipeCart> {
  // void increment() {
  //   setState(() {
  //     '${foodItems[index]["counter"]}';
  //   });
  // }

  // void decrement() {
  //   setState(() {
  //     '${foodItems[index]["counter"]}';
  //   });
  // }

  List<Map<String, dynamic>> get foodItems => MyCartData.cartItems;

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
        title: Center(
          child: Padding(
            padding: const EdgeInsets.only(right: 80),
            child: Text(
              'Cart',
              style: const TextStyle(
                color: Color(0xff000000),
                fontSize: 25,
                fontWeight: FontWeight.w600,
              ),
            ),
          ),
        ),
      ),

      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.only(top: 10),
          child: foodItems.isEmpty
              ? Center(
                  child: Padding(
                    padding: const EdgeInsets.only(bottom: 200),
                    child: Text(
                      'Cart is Empty',
                      style: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.w900,
                        color: Color(0xffFA4A0C),
                      ),
                    ),
                  ),
                )
              : Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    SizedBox(height: 10),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Image.asset(
                          'assets/icons/ic_swipe.png',
                          width: 30,
                          height: 30,
                        ),
                        SizedBox(width: 2),
                        Text('swipe on an item to delete'),
                      ],
                    ),
                    SizedBox(height: 20),

                    Flexible(
                      child: ListView.separated(
                        separatorBuilder: (context, index) {
                          return SizedBox(height: 30);
                        },
                        itemCount: foodItems.length,
                        itemBuilder: (context, index) {
                          //final item = foodItems[index];

                          return Dismissible(
                            key: Key(
                              foodItems[index]["name"] + index.toString(),
                            ),
                            background: Container(
                              height: 45,
                              width: 45,

                              color: Color(0xffDF2C2C),
                            ),

                            secondaryBackground: Container(
                              padding: EdgeInsets.symmetric(horizontal: 20),
                              decoration: BoxDecoration(
                                color: Colors.transparent,
                                borderRadius: BorderRadius.circular(20),
                              ),
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.end,
                                children: [
                                  Container(
                                    height: 50,
                                    width: 50,
                                    decoration: BoxDecoration(
                                      color: Color(0xffDF2C2C),
                                      shape: BoxShape.circle,
                                    ),
                                    child: Icon(
                                      Icons.favorite_border,
                                      color: Colors.white,
                                    ),
                                  ),

                                  SizedBox(width: 15),

                                  Container(
                                    height: 50,
                                    width: 50,
                                    decoration: BoxDecoration(
                                      color: Colors.redAccent,
                                      shape: BoxShape.circle,
                                    ),
                                    child: Icon(
                                      Icons.delete,
                                      color: Colors.white,
                                    ),
                                  ),
                                ],
                              ),
                            ),

                            direction: DismissDirection.endToStart,

                            onDismissed: (direction) {
                              setState(() {
                                MyCartData.cartItems.removeAt(index);
                              });

                              ScaffoldMessenger.of(context).showSnackBar(
                                SnackBar(
                                  content: Text(
                                    '${foodItems[index]["name"]} removed from cart',
                                  ),
                                ),
                              );
                            },

                            child: Padding(
                              padding: const EdgeInsets.only(
                                left: 40,
                                right: 40,
                              ),
                              child: Container(
                                height: 102,
                                width: 315,
                                decoration: BoxDecoration(
                                  color: Color(0xffFFFFFF),
                                  borderRadius: BorderRadius.circular(20),
                                ),
                                child: Row(
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  children: [
                                    Padding(
                                      padding: const EdgeInsets.all(15.0),
                                      child: CircleAvatar(
                                        radius: 34.6, // half of 69.21
                                        backgroundImage: AssetImage(
                                          foodItems[index]["image"],
                                        ),
                                      ),
                                    ),

                                    SizedBox(width: 3),

                                    Column(
                                      mainAxisAlignment:
                                          MainAxisAlignment.center,
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,

                                      children: [
                                        Text(
                                          foodItems[index]["name"],
                                          style: TextStyle(
                                            color: Color(0xff000000),
                                            fontSize: 17,
                                            fontWeight: FontWeight.w600,
                                          ),
                                        ),

                                        SizedBox(height: 2),
                                        Row(
                                          mainAxisAlignment:
                                              MainAxisAlignment.spaceBetween,
                                          children: [
                                            Padding(
                                              padding: const EdgeInsets.only(
                                                top: 0,
                                                //right: 80,
                                              ),
                                              child: Text(
                                                "# ${foodItems[index]["price"]}",
                                                style: TextStyle(
                                                  color: Color(0xffFA4A0C),
                                                  fontSize: 15,
                                                  fontWeight: FontWeight(600),
                                                ),
                                              ),
                                            ),

                                            SizedBox(width: 75, height: 60),
                                            Container(
                                              padding: EdgeInsets.zero,
                                              decoration: BoxDecoration(
                                                color: Color(0xffFA4A0C),
                                                borderRadius:
                                                    BorderRadius.circular(20),
                                              ),
                                              child: Row(
                                                //crossAxisAlignment: CrossAxisAlignment.end,
                                                //mainAxisAlignment: MainAxisAlignment.end,
                                                children: [
                                                  GestureDetector(
                                                    onTap: () {
                                                      setState(() {
                                                        if (foodItems[index]["counter"] >
                                                            1) {
                                                          foodItems[index]["counter"]--;
                                                        }
                                                      });
                                                    },
                                                    child: Padding(
                                                      padding:
                                                          EdgeInsets.symmetric(
                                                            horizontal: 6,
                                                          ),
                                                      child: Icon(
                                                        Icons.remove,
                                                        color: Colors.white,
                                                        size: 16,
                                                      ),
                                                    ),
                                                  ),

                                                  Text(
                                                    '${foodItems[index]["counter"]}',
                                                    style: TextStyle(
                                                      color: Colors.white,
                                                    ),
                                                  ),

                                                  GestureDetector(
                                                    onTap: () {
                                                      setState(() {
                                                        foodItems[index]["counter"]++;
                                                      });
                                                    },
                                                    child: Padding(
                                                      padding:
                                                          EdgeInsets.symmetric(
                                                            horizontal: 6,
                                                          ),
                                                      child: Icon(
                                                        Icons.add,
                                                        color: Colors.white,
                                                        size: 16,
                                                      ),
                                                    ),
                                                  ),
                                                ],
                                              ),
                                            ),
                                          ],
                                        ),
                                      ],
                                    ),
                                  ],
                                ),
                              ),
                            ),
                          );
                        },
                      ),
                    ),

                    //SizedBox(height: 25),

                    // SizedBox(height: 25),

                    // Padding(
                    //   padding: const EdgeInsets.only(left: 40, right: 40),
                    //   child: Container(
                    //     height: 102,
                    //     width: 315,
                    //     decoration: BoxDecoration(
                    //       color: Color(0xffFFFFFF),
                    //       borderRadius: BorderRadius.circular(20),
                    //     ),
                    //     child: Row(
                    //       mainAxisAlignment: MainAxisAlignment.start,
                    //       children: [
                    //         Padding(
                    //           padding: const EdgeInsets.all(15.0),
                    //           child: CircleAvatar(
                    //             radius: 34.6, // half of 69.21
                    //             backgroundImage: AssetImage('assets/images/food_2.jpg'),
                    //           ),
                    //         ),

                    //         SizedBox(width: 3),

                    //         Column(
                    //           mainAxisAlignment: MainAxisAlignment.center,
                    //           crossAxisAlignment: CrossAxisAlignment.start,

                    //           children: [
                    //             Text(
                    //               'Fishwith mix orange....',
                    //               style: TextStyle(
                    //                 color: Color(0xff000000),
                    //                 fontSize: 17,
                    //                 fontWeight: FontWeight(600),
                    //               ),
                    //             ),

                    //             SizedBox(height: 2),
                    //             Row(
                    //               mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    //               children: [
                    //                 Padding(
                    //                   padding: const EdgeInsets.only(
                    //                     top: 0,
                    //                     //right: 80,
                    //                   ),
                    //                   child: Text(
                    //                     '#1,900',
                    //                     style: TextStyle(
                    //                       color: Color(0xffFA4A0C),
                    //                       fontSize: 15,
                    //                       fontWeight: FontWeight(600),
                    //                     ),
                    //                   ),
                    //                 ),

                    //                 SizedBox(width: 75, height: 60),
                    //                 Container(
                    //                   padding: EdgeInsets.zero,
                    //                   decoration: BoxDecoration(
                    //                     color: Color(0xffFA4A0C),
                    //                     borderRadius: BorderRadius.circular(20),
                    //                   ),
                    //                   child: Row(
                    //                     //crossAxisAlignment: CrossAxisAlignment.end,
                    //                     //mainAxisAlignment: MainAxisAlignment.end,
                    //                     children: [
                    //                       GestureDetector(
                    //                         onTap: decrement,
                    //                         child: Padding(
                    //                           padding: EdgeInsets.symmetric(
                    //                             horizontal: 6,
                    //                           ),
                    //                           child: Icon(
                    //                             Icons.remove,
                    //                             color: Colors.white,
                    //                             size: 16,
                    //                           ),
                    //                         ),
                    //                       ),

                    //                       Text(
                    //                         '$counter',
                    //                         style: TextStyle(color: Colors.white),
                    //                       ),

                    //                       GestureDetector(
                    //                         onTap: increment,
                    //                         child: Padding(
                    //                           padding: EdgeInsets.symmetric(
                    //                             horizontal: 6,
                    //                           ),
                    //                           child: Icon(
                    //                             Icons.add,
                    //                             color: Colors.white,
                    //                             size: 16,
                    //                           ),
                    //                         ),
                    //                       ),
                    //                     ],
                    //                   ),
                    //                 ),
                    //               ],
                    //             ),
                    //           ],
                    //         ),
                    //       ],
                    //     ),
                    //   ),
                    // ),

                    // SizedBox(height: 25),

                    // Padding(
                    //   padding: const EdgeInsets.only(left: 40, right: 40),
                    //   child: Container(
                    //     height: 102,
                    //     width: 315,
                    //     decoration: BoxDecoration(
                    //       color: Color(0xffFFFFFF),
                    //       borderRadius: BorderRadius.circular(20),
                    //     ),
                    //     child: Row(
                    //       mainAxisAlignment: MainAxisAlignment.start,
                    //       children: [
                    //         Padding(
                    //           padding: const EdgeInsets.all(15.0),
                    //           child: CircleAvatar(
                    //             radius: 34.6, // half of 69.21
                    //             backgroundImage: AssetImage('assets/images/food_3.jpg'),
                    //           ),
                    //         ),

                    //         SizedBox(width: 3),

                    //         Column(
                    //           mainAxisAlignment: MainAxisAlignment.center,
                    //           crossAxisAlignment: CrossAxisAlignment.start,

                    //           children: [
                    //             Text(
                    //               'Veggie tomato mix',
                    //               style: TextStyle(
                    //                 color: Color(0xff000000),
                    //                 fontSize: 17,
                    //                 fontWeight: FontWeight(600),
                    //               ),
                    //             ),

                    //             SizedBox(height: 2),
                    //             Row(
                    //               mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    //               children: [
                    //                 Padding(
                    //                   padding: const EdgeInsets.only(
                    //                     top: 0,
                    //                     //right: 80,
                    //                   ),
                    //                   child: Text(
                    //                     '#1,900',
                    //                     style: TextStyle(
                    //                       color: Color(0xffFA4A0C),
                    //                       fontSize: 15,
                    //                       fontWeight: FontWeight(600),
                    //                     ),
                    //                   ),
                    //                 ),

                    //                 SizedBox(width: 75, height: 60),
                    //                 Container(
                    //                   padding: EdgeInsets.zero,
                    //                   decoration: BoxDecoration(
                    //                     color: Color(0xffFA4A0C),
                    //                     borderRadius: BorderRadius.circular(20),
                    //                   ),
                    //                   child: Row(
                    //                     //crossAxisAlignment: CrossAxisAlignment.end,
                    //                     //mainAxisAlignment: MainAxisAlignment.end,
                    //                     children: [
                    //                       GestureDetector(
                    //                         onTap: decrement,
                    //                         child: Padding(
                    //                           padding: EdgeInsets.symmetric(
                    //                             horizontal: 6,
                    //                           ),
                    //                           child: Icon(
                    //                             Icons.remove,
                    //                             color: Colors.white,
                    //                             size: 16,
                    //                           ),
                    //                         ),
                    //                       ),

                    //                       Text(
                    //                         '$counter',
                    //                         style: TextStyle(color: Colors.white),
                    //                       ),

                    //                       GestureDetector(
                    //                         onTap: increment,
                    //                         child: Padding(
                    //                           padding: EdgeInsets.symmetric(
                    //                             horizontal: 6,
                    //                           ),
                    //                           child: Icon(
                    //                             Icons.add,
                    //                             color: Colors.white,
                    //                             size: 16,
                    //                           ),
                    //                         ),
                    //                       ),
                    //                     ],
                    //                   ),
                    //                 ),
                    //               ],
                    //             ),
                    //           ],
                    //         ),
                    //       ],
                    //     ),
                    //   ),
                    // ),
                    SizedBox(height: 20),
                    SizedBox(
                      height: 75,
                      width: 325,

                      child: Padding(
                        padding: const EdgeInsets.only(
                          bottom: 10,
                          left: 0,
                          right: 0,
                        ),
                        child: ElevatedButton(
                          style: ButtonStyle(
                            backgroundColor: MaterialStateProperty.all<Color>(
                              Color(0xffFA4A0C),
                            ),
                          ),
                          onPressed: () {
                            Navigator.of(context).push(
                              MaterialPageRoute(
                                builder: (context) {
                                  return CheckOut();
                                },
                              ),
                            );
                          },

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
                    //copy till here
                  ], // paste here
                ),
        ),
      ),
    );
  }
}
