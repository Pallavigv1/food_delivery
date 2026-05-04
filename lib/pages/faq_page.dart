import 'package:flutter/material.dart';
import 'package:food_delivery/pages/qna_page.dart';

class FaqPage extends StatefulWidget {
  const FaqPage({super.key});

  @override
  State<FaqPage> createState() => _FaqPageState();
}

class _FaqPageState extends State<FaqPage> {
  final TextEditingController searchController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xffF5F5F8),
      appBar: AppBar(
        title: Text('FAQ'),
        leading: IconButton(
          onPressed: () {
            Navigator.of(context).pop();
          },
          icon: Icon(Icons.arrow_back_ios, color: Colors.black),
        ),
      ),

      body: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Center(
              child: Padding(
                padding: EdgeInsets.only(
                  top: MediaQuery.of(context).size.height * 0.12,
                ),
                child: Image.asset(
                  'assets/icons/ic_Faq.png',
                  height: MediaQuery.of(context).size.height * 0.3,
                ),
              ),
            ),

            SizedBox(height: 20),

            Text(
              'How can we help\n     you today?',
              style: TextStyle(
                fontSize: 40,
                fontWeight: FontWeight.bold,
                color: Color(0xff000000),
              ),
            ),
            SizedBox(height: 10),
            Text(
              "We are available 24/7 to help clarify any\n    confusion you have on our product or service and\n   ensure that you have a seamless\n     experience throughout the process ",
              textAlign: TextAlign.center,
              style: TextStyle(fontSize: 15, color: Colors.grey),
            ),
            SizedBox(height: MediaQuery.of(context).size.height * 0.05),

            Padding(
              padding: EdgeInsets.only(left: 20, right: 20),
              child: SizedBox(
                height: 60,

                child: GestureDetector(
                  child: TextField(
                    controller: searchController,

                    onSubmitted: (query) {
                      Navigator.of(context).push(
                        MaterialPageRoute(
                          builder: (context) {
                            return QnaPage(searchedQuery: query);
                          },
                        ),
                      );
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
      ),
    );
  }
}
