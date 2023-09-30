import 'package:flutter/material.dart';
import 'package:badges/badges.dart' as badges;

class SecondScreen extends StatelessWidget {
  SecondScreen({super.key});

  static const String routeName = "secondScreen";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(children: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Row(
              children: [
                CircleAvatar(
                  radius: 35,
                  backgroundImage: AssetImage("assets/images/leoMessi400.jpg"),
                ),
                SizedBox(
                  width: 20,
                ),
                Column(
                  children: [
                    Text("Hello,Jade", style: TextStyle(fontSize: 16)),
                    Text(
                      "Ready to workout?",
                      style:
                          TextStyle(fontWeight: FontWeight.bold, fontSize: 18),
                    )
                  ],
                ),
                Spacer(),
                badges.Badge(
                  badgeContent: ClipRRect(
                      child: Container(
                    color: Colors.red,
                    width: 3,
                    height: 3,
                  )),
                  child: const Icon(Icons.notifications,
                      color: Colors.black, size: 35),
                ),
              ],
            ),
          )
        ]),
      ),
    );
  }
}
