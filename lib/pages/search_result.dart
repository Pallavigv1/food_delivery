import 'package:flutter/material.dart';
import 'package:food_delivery/screens/home_screen.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';
//import 'package:food_delivery/screens/home_screen.dart';

class SearchResult extends StatefulWidget {
  final String searchedName;
  const SearchResult({super.key, required this.searchedName});

  @override
  State<SearchResult> createState() => _SearchResultState();
}

class _SearchResultState extends State<SearchResult> {
  @override
  Widget build(BuildContext context) {
    final List<Map<String, dynamic>> foodItems = [
      {
        "name": "Veggie tomato mix",
        "image": "assets/images/food_1.png",
        "price": 1900,
      },
      {
        "name": "Egg and cucmber...",
        "image": "assets/images/food_2.jpg",
        "price": 2300,
      },
      {
        "name": "Fried chicken m.",
        "image": "assets/images/food_2.jpg",
        "price": 3000,
      },
      {
        "name": "Moi-moi and ekpa.",
        "image": "assets/images/food_image_3.png",
        "price": 3500,
      },
      {
        "name": "Veggie tomato mix",
        "image": "assets/images/food_image_3.png",
        "price": 3000,
      },
      {
        "name": "Veggie tomato mix",
        "image": "assets/images/food_2.jpg",
        "price": 3000,
      },
      {
        "name": "Veggie tomato mix",
        "image": "assets/images/food_image_3.png",
        "price": 3000,
      },
      {
        "name": "Veggie tomato mix",
        "image": "assets/images/food_image_3.png",
        "price": 3000,
      },
      {
        "name": "Veggie tomato mix",
        "image": "assets/images/food_image_3.png",
        "price": 3000,
      },
      {
        "name": "Veggie tomato mix",
        "image": "assets/images/food_image_3.png",
        "price": 3000,
      },
    ];

    return Scaffold(
      backgroundColor: const Color.fromRGBO(230, 226, 226, 1),
      extendBodyBehindAppBar: true,
      appBar: AppBar(
        toolbarHeight: 70,
        backgroundColor: Colors.transparent,
        leading: Padding(
          padding: const EdgeInsets.only(left: 30),
          child: IconButton(
            icon: const Icon(Icons.arrow_back_ios),
            onPressed: () {
              Navigator.of(context).pop(HomeScreen());
            },
          ),
        ),
        title: Center(
          child: Padding(
            padding: EdgeInsets.only(right: 60),
            child: Text(
              widget.searchedName,
              style: TextStyle(
                color: Color(0xff000000),
                fontSize: 17,
                fontWeight: FontWeight.w600,
              ),
            ),
          ),
        ),
      ),
      body: Padding(
        padding: EdgeInsets.only(top: 100),
        child: SingleChildScrollView(
          child: Column(
            children: [
              Container(
                height: 811,
                width: double.infinity,
                decoration: BoxDecoration(
                  color: Color(0xffF9F9F9),
                  borderRadius: BorderRadius.only(
                    topRight: Radius.circular(30),
                    topLeft: Radius.circular(30),
                  ),
                ),

                child: Padding(
                  padding: EdgeInsets.only(top: 30, left: 34, right: 34),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Text(
                        'Found ${foodItems.length} results',
                        style: const TextStyle(
                          color: Color(0xff000000),
                          fontSize: 28,
                          fontWeight: FontWeight.w700,
                        ),
                      ),

                      //const SizedBox(height: 10),
                      Expanded(
                        child: MasonryGridView.count(
                          itemCount: foodItems.length,
                          crossAxisCount: 2,
                          crossAxisSpacing: 16,
                          mainAxisSpacing: 10,
                          itemBuilder: (context, index) {
                            double radius = 75;
                            double diameter = radius * 2;
                            double cardHeight = 240 + (index % 2 == 0 ? 0 : 30);

                            return Padding(
                              padding: EdgeInsets.zero,
                              child: SizedBox(
                                height: cardHeight + diameter,
                                width: 250,
                                child: Stack(
                                  clipBehavior: Clip.none,
                                  children: [
                                    Positioned(
                                      top: diameter * 0.45,
                                      left: 0,
                                      right: 0,
                                      child: Container(
                                        height: cardHeight,
                                        padding: EdgeInsets.only(
                                          top: diameter * 0.65,
                                        ),
                                        decoration: BoxDecoration(
                                          color: Color(0xffFFFFFF),
                                          borderRadius: BorderRadius.circular(
                                            30,
                                          ),
                                          boxShadow: [
                                            BoxShadow(
                                              color: Colors.black12,
                                              blurRadius: 10,
                                              offset: Offset(0, 5),
                                            ),
                                          ],
                                        ),
                                        child: Column(
                                          children: [
                                            SizedBox(height: 20),
                                            Text(
                                              foodItems[index]["name"],
                                              textAlign: TextAlign.center,
                                              style: TextStyle(
                                                fontSize: 18,
                                                fontWeight: FontWeight.w600,
                                              ),
                                            ),
                                            SizedBox(height: 15),
                                            Text(
                                              "N1, ${foodItems[index]["price"]}",
                                              style: TextStyle(
                                                color: Color(0xffFA4A0C),
                                                fontSize: 16,
                                                fontWeight: FontWeight.w700,
                                              ),
                                            ),
                                          ],
                                        ),
                                      ),
                                    ),
                                    Positioned(
                                      top: 0,
                                      left: 0,
                                      right: 0,
                                      child: Center(
                                        child: CircleAvatar(
                                          radius: radius,
                                          backgroundColor: Colors.grey[300],
                                          backgroundImage: AssetImage(
                                            foodItems[index]["image"],
                                          ),
                                        ),
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
              ),
            ],
          ),
        ),
      ),
    );
  }
}
