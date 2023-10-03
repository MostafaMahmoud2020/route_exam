import 'package:flutter/material.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:route_exam/tabs/widget_tab.dart';

class ThirdScreen extends StatelessWidget {
  static const String routeName = "ThirdScreen";

  List<String> images = [
    "assets/images/Frame 24.png",
    "assets/images/Frame 3466530.png",
  ];

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 4,
      child: Scaffold(
        body: SafeArea(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              const SizedBox(
                height: 10,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Image.asset("assets/images/Frame555.png"),
                  const SizedBox(
                    width: 5,
                  ),
                  const Text(
                    "AliceCare",
                    style: TextStyle(
                        color: Colors.black,
                        fontSize: 24,
                        fontFamily: "Milonga"),
                  )
                ],
              ),
              const SizedBox(
                height: 24,
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: TextField(
                  decoration: InputDecoration(
                      hintText: "Articles,Video,Audio and More,..",
                      hintStyle:
                          const TextStyle(color: Colors.grey, fontSize: 16),
                      prefixIcon: const Icon(Icons.search, color: Colors.grey),
                      border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(8),
                          borderSide:
                              const BorderSide(color: Colors.grey, width: 2))),
                ),
              ),
              SizedBox(
                height: 50,
                child: AppBar(
                  backgroundColor: Colors.transparent,
                  elevation: 0,
                  bottom: TabBar(
                      indicatorPadding: EdgeInsets.zero,
                      indicator: BoxDecoration(
                        color: Color(0xffD6BBFB),
                        borderRadius: BorderRadius.circular(30),
                      ),
                      indicatorSize: TabBarIndicatorSize.label,
                      indicatorWeight: 0,
                      labelPadding: const EdgeInsets.symmetric(horizontal: 10),
                      padding: const EdgeInsets.symmetric(horizontal: 3),
                      labelStyle: const TextStyle(
                          fontWeight: FontWeight.w500, fontSize: 16),
                      labelColor: Color(0xff6941C6),
                      unselectedLabelColor: Colors.grey,
                      isScrollable: true,
                      tabs: [
                        Tab(
                          child: Container(
                              padding: const EdgeInsets.all(13),
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(30),
                                  border: Border.all(color: Colors.grey)),
                              child: const Text(
                                "Discover",
                                style: TextStyle(),
                              )),
                        ),
                        Tab(
                          child: Container(
                              padding: const EdgeInsets.all(13),
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(30),
                                  border:
                                      Border.all(width: 1, color: Colors.grey)),
                              child: const Text(
                                "News",
                                style: TextStyle(),
                              )),
                        ),
                        Tab(
                          child: Container(
                              padding: const EdgeInsets.all(13),
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(30),
                                  border:
                                      Border.all(width: 1, color: Colors.grey)),
                              child: const Text(
                                "Most Viewed",
                                style: TextStyle(),
                              )),
                        ),
                        Tab(
                          child: Container(
                              padding: const EdgeInsets.all(13),
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(30),
                                  border:
                                      Border.all(width: 1, color: Colors.grey)),
                              child: const Text(
                                "Saved",
                                style: TextStyle(),
                              )),
                        ),
                      ]),
                ),
              ),
              Expanded(
                  child: TabBarView(children: [
                Padding(
                  padding: EdgeInsets.all(8.0),
                  child: SingleChildScrollView(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.stretch,
                      children: [
                        SizedBox(height: 24),
                        Row(
                          children: [
                            Text(
                              "Hot Topics",
                              style: TextStyle(
                                  color: Colors.black,
                                  fontSize: 18,
                                  fontWeight: FontWeight.w600),
                            ),
                            Spacer(),
                            Row(
                              children: [
                                Text(
                                  "See more",
                                  style: TextStyle(
                                      color: Colors.purple,
                                      fontSize: 16,
                                      fontWeight: FontWeight.w600),
                                ),
                                Icon(
                                  Icons.arrow_forward_ios_sharp,
                                  color: Colors.purple,
                                ),
                              ],
                            ),
                          ],
                        ),
                        SizedBox(
                          height: 24,
                        ),
                        WidgetTab(),
                        SizedBox(
                          height: 24,
                        ),
                        Text(
                          "Get Tips",
                          style: TextStyle(
                              fontWeight: FontWeight.w600,
                              color: Colors.black,
                              fontSize: 18),
                          textAlign: TextAlign.start,
                        ),
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Card(
                            elevation: 5,
                            child: Row(
                              children: [
                                Image.asset(
                                    "assets/images/Doctor-PNG-Images 1.png",
                                    scale: 1.2),
                                SizedBox(
                                  width: 50,
                                ),
                                Container(
                                  height: 150,
                                  child: Column(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceAround,
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Text(
                                        """Connect with doctors & 
get suggestions""",
                                        style: TextStyle(
                                            color: Colors.black,
                                            fontSize: 14,
                                            fontWeight: FontWeight.w600),
                                        textAlign: TextAlign.start,
                                      ),
                                      SizedBox(
                                        height: 1,
                                      ),
                                      Text(
                                        """Connect now and get 
expert insights """,
                                        style: TextStyle(
                                            color: Colors.black,
                                            fontSize: 14,
                                            fontWeight: FontWeight.w400),
                                        textAlign: TextAlign.start,
                                      ),
                                      SizedBox(height: 24),
                                      Container(
                                        padding: EdgeInsets.symmetric(
                                            vertical: 8, horizontal: 14),
                                        decoration: BoxDecoration(
                                            borderRadius:
                                                BorderRadius.circular(5),
                                            color: Colors.purple),
                                        child: Text("View details",
                                            style: TextStyle(
                                                color: Colors.white,
                                                fontSize: 14,
                                                fontWeight: FontWeight.w600)),
                                      )
                                    ],
                                  ),
                                )
                              ],
                            ),
                          ),
                        ),
                        SizedBox(
                          height: 24,
                        ),
                        Row(
                          children: [
                            Text(
                              "Cycle Phases and Period",
                              style: TextStyle(
                                  color: Colors.black,
                                  fontSize: 18,
                                  fontWeight: FontWeight.w600),
                            ),
                            Spacer(),
                            Row(
                              children: [
                                Text(
                                  "See more",
                                  style: TextStyle(
                                      color: Colors.purple,
                                      fontSize: 16,
                                      fontWeight: FontWeight.w600),
                                ),
                                Icon(
                                  Icons.arrow_forward_ios_sharp,
                                  color: Colors.purple,
                                ),
                              ],
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                )
              ]))
            ],
          ),
        ),
      ),
    );
  }
}
