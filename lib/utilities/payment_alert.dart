import 'package:flutter/material.dart';

class PaymentAlert extends StatelessWidget {
  const PaymentAlert({super.key});

  @override
  Widget build(BuildContext context) {
    return Dialog(
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(30)),
      child: Container(
        height: 322,
        width: 315,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(30),
          color: Color(0xffFFFFFF),
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Container(
              height: 66,
              width: 315,
              decoration: BoxDecoration(
                color: Color(0xffEDEDED),
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(30),
                  topRight: Radius.circular(30),
                ),
              ),

              child: Padding(
                padding: const EdgeInsets.only(left: 30, top: 20),
                child: Text(
                  'Please note',
                  style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight(500),
                    backgroundColor: Color(0xffEDEDED),
                  ),
                ),
              ),
            ),
            SizedBox(height: 20),
            Column(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Padding(
                  padding: const EdgeInsets.only(right: 100),
                  child: Text(
                    "DELIVERY TO MAINLAND",
                    style: TextStyle(
                      fontSize: 12,
                      color: Colors.grey,
                      letterSpacing: 1,
                    ),
                  ),
                ),
                SizedBox(height: 5),
                Padding(
                  padding: const EdgeInsets.only(right: 160),
                  child: Text(
                    "N1000 - N2000",
                    style: TextStyle(fontSize: 14, fontWeight: FontWeight.w500),
                  ),
                ),
              ],
            ),

            SizedBox(height: 15),
            Padding(
              padding: EdgeInsets.only(left: 20, right: 20),
              child: Divider(),
            ),
            SizedBox(height: 15),

            Column(
              children: [
                Padding(
                  padding: const EdgeInsets.only(right: 120),
                  child: Text(
                    "DELIVERY TO ISLAND",
                    style: TextStyle(
                      fontSize: 12,
                      color: Colors.grey,
                      letterSpacing: 1,
                    ),
                  ),
                ),
                SizedBox(height: 5),
                Padding(
                  padding: const EdgeInsets.only(right: 150),
                  child: Text(
                    "N2000 - N3000",
                    style: TextStyle(fontSize: 14, fontWeight: FontWeight.w500),
                  ),
                ),
              ],
            ),

            SizedBox(height: 25),

            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                TextButton(
                  onPressed: () {
                    Navigator.pop(context);
                  },
                  child: Padding(
                    padding: const EdgeInsets.only(left: 30),
                    child: Text("Cancel", style: TextStyle(color: Colors.grey)),
                  ),
                ),

                SizedBox(
                  height: 60,
                  width: 159,
                  child: Padding(
                    padding: const EdgeInsets.only(right: 10),
                    child: ElevatedButton(
                      style: ElevatedButton.styleFrom(
                        backgroundColor: Color(0xffFA4A0C),
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(25),
                        ),
                      ),
                      onPressed: () {
                        Navigator.pop(context);
                      },
                      child: Text(
                        "Proceed",
                        style: TextStyle(color: Color(0xffFFFFFF)),
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
