import 'package:flutter/material.dart';
//import 'package:food_delivery/bottom_navigation/favourites.dart';
//import 'package:food_delivery/bottom_navigation/person.dart';
import 'package:food_delivery/pages/foods_section.dart';
import 'package:food_delivery/screens/bottom%20_navigation.dart';
//import 'package:food_delivery/screens/bottom _navigation.dart';
//import 'package:food_delivery/screens/history.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Material(
      child: SafeArea(
        // backgroundColor: Color(0xffF2F2F2),

        // appBar: AppBar(
        //   backgroundColor: Colors.transparent,
        //   toolbarHeight: 70,

        //   leading: Padding(
        //     padding: const EdgeInsets.only(left: 30, top: 30),
        //     child: IconButton(
        //       icon: Icon(Icons.menu, color: Colors.black),
        //       onPressed: () {},
        //     ),
        //   ),

        //   actions: [
        //     Padding(
        //       padding: const EdgeInsets.only(right: 30, top: 30),
        //       child: IconButton(
        //         icon: Icon(Icons.shopping_cart_outlined, color: Colors.grey),
        //         onPressed: () {},
        //       ),
        //     ),
        //   ],
        // ),
        child: DefaultTabController(
          length: 4,
          child: Padding(
            padding: const EdgeInsets.all(20.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Padding(
                  padding: const EdgeInsets.only(left: 20, top: 10),
                  child: Text(
                    'Delicious\nfood for you',
                    style: TextStyle(
                      fontSize: 34,
                      fontWeight: FontWeight.w800,
                      color: Color(0xff000000),
                    ),
                  ),
                ),
                SizedBox(height: 20),

                Padding(
                  padding: const EdgeInsets.only(left: 20, right: 20),
                  child: SizedBox(
                    height: 60,
                    width: 314,

                    child: TextField(
                      decoration: InputDecoration(
                        filled: true,
                        fillColor: Color(0xffEFEEEE),
                        prefixIcon: Icon(Icons.search),
                        hintText: 'Search',
                        hintStyle: TextStyle(
                          color: Colors.grey,
                          fontSize: 15,
                          fontWeight: FontWeight.w600,
                        ),
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(30),
                          borderSide: BorderSide.none,
                        ),
                      ),
                    ),
                  ),
                ),

                SizedBox(height: 20),

                Padding(
                  padding: const EdgeInsets.only(left: 20),
                  child: TabBar(
                    isScrollable: true,
                    indicatorColor: Color(0xffFA4A0C),
                    dividerColor: Colors.transparent,
                    labelColor: Color(0xffFA4A0C),
                    unselectedLabelColor: Color(0xff9A9A9D),
                    labelStyle: TextStyle(
                      fontSize: 15,
                      fontWeight: FontWeight.w600,
                    ),
                    unselectedLabelStyle: TextStyle(
                      fontSize: 15,
                      fontWeight: FontWeight.w600,
                    ),

                    tabs: [
                      Tab(text: 'Foods'),
                      Tab(text: 'Drinks'),
                      Tab(text: 'Snacks'),
                      Tab(text: 'Sauce'),
                    ],
                  ),
                ),

                Expanded(
                  child: TabBarView(
                    children: [
                      FoodsSection(),
                      Center(child: Text('Drinks Section')),
                      Center(child: Text('Snacks Section')),
                      Center(child: Text('Sauces Section')),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
