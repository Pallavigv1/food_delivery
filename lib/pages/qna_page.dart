import 'package:flutter/material.dart';
import 'package:food_delivery/pages/personal_details.dart';

class QnaPage extends StatefulWidget {
  final String searchedQuery;
  const QnaPage({super.key, required this.searchedQuery});

  @override
  State<QnaPage> createState() => _QnaPageState();
}

class _QnaPageState extends State<QnaPage> {
  final TextEditingController searchController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xffF5F5F8),
      //extendBodyBehindAppBar: true,
      appBar: AppBar(
        leading: IconButton(
          onPressed: () {
            Navigator.of(context).pop();
          },
          icon: Icon(Icons.arrow_back_ios, color: Colors.black, size: 18),
        ),
        actions: [
          Padding(
            padding: const EdgeInsets.only(right: 18),
            child: GestureDetector(
              onTap: () {
                Navigator.of(context).push(
                  MaterialPageRoute(
                    builder: (context) {
                      return PersonalDetails();
                    },
                  ),
                );
              },
              child: CircleAvatar(
                radius: 15,
                child: Image.asset('assets/icons/ic_profile.png'),
              ),
            ),
          ),
        ],
      ),

      body: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,

        children: [
          Padding(
            padding: const EdgeInsets.only(left: 20, top: 10),
            child: Text(
              'How can we\nhelp you today ?',
              style: TextStyle(
                fontSize: 35,
                fontWeight: FontWeight.bold,
                color: Color(0xff000000),
              ),
            ),
          ),
          SizedBox(height: 25),
          Padding(
            padding: EdgeInsets.only(left: 20, right: 20),
            child: SizedBox(
              height: 60,

              child: GestureDetector(
                child: TextField(
                  controller: searchController,

                  onSubmitted: (query) {
                    // Navigator.of(context).push(
                    //   MaterialPageRoute(
                    //     builder: (context) {
                    //       return QnaPage(searchedQuery: query);
                    //     },
                    //   ),
                    // );
                  },
                  decoration: InputDecoration(
                    filled: true,
                    fillColor: Color(0xffEFEEEE),
                    visualDensity: VisualDensity(horizontal: 2.5),

                    prefixIcon: Icon(Icons.search),
                    hintText: ' Type to Search',
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
          ),
        ],
      ),
    );
  }
}
