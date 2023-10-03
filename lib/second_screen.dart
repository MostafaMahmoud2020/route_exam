import 'package:flutter/material.dart';
import 'package:badges/badges.dart' as badges;
import 'package:route_exam/tabs/card_item.dart';
import 'package:route_exam/third_screen.dart';

class SecondScreen extends StatefulWidget {
  SecondScreen({super.key});

  static const String routeName = "secondScreen";

  @override
  State<SecondScreen> createState() => _SecondScreenState();
}

class _SecondScreenState extends State<SecondScreen> {
  int index = 0;
  List<CardItem> card = [
    CardItem("7 days", "Morning Yoga", "Improve mental focus.",
        "assets/images/[removal 2.png"),
    CardItem("3 days", "Plank Exercise", "Improve posture and stability.",
        "assets/images/pngwing 1.png"),
    CardItem("7 days", "Morning Yoga", "Improve mental focus.",
        "assets/images/[removal 2.png"),
    CardItem("3 days", "Plank Exercise", "Improve posture and stability.",
        "assets/images/pngwing 1.png"),
  ];

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 4,
      child: Scaffold(
        bottomNavigationBar: BottomNavigationBar(
            type: BottomNavigationBarType.fixed,
            showSelectedLabels: true,
            selectedItemColor: Colors.blue,
            showUnselectedLabels: false,
            currentIndex: index,
            onTap: (value) {
              index = value;
              setState(() {});
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
              BottomNavigationBarItem(
                  icon: Icon(Icons.person), label: "person"),
            ]),
        body: SafeArea(
          child: Column(children: [
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Row(
                children: [
                  InkWell(
                    child: CircleAvatar(
                      radius: 35,
                      backgroundImage:
                          AssetImage("assets/images/leoMessi400.jpg"),
                    ),
                    onTap: () {
                      Navigator.pushNamed(context, ThirdScreen.routeName);
                    },
                  ),
                  const SizedBox(
                    width: 20,
                  ),
                  const Column(
                    children: [
                      Text("Hello,Messi", style: TextStyle(fontSize: 16)),
                      Text(
                        "Ready to workout?",
                        style: TextStyle(
                            fontWeight: FontWeight.bold, fontSize: 18),
                      )
                    ],
                  ),
                  const Spacer(),
                  badges.Badge(
                    badgeContent: ClipRRect(
                        child: Container(
                      color: Colors.red,
                      width: 3,
                      height: 3,
                    )),
                    child: const Icon(Icons.notifications_none,
                        color: Colors.black, size: 35),
                  ),
                ],
              ),
            ),
            const SizedBox(
              height: 10,
            ),
            const Card(
              color: Color(0xffF8F9FC),
              child: Padding(
                padding: EdgeInsets.all(8.0),
                child: IntrinsicHeight(
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Column(
                        children: [
                          Row(
                            children: [
                              ImageIcon(AssetImage("assets/images/heart.png")),
                              SizedBox(
                                width: 5,
                              ),
                              Text(
                                "Heart rate",
                                style: TextStyle(
                                    fontSize: 15, color: Colors.black),
                              )
                            ],
                          ),
                          Text(
                            "81 BPM",
                            style: TextStyle(
                                fontSize: 15, fontWeight: FontWeight.bold),
                          )
                        ],
                      ),
                      VerticalDivider(color: Colors.black, width: 5),
                      Column(
                        children: [
                          Row(
                            children: [
                              ImageIcon(AssetImage("assets/images/Icon2.png")),
                              SizedBox(
                                width: 5,
                              ),
                              Text(
                                "To-do",
                                style: TextStyle(
                                    fontSize: 15, color: Colors.black),
                              )
                            ],
                          ),
                          Text(
                            "32.5%",
                            style: TextStyle(
                                fontSize: 15, fontWeight: FontWeight.bold),
                          )
                        ],
                      ),
                      VerticalDivider(color: Colors.black, width: 5),
                      Column(
                        children: [
                          Row(
                            children: [
                              ImageIcon(AssetImage("assets/images/Group2.png")),
                              SizedBox(
                                width: 5,
                              ),
                              Text(
                                "Calo",
                                style: TextStyle(
                                    fontSize: 15, color: Colors.black),
                              )
                            ],
                          ),
                          Text(
                            "1000 cal",
                            style: TextStyle(
                                fontSize: 15, fontWeight: FontWeight.bold),
                          )
                        ],
                      ),
                    ],
                  ),
                ),
              ),
            ),
            const SizedBox(
              height: 10,
            ),
            const Padding(
              padding: EdgeInsets.only(left: 5),
              child: Align(
                  alignment: AlignmentDirectional.centerStart,
                  child: Text(
                    "Workout Programs",
                    style: TextStyle(
                        fontSize: 20,
                        color: Colors.black,
                        fontWeight: FontWeight.w600),
                  )),
            ),
            const SizedBox(
              height: 16,
            ),
            SizedBox(
                height: 48,
                child: AppBar(
                  backgroundColor: Colors.transparent,
                  elevation: 0,
                  bottom: const TabBar(
                      unselectedLabelColor: Color(0xff667085),
                      labelColor: Color(0xff363F72),
                      indicatorColor: Color(0xff363F72),
                      indicatorSize: TabBarIndicatorSize.label,
                      labelStyle:
                          TextStyle(fontWeight: FontWeight.w500, fontSize: 16),
                      tabs: [
                        Tab(
                          text: "All Type",
                        ),
                        Tab(
                          text: "Full Body",
                        ),
                        Tab(
                          text: "Upper",
                        ),
                        Tab(
                          text: "Lower",
                        ),
                      ]),
                )),
            Expanded(
                child: TabBarView(
              children: [
                ListView.builder(
                  itemBuilder: (context, index) {
                    return card[index];
                  },
                  itemCount: card.length,
                ),
                Container(
                  color: Colors.brown,
                ),
                Container(
                  color: Colors.amber,
                ),
                Container(
                  color: Colors.red,
                ),
              ],
            ))
          ]),
        ),
      ),
    );
  }
}
/*SingleChildScrollView(
                  child: Column(
                    children: [
                      CardItem(),
                      CardItem(),
                      CardItem(),
                    ],
                  ),
                )*/
