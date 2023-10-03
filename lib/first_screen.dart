import 'package:flutter/material.dart';
import 'package:badges/badges.dart' as badges;
import 'package:route_exam/second_screen.dart';
import 'package:route_exam/tabs/home_tab.dart';
import 'package:route_exam/tabs/widget_tab.dart';

class FirstScreen extends StatefulWidget {
  FirstScreen({super.key});
  static const String routeName = "FirstScreen";

  @override
  State<FirstScreen> createState() => _FirstScreenState();
}

class _FirstScreenState extends State<FirstScreen> {
  int index = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: BottomNavigationBar(
          type: BottomNavigationBarType.fixed,
          showSelectedLabels: false,
          selectedItemColor: Colors.green,
          showUnselectedLabels: false,
          currentIndex: index,
          onTap: (value) {
            index = value;
            setState(() {});
            if(index==1) {
              //Navigator.pop(context, SecondScreen.routeName);
              //Navigator.of(context).push(MaterialPageRoute(builder: (context) => SecondScreen(),));
            }
          },
          items: const [
            BottomNavigationBarItem(
                icon: Icon(Icons.home),
                label: "home",
                backgroundColor: Colors.green),
            BottomNavigationBarItem(
                icon: ImageIcon(AssetImage("assets/images/Icon.png")),
                label: "widget"),
            BottomNavigationBarItem(
                icon: Icon(Icons.calendar_today), label: "calendar"),
            BottomNavigationBarItem(icon: Icon(Icons.person), label: "person"),
          ]),
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.white,
        title: Row(
          children: [
            Image.asset("assets/images/logo.png"),
            const SizedBox(
              width: 5,
            ),
            const SizedBox(
              width: 10,
            ),
            const Text(
              "Moody ",
              style: TextStyle(
                  fontSize: 30,
                  color: Colors.black,
                  fontWeight: FontWeight.w300),
            ),
          ],
        ),
        actions: [
          Center(
            child: Padding(
              padding: const EdgeInsets.only(right: 15),
              child: badges.Badge(
                badgeContent: ClipRRect(
                    child: Container(
                  color: Colors.red,
                  width: 5,
                  height: 5,
                )),
                child: const Icon(Icons.notifications,
                    color: Colors.black, size: 40),
              ),
            ),
          )
        ],
      ),
      body: tabs[index],
    );
  }

  List<Widget> tabs = [HomeTab(), WidgetTab(), HomeTab(), WidgetTab()];
}
