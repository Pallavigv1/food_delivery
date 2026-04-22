import 'package:flutter/material.dart';

class NotFound extends StatefulWidget {
  const NotFound({super.key});

  @override
  State<NotFound> createState() => _NotFoundState();
}

class _NotFoundState extends State<NotFound> {
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
              Navigator.of(context).pop(NotFound());
            },
          ),
        ),
        title: Center(
          child: Padding(
            padding: const EdgeInsets.only(right: 80),
            child: Text(
              'Spicy Chickens',
              style: const TextStyle(
                color: Color(0xff000000),
                fontSize: 18,
                fontWeight: FontWeight.w600,
              ),
            ),
          ),
        ),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Center(
            child: SizedBox(
              height: 200,
              width: 200,

              child: Image.asset('assets/icons/ic_NF.png'),
            ),
          ),
          SizedBox(height: 3),

          Text(
            'Item not found',
            style: TextStyle(fontSize: 28, fontWeight: FontWeight(600)),
          ),
          SizedBox(height: 3),

          Text(
            'Try searching the item with\n      a different keyword',
            style: TextStyle(
              fontSize: 17,
              fontWeight: FontWeight(400),
              color: Colors.grey,
            ),
          ),
        ],
      ),
    );
  }
}
