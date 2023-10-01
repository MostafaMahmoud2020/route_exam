import 'package:flutter/material.dart';

class CardItem extends StatelessWidget {
  String text1;
  String text2;
  String text3;
  String imagePath;

  CardItem(this.text1, this.text2, this.text3, this.imagePath);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Card(
        color: Color(0xffF8F9FC),
        child: Container(
          padding: const EdgeInsets.symmetric(vertical: 24.0, horizontal: 18),
          child: Row(
            children: [
              Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
                Container(
                  child: Text(text1,
                      style: TextStyle(
                          fontWeight: FontWeight.w500,
                          fontSize: 14,
                          color: Colors.black)),
                  padding: EdgeInsets.symmetric(vertical: 8, horizontal: 12),
                  decoration: BoxDecoration(
                      border: Border.all(color: Colors.black.withOpacity(0.5)),
                      borderRadius: BorderRadius.circular(20)),
                ),
                SizedBox(
                  height: 12,
                ),
                Text(
                  text2,
                  style: TextStyle(
                      color: Colors.black,
                      fontSize: 20,
                      fontWeight: FontWeight.w600),
                ),
                SizedBox(
                  height: 4,
                ),
                Text(
                  text3,
                  style: TextStyle(
                      color: Colors.black,
                      fontSize: 15,
                      fontWeight: FontWeight.w400),
                ),
                SizedBox(
                  height: 8,
                ),
                Row(
                  children: [
                    Icon(Icons.access_alarm_sharp,
                        color: Colors.black, size: 16),
                    SizedBox(
                      width: 6,
                    ),
                    Text(
                      "30 mins",
                      style: TextStyle(
                          fontWeight: FontWeight.w400,
                          fontSize: 12,
                          color: Colors.black),
                    )
                  ],
                )
              ]),
              Spacer(),
              Image.asset(imagePath, scale: 1.5),
            ],
          ),
        ),
      ),
    );
  }
}
