import 'package:flutter/material.dart';

class FoodsSection extends StatefulWidget {
  const FoodsSection({super.key});

  @override
  State<FoodsSection> createState() => _FoodsSectionState();
}

class _FoodsSectionState extends State<FoodsSection> {
  final List<Map<String, dynamic>> foodData = [
    {"name": "ABCD", "image": "assets/images/food_1.png", "price": 1900},
    {"name": "BCDE", "image": "assets/images/food_2.jpg", "price": 2300},
    {"name": "DEFG", "image": "assets/images/food_3.jpg", "price": 3000},
  ];

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.all(16.0),

      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          SizedBox(height: 10),

          Row(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              Padding(
                padding: const EdgeInsets.only(left: 10),
                child: Text(
                  'See more',
                  style: TextStyle(
                    fontSize: 12,
                    fontWeight: FontWeight.w600,
                    color: Color(0xffFA4A0C),
                  ),
                ),
              ),
            ],
          ),

          Flexible(
            child: SizedBox(
              height: 400,
              child: ListView.separated(
                scrollDirection: Axis.horizontal,
                separatorBuilder: (context, index) {
                  return SizedBox(width: 30);
                },
                itemCount: foodData.length,

                itemBuilder: (context, index) {
                  double radius = 30;
                  double diameter = radius * 2;

                  return SizedBox(
                    width: 250,

                    child: Stack(
                      clipBehavior: Clip.none,

                      children: [
                        Positioned(
                          top: diameter * 0.45,

                          child: Container(
                            height: 314,
                            width: 250,
                            padding: EdgeInsets.only(top: diameter * 0.65),
                            decoration: BoxDecoration(
                              color: Color(0xffFFFFFF),
                              borderRadius: BorderRadius.circular(30),
                            ),
                            child: Column(
                              children: [
                                SizedBox(height: 100),
                                Text(
                                  foodData[index]["name"],
                                  textAlign: TextAlign.center,
                                  style: TextStyle(
                                    fontSize: 22,
                                    fontWeight: FontWeight.w600,
                                  ),
                                ),
                                SizedBox(height: 30),
                                Text(
                                  "N${index + 1}${foodData[index]["price"]}",
                                  textAlign: TextAlign.center,
                                  style: TextStyle(
                                    color: Color(0xffFA4A0C),
                                    fontSize: 17,
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
                              radius: 75,
                              backgroundColor: Colors.grey[300],
                              backgroundImage: AssetImage(
                                foodData[index]["image"],
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  );
                },
              ),
            ),
          ),
        ],
      ),
    );
  }
}
