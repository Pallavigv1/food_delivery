import 'package:flutter/material.dart';
import 'package:food_delivery/screens/home_screen.dart';
import 'package:food_delivery/screens/history.dart';
import 'package:food_delivery/bottom_navigation/favourites.dart';
import 'package:food_delivery/bottom_navigation/person.dart';

class BottomNavigation extends StatefulWidget {
  const BottomNavigation({super.key});

  @override
  State<BottomNavigation> createState() => _BottomNavigationState();
}

class _BottomNavigationState extends State<BottomNavigation> {
  int _selectedIndex = 0;

  static const _pages = <Widget>[
    HomeScreen(),
    Favourites(),
    Person(),
    HistoryScreen(),
  ];

  //   // @override
  //   // void initState() {
  //   //   super.initState();
  //     _appBars = [
  //       AppBar(
  //         backgroundColor: Colors.transparent,
  //         toolbarHeight: 70,

  //         leading: Padding(
  //           padding: const EdgeInsets.only(left: 30, top: 30),
  //           child: IconButton(
  //             icon: Icon(Icons.menu, color: Colors.black),
  //             onPressed: () {

  //             },
  //           ),
  //         ),

  //         actions: [
  //           Padding(
  //             padding: const EdgeInsets.only(right: 30, top: 30),
  //             child: IconButton(
  //               icon: Icon(Icons.shopping_cart_outlined, color: Colors.grey),
  //               onPressed: () {},
  //             ),
  //           ),
  //         ],
  //       ),
  //       AppBar(
  //         backgroundColor: Colors.transparent,
  //         toolbarHeight: 70,
  //         title: ,
  //         centerTitle: true,
  //       ),

  //       AppBar(
  //         backgroundColor: Colors.transparent,
  //         toolbarHeight: 70,
  //         title: ,
  //         centerTitle: true,
  //       ),

  //       AppBar(
  //         backgroundColor: Colors.transparent,
  //         toolbarHeight: 70,

  //         leading: Padding(
  //           padding: const EdgeInsets.only(top: 30, left: 10),
  //           child: IconButton(
  //             icon: Icon(Icons.arrow_back_ios),
  //             onPressed: () {
  //               // Navigator.pushReplacement(
  //               //   context,
  //               //   MaterialPageRoute(builder: (context) => HomeScreen()),
  //               // );
  //             },
  //           ),
  //         ),
  //         titleSpacing: 120,
  //         title: Padding(
  //           padding: const EdgeInsets.only(top: 30),
  //           child: Text(
  //             'History',
  //             style: TextStyle(
  //               color: Color(0xff000000),
  //               fontSize: 16,
  //               fontWeight: FontWeight.w600,
  //             ),
  //           ),
  //         ),
  //       ),
  //     ];
  //  // }

  @override
  Widget build(BuildContext context) {
    // final List<PreferredSizeWidget> _appBars = [

    //   AppBar(
    //     backgroundColor: Colors.transparent,
    //     toolbarHeight: 70,
    //     title: Text("Favourites", style: TextStyle(color: Colors.black)),
    //     centerTitle: true,
    //   ),

    //   AppBar(
    //     backgroundColor: Colors.transparent,
    //     toolbarHeight: 70,
    //     title: Text("Profile", style: TextStyle(color: Colors.black)),
    //     centerTitle: true,
    //   ),

    //   AppBar(
    //     backgroundColor: Colors.transparent,
    //     toolbarHeight: 70,

    //     leading: Padding(
    //       padding: const EdgeInsets.only(top: 30, left: 10),
    //       child:
    //     ),
    //     titleSpacing: 120,
    //     title: Padding(
    //       padding: const EdgeInsets.only(top: 30),
    //       child: Text(
    //         'History',
    //         style: TextStyle(
    //           color: Color(0xff000000),
    //           fontSize: 16,
    //           fontWeight: FontWeight.w600,
    //         ),
    //       ),
    //     ),
    //   ),
    // ];

    return PopScope(
      canPop: false,
      child: Scaffold(
        backgroundColor: Color(0xffF2F2F2),
        extendBodyBehindAppBar: true,
        appBar: AppBar(
          backgroundColor: Colors.transparent,
          toolbarHeight: 70,
          title: _selectedIndex == 0
              ? Text("")
              : _selectedIndex == 1
              ? Text("Favourites", style: TextStyle(color: Colors.black))
              : Text("Profile", style: TextStyle(color: Colors.black)),

          leading: _selectedIndex == 0
              ? IconButton(
                  icon: Icon(Icons.menu, color: Colors.black),
                  onPressed: () {},
                )
              : IconButton(
                  icon: Icon(Icons.arrow_back_ios),
                  onPressed: () {
                    setState(() {
                      _selectedIndex = 0;
                    });
                  },
                ),

          actions: _selectedIndex == 0
              ? [
                  IconButton(
                    icon: Icon(
                      Icons.shopping_cart_outlined,
                      color: Colors.grey,
                    ),
                    onPressed: () {},
                  ),
                ]
              : [],
        ),
        body: _pages[_selectedIndex],
        extendBody: true,

        bottomNavigationBar: BottomNavigationBar(
          selectedItemColor: Color(0xffFA4A0C),
          unselectedItemColor: Colors.grey,
          type: BottomNavigationBarType.fixed,
          //backgroundColor: Colors.transparent,
          elevation: 0.0,
          items: const <BottomNavigationBarItem>[
            BottomNavigationBarItem(icon: Icon(Icons.home), label: ''),
            BottomNavigationBarItem(
              icon: Icon(Icons.favorite_border),
              label: '',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.person_outlined),
              label: '',
            ),
            BottomNavigationBarItem(icon: Icon(Icons.history), label: ''),
          ],

          currentIndex: _selectedIndex,
          onTap: (int index) {
            setState(() {
              _selectedIndex = index;
            });
          },
        ),
      ),
    );
  }
}
