import 'package:flutter/material.dart';
import 'package:food_delivery/bottom_navigation/fav_blank.dart';
import 'package:food_delivery/bottom_navigation/my_profile.dart';
import 'package:food_delivery/pages/check_out.dart';
import 'package:food_delivery/pages/login_page.dart';
import 'package:food_delivery/pages/my_offers.dart';
import 'package:food_delivery/screens/bottom_navigation.dart';
import 'package:food_delivery/screens/orders_screen.dart';
import 'package:hidden_drawer_menu/hidden_drawer_menu.dart';

class DrawerScreen extends StatefulWidget {
  const DrawerScreen({super.key});

  @override
  State<DrawerScreen> createState() => _DrawerScreenState();
}

class _DrawerScreenState extends State<DrawerScreen> {
  List<ScreenHiddenDrawer> _pages = [];

  @override
  void initState() {
    super.initState();
    _pages = [
      ScreenHiddenDrawer(
        ItemHiddenMenu(
          name: 'Home',
          baseStyle: TextStyle(
            fontSize: 17,
            fontWeight: FontWeight(600),
            color: Color(0xffFFFFFF),
          ),
          selectedStyle: TextStyle(
            fontSize: 17,
            fontWeight: FontWeight(600),
            color: Color(0xffFFFFFF),
          ),
        ),

        BottomNavigation(),
      ),

      ScreenHiddenDrawer(
        ItemHiddenMenu(
          name: 'Profile',
          baseStyle: TextStyle(
            fontSize: 17,
            fontWeight: FontWeight(600),
            color: Color(0xffFFFFFF),
          ),
          selectedStyle: TextStyle(
            fontSize: 17,
            fontWeight: FontWeight(600),
            color: Color(0xffFFFFFF),
          ),
        ),

        MyProfile(),
      ),

      ScreenHiddenDrawer(
        ItemHiddenMenu(
          name: 'Orders ',
          baseStyle: TextStyle(
            fontSize: 17,
            fontWeight: FontWeight(600),
            color: Color(0xffFFFFFF),
          ),
          selectedStyle: TextStyle(
            fontSize: 17,
            fontWeight: FontWeight(600),
            color: Color(0xffFFFFFF),
          ),
        ),

        OrdersScreen(),
      ),
      ScreenHiddenDrawer(
        ItemHiddenMenu(
          name: 'offer and Promo ',
          baseStyle: TextStyle(
            fontSize: 17,
            fontWeight: FontWeight(600),
            color: Color(0xffFFFFFF),
          ),
          selectedStyle: TextStyle(
            fontSize: 17,
            fontWeight: FontWeight(600),
            color: Color(0xffFFFFFF),
          ),
        ),

        MyOffers(),
      ),
      ScreenHiddenDrawer(
        ItemHiddenMenu(
          name: 'Privacy policy ',
          baseStyle: TextStyle(
            fontSize: 17,
            fontWeight: FontWeight(600),
            color: Color(0xffFFFFFF),
          ),
          selectedStyle: TextStyle(
            fontSize: 17,
            fontWeight: FontWeight(600),
            color: Color(0xffFFFFFF),
          ),
        ),

        BottomNavigation(),
      ),
      ScreenHiddenDrawer(
        ItemHiddenMenu(
          name: 'Security ',
          baseStyle: TextStyle(
            fontSize: 17,
            fontWeight: FontWeight(600),
            color: Color(0xffFFFFFF),
          ),
          selectedStyle: TextStyle(
            fontSize: 17,
            fontWeight: FontWeight(600),
            color: Color(0xffFFFFFF),
          ),
        ),

        FavBlank(),
      ),

      ScreenHiddenDrawer(
        ItemHiddenMenu(
          name: 'Sign-out ',
          baseStyle: TextStyle(
            fontSize: 17,
            fontWeight: FontWeight(600),
            color: Color(0xffFFFFFF),
          ),
          selectedStyle: TextStyle(
            fontSize: 17,
            fontWeight: FontWeight(600),
            color: Color(0xffFFFFFF),
          ),
        ),

        LoginPage(),
      ),
    ];
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xffF2F2F2),
      extendBodyBehindAppBar: true,

      //appBar: AppBar(
      //backgroundColor: Colors.transparent,

      //     toolbarHeight: 70,
      //     title: Center(
      //       child: Padding(
      //         padding: const EdgeInsets.only(right: 60, left: 60),
      //         child: _selectedIndex == 0
      //             ? Text("")
      //             : _selectedIndex == 1
      //             ? Text("Favourites", style: TextStyle(color: Colors.black))
      //             : _selectedIndex == 2
      //             ? Padding(
      //                 padding: const EdgeInsets.only(right: 50),
      //                 child: Text(
      //                   "My Profile",
      //                   style: TextStyle(color: Colors.black),
      //                 ),
      //               )
      //             : Padding(
      //                 padding: const EdgeInsets.only(right: 50),
      //                 child: Text(
      //                   "History",
      //                   style: TextStyle(color: Colors.black),
      //                 ),
      //               ),
      //       ),
      //     ),

      //     leading: Padding(
      //       padding: const EdgeInsets.only(left: 30),
      //       child: _selectedIndex == 0
      //           ? Builder(
      //               builder: (context) {
      //                 return IconButton(
      //                   icon: Icon(Icons.menu, color: Colors.black),
      //                   onPressed: () {
      //                     SimpleHiddenDrawerController.of(context).toggle();
      //                   },
      //                 );
      //               },
      //             )
      //           : IconButton(
      //               icon: Icon(Icons.arrow_back_ios),
      //               onPressed: () {
      //                 setState(() {
      //                   _selectedIndex = 0;
      //                 });
      //               },
      //             ),
      //     ),

      //     actions: _selectedIndex == 0
      //         ? [
      //             IconButton(
      //               icon: Icon(
      //                 Icons.shopping_cart_outlined,
      //                 color: Colors.grey,
      //               ),
      //               onPressed: () {
      //                 Navigator.push(
      //                   context,
      //                   MaterialPageRoute(
      //                     builder: (context) {
      //                       return OrdersScreen();
      //                     },
      //                   ),
      //                 );
      //               },
      //             ),
      //           ]
      //         : _selectedIndex == 1
      //         ? [
      //             IconButton(
      //               icon: Icon(
      //                 Icons.favorite_border_outlined,
      //                 color: Colors.black,
      //               ),
      //               onPressed: () {},
      //             ),
      //           ]
      //         : _selectedIndex == 2
      //         ? []
      //         : [],
      //   ),
      body: HiddenDrawerMenu(
        backgroundColorMenu: Color(0xffFA4A0C),
        withAutoTittleName: true,
        actionsAppBar: [],
        leadingAppBar: IconButton(
          onPressed: () {
            Navigator.of(context).push(
              MaterialPageRoute(
                builder: (context) {
                  return CheckOut();
                },
              ),
            );
          },
          icon: Icon(Icons.menu_book_rounded),
        ),

        // leadingAppBar:,
        //actionsAppBar: [IconButton(onPressed: onPressed, icon: icon)],
        //backgroundColorAppBar: Color(0xffF2F2F2),
        tittleAppBar: SizedBox(height: 10),
        disableAppBarDefault: true,
        screens: _pages,
        initPositionSelected: 0,
        slidePercent: 60,
        contentCornerRadius: 30,

        boxShadow: [BoxShadow(color: Color(0xffF5F5F8))],
        withShadow: false,
        backgroundColorContent: Color(0xffF5F5F8),
      ),
    );
  }
}
