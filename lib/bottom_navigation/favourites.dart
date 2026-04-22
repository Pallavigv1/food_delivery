import 'package:flutter/material.dart';
import 'package:food_delivery/constants/wishlist_data.dart';
import 'package:food_delivery/constants/food_data.dart';

class Favourites extends StatefulWidget {
  const Favourites({super.key});

  @override
  State<Favourites> createState() => _FavouritesState();
}

class _FavouritesState extends State<Favourites> {
  @override
  Widget build(BuildContext context) {
    List<FoodItem> wishlistItems = FavData.wishlistItems;

    if (wishlistItems.isEmpty) {
      return Center(
        child: Text('No favorites yet', style: TextStyle(fontSize: 20)),
      );
    } else {
      return ListView.builder(
        itemCount: wishlistItems.length,
        itemBuilder: (BuildContext context, int index) {
          FoodItem item = wishlistItems[index];

          return Padding(
            padding: EdgeInsets.symmetric(horizontal: 20, vertical: 10),
            child: Container(
              height: 100,
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(20),
              ),
              child: Row(
                children: [
                  Padding(
                    padding: EdgeInsets.all(12.0),
                    child: CircleAvatar(
                      radius: 30,
                      backgroundImage: AssetImage(item.image),
                    ),
                  ),

                  Expanded(
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          item.name,
                          style: TextStyle(
                            fontSize: 16,
                            fontWeight: FontWeight.w600,
                          ),
                        ),

                        SizedBox(height: 5),

                        Text(
                          "N1,${item.price}",
                          style: TextStyle(
                            color: Color(0xffFA4A0C),
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ],
                    ),
                  ),

                  IconButton(
                    icon: Icon(Icons.favorite, color: Colors.red),
                    onPressed: () {
                      setState(() {
                        FavData.wishlistItems.remove(item);
                        item.isWishlisted = false;
                      });
                    },
                  ),
                ],
              ),
            ),
          );
        },
      );
    }
  }
}
