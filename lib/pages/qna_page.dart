import 'package:flutter/material.dart';
import 'package:food_delivery/pages/personal_details.dart';
import 'package:food_delivery/utilities/artcles_apiservice.dart';

class QnaPage extends StatefulWidget {
  final String searchedQuery;
  const QnaPage({super.key, required this.searchedQuery});

  @override
  State<QnaPage> createState() => _QnaPageState();
}

class _QnaPageState extends State<QnaPage> {
  final TextEditingController searchController = TextEditingController();

  List articles = [];
  bool isLoading = false;
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

                  onSubmitted: (query) async {
                    setState(() {
                      isLoading = true;
                    });
                    try {
                      final apiServices = ArtclesApiservice();
                      final results = await apiServices.searchArticles(query);
                      setState(() {
                        articles = results;
                        isLoading = false;
                      });
                    } catch (e) {
                      setState(() {
                        isLoading = false;
                      });
                    }
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

          Expanded(
            child: isLoading
                ? Center(child: CircularProgressIndicator())
                : ListView.builder(
                    itemCount: articles.length,
                    itemBuilder: (context, index) {
                      final item = articles[index];

                      return Padding(
                        padding: EdgeInsets.symmetric(
                          horizontal: 20,
                          vertical: 10,
                        ),
                        child: Container(
                          padding: EdgeInsets.all(15),
                          decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(15),
                          ),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                item["title"],
                                style: TextStyle(
                                  fontSize: 16,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                              SizedBox(height: 8),
                              Text(
                                item["body"],
                                style: TextStyle(color: Colors.grey),
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
    );
  }
}
