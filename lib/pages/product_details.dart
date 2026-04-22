import 'package:flutter/material.dart';
import 'package:food_delivery/constants/cart_data.dart';
import 'package:food_delivery/constants/food_data.dart';
import 'package:food_delivery/constants/wishlist_data.dart';
import 'package:food_delivery/screens/home_screen.dart';
//import 'package:food_delivery/pages/no_wifi.dart';

class ProductDetails extends StatefulWidget {
  final FoodItem foodItem;

  const ProductDetails({super.key, required this.foodItem});

  @override
  State<ProductDetails> createState() => _ProductDetailsState();
}

class _ProductDetailsState extends State<ProductDetails> {
  bool isFavorite = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xffF6F6F9),
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
              Navigator.of(context).pop(HomeScreen());
            },
          ),
        ),
        actions: [
          Padding(
            padding: const EdgeInsets.only(right: 30, top: 0),
            child: IconButton(
              icon: Icon(
                isFavorite ? Icons.favorite : Icons.favorite_border_outlined,
                color: isFavorite ? Colors.red : Colors.black,
              ),
              onPressed: () {
                setState(() {
                  if (isFavorite == true) {
                    isFavorite = false;
                    FavData.wishlistItems.remove(widget.foodItem);
                  } else {
                    isFavorite = true;
                    FavData.wishlistItems.add(widget.foodItem);
                  }
                });
              },
            ),
          ),
        ],
      ),

      body: Padding(
        padding: const EdgeInsets.only(top: 50),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            // Align(
            //   alignment: Alignment.topRight,
            //   child: IconButton(
            //     onPressed: () {
            //       Navigator.of(context).push(
            //         MaterialPageRoute(
            //           builder: (context) {
            //             return Favourites();
            //           },
            //         ),
            //       );
            //     },
            //     icon: Icon(Icons.favorite_border_outlined),
            //   ),
            // ),
            Align(
              alignment: Alignment.topCenter,
              child: Padding(
                padding: const EdgeInsets.only(top: 3),
                child: Container(
                  height: 200,
                  width: 200,
                  decoration: BoxDecoration(
                    color: Colors.grey[300],
                    shape: BoxShape.circle,
                    boxShadow: [
                      BoxShadow(color: Colors.white60, blurRadius: 20.0),
                    ],
                    image: DecorationImage(
                      image: AssetImage(widget.foodItem.image),
                      fit: BoxFit.fill,
                    ),
                  ),
                ),
              ),
            ),
            SizedBox(height: 5),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Center(
                  child: Image(
                    height: 60,
                    width: 80,
                    image: AssetImage('assets/icons/Group 6.png'),
                  ),
                ),
              ],
            ),

            SizedBox(height: 5),

            Text(
              widget.foodItem.name,
              style: TextStyle(
                fontSize: 28,
                fontWeight: FontWeight.w600,
                color: Color(0xff000000),
              ),
            ),
            SizedBox(height: 3),

            Text(
              'N1,${widget.foodItem.price}',
              style: TextStyle(
                color: Color(0xffFA4A0C),
                fontSize: 22,
                fontWeight: FontWeight(700),
              ),
            ),
            SizedBox(height: 30),

            Align(
              alignment: Alignment.centerLeft,
              child: Padding(
                padding: const EdgeInsets.only(left: 10),
                child: Column(
                  children: [
                    Align(
                      alignment: Alignment.centerLeft,

                      child: Padding(
                        padding: const EdgeInsets.only(left: 35),
                        child: Text(
                          'Delivery info',
                          style: TextStyle(
                            color: Colors.black,
                            fontSize: 17,
                            fontWeight: FontWeight(600),
                          ),
                        ),
                      ),
                    ),

                    Align(
                      alignment: Alignment.centerLeft,

                      child: Padding(
                        padding: const EdgeInsets.only(left: 35),
                        child: Text(
                          'Delivered between monday aug and\nthursday 20 from 8pm to 91:32 pm',
                          style: TextStyle(
                            color: Colors.grey,
                            fontSize: 14,
                            fontWeight: FontWeight(400),
                          ),
                        ),
                      ),
                    ),

                    SizedBox(height: 40),

                    Align(
                      alignment: Alignment.centerLeft,

                      child: Padding(
                        padding: const EdgeInsets.only(left: 35),
                        child: Text(
                          'Return policy',
                          style: TextStyle(
                            fontSize: 17,
                            fontWeight: FontWeight(600),
                          ),
                        ),
                      ),
                    ),

                    Align(
                      alignment: Alignment.centerLeft,

                      child: Padding(
                        padding: const EdgeInsets.only(left: 35),
                        child: Text(
                          'All our foods are double checked before\nleaving our stores so by any case you\nfound a broken food please contact our\nhotline immediately.',

                          style: TextStyle(
                            color: Colors.grey,
                            fontSize: 14,
                            fontWeight: FontWeight(400),
                          ),
                        ),
                      ),
                    ),
                    SizedBox(height: 60),

                    SizedBox(
                      height: 75,
                      width: 325,

                      child: Padding(
                        padding: const EdgeInsets.only(
                          bottom: 5,
                          left: 10,
                          right: 10,
                        ),
                        child: ElevatedButton(
                          style: ButtonStyle(
                            backgroundColor: WidgetStateProperty.all<Color>(
                              Color(0xffFA4A0C),
                            ),
                          ),
                          onPressed: () {
                            setState(() {
                              MyCartData.cartItems.add({
                                'name': widget.foodItem.name,
                                'image': widget.foodItem.image,
                                'price': widget.foodItem.price,
                                'counter': 1,
                              });
                            });
                            ScaffoldMessenger.of(context).showSnackBar(
                              SnackBar(
                                content: Text(
                                  '${widget.foodItem.name} added to cart',
                                ),
                              ),
                            );
                          },

                          child: Text(
                            'Add to cart',
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
          ],
        ),
      ),
    );
  }
}
