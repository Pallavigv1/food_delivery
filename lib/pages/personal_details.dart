import 'package:flutter/material.dart';
import 'package:food_delivery/bottom_navigation/fav_blank.dart';

class PersonalDetails extends StatefulWidget {
  const PersonalDetails({super.key});

  @override
  State<PersonalDetails> createState() => _PersonalDetailsState();
}

class _PersonalDetailsState extends State<PersonalDetails> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xffF5F5F8),
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
              Navigator.of(context).pop(FavBlank());
            },
          ),
        ),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        //crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          SizedBox(height: 100),

          Padding(
            padding: const EdgeInsets.only(left: 30),
            child: Align(
              alignment: Alignment.centerLeft,

              child: Text(
                'My profile',
                style: TextStyle(
                  color: Color(0xff000000),
                  fontSize: 30,
                  fontWeight: FontWeight.w600,
                ),
              ),
            ),
          ),
          SizedBox(height: 20),

          Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Padding(
                padding: const EdgeInsets.only(left: 30),
                child: Text(
                  'Personal details',
                  style: TextStyle(
                    color: Color(0xff000000),
                    fontSize: 17,
                    fontWeight: FontWeight(600),
                  ),
                ),
              ),
              SizedBox(width: 100),

              TextButton(
                child: Text(
                  'change',
                  style: TextStyle(
                    color: Color(0xffF47B0A),
                    fontSize: 13,
                    fontWeight: FontWeight(400),
                  ),
                ),
                onPressed: () {},
              ),
            ],
          ),
          SizedBox(height: 10),

          Padding(
            padding: const EdgeInsets.only(left: 20, right: 20),
            child: Container(
              width: 374,
              height: 200,
              decoration: BoxDecoration(
                color: Color(0xffFFFFFF),
                borderRadius: BorderRadius.circular(20),
              ),
              child: Padding(
                padding: const EdgeInsets.all(16),
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(top: 4, left: 0),
                      child: Container(
                        width: 60,
                        height: 60,
                        decoration: BoxDecoration(
                          color: Color(0xffC4C4C4),
                          borderRadius: BorderRadius.circular(10),
                        ),
                        child: Image.asset(
                          'assets/icons/ic_profile.png',
                          fit: BoxFit.cover,
                        ),
                      ),
                    ),
                    SizedBox(width: 16),

                    Flexible(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Padding(
                            padding: const EdgeInsets.only(right: 0, top: 0),
                            child: Text(
                              'Marvis Ighedosa',
                              style: TextStyle(
                                fontSize: 18,
                                fontWeight: FontWeight(600),
                              ),
                            ),
                          ),
                          SizedBox(height: 2),
                          Text('Dosamarvis@gmail.com'),

                          //SizedBox(height: ),
                          Padding(
                            padding: const EdgeInsets.only(left: 0, right: 20),
                            child: Divider(
                              thickness: 1,
                              color: Colors.grey.shade300,
                            ),
                          ),
                          Text(
                            '+234 9011039271',
                            style: TextStyle(
                              fontSize: 15,
                              fontWeight: FontWeight(400),
                            ),
                          ),

                          //SizedBox(height: 2),
                          Padding(
                            padding: const EdgeInsets.only(left: 0, right: 20),
                            child: Divider(
                              thickness: 1,
                              color: Colors.grey.shade300,
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(
                              right: 0,
                              //bottom: 10,
                            ),
                            child: Text(
                              'No 15 uti street off ovie\npalace road effurun delta\nstate',
                              style: TextStyle(
                                fontSize: 15,
                                fontWeight: FontWeight(400),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
          SizedBox(height: 20),
          Container(
            height: 60,
            width: 315,

            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(20),
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Padding(
                  padding: const EdgeInsets.only(left: 30),
                  child: Text(
                    'Orders',
                    style: TextStyle(
                      fontSize: 17,
                      fontWeight: FontWeight.w600,
                      color: Colors.black,
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(right: 20),
                  child: Icon(
                    Icons.arrow_forward_ios,
                    size: 16,
                    color: Colors.black,
                  ),
                ),
              ], // pate  4 before this
            ),
          ),
          SizedBox(height: 20),
          Container(
            height: 60,
            width: 315,

            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(20),
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Padding(
                  padding: const EdgeInsets.only(left: 30),
                  child: Text(
                    'Pending reviews',
                    style: TextStyle(
                      fontSize: 17,
                      fontWeight: FontWeight.w600,
                      color: Colors.black,
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(right: 20),
                  child: Icon(
                    Icons.arrow_forward_ios,
                    size: 16,
                    color: Colors.black,
                  ),
                ),
              ], // pate  4 before this
            ),
          ),
          SizedBox(height: 20),
          Container(
            height: 60,
            width: 315,

            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(20),
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Padding(
                  padding: const EdgeInsets.only(left: 30),
                  child: Text(
                    'Faq',
                    style: TextStyle(
                      fontSize: 17,
                      fontWeight: FontWeight.w600,
                      color: Colors.black,
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(right: 20),
                  child: Icon(
                    Icons.arrow_forward_ios,
                    size: 16,
                    color: Colors.black,
                  ),
                ),
              ], // pate  4 before this
            ),
          ),
          SizedBox(height: 20),
          Container(
            height: 60,
            width: 315,

            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(20),
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Padding(
                  padding: const EdgeInsets.only(left: 30),
                  child: Text(
                    'Help',
                    style: TextStyle(
                      fontSize: 17,
                      fontWeight: FontWeight.w600,
                      color: Colors.black,
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(right: 20),
                  child: Icon(
                    Icons.arrow_forward_ios,
                    size: 16,
                    color: Colors.black,
                  ),
                ),
              ], // pate  4 before this
            ),
          ),
          SizedBox(height: 20),

          SizedBox(
            height: 75,
            width: 325,

            child: Padding(
              padding: const EdgeInsets.only(bottom: 10, left: 0, right: 0),
              child: ElevatedButton(
                style: ButtonStyle(
                  backgroundColor: WidgetStateProperty.all<Color>(
                    Color(0xffFA4A0C),
                  ),
                ),
                onPressed: null,

                child: Text(
                  'Update',
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
    );
  }
}
