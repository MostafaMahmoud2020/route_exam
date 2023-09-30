import 'package:flutter/material.dart';
import 'package:carousel_slider/carousel_slider.dart';

class HomeTab extends StatelessWidget {
  HomeTab({super.key});

  CarouselController buttonCarouselController = CarouselController();

  List<String> images = [
    "assets/images/Frame 24.png",
    "assets/images/Frame 24.png",
    "assets/images/Frame 24.png",
  ];

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Padding(
          padding: const EdgeInsets.only(top: 5, left: 10),
          child: Row(
            children: [
              Text("Hello,",
                  style: TextStyle(fontSize: 25, fontWeight: FontWeight.w300)),
              Text("Sara Rose",
                  style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold)),
            ],
          ),
        ),
        SizedBox(
          height: 15,
        ),
        Padding(
          padding: const EdgeInsets.only(left: 10),
          child: Align(
              alignment: Alignment.centerLeft,
              child: Text(
                "How are you feeling today?",
                style: TextStyle(fontSize: 22, fontWeight: FontWeight.w300),
                textAlign: TextAlign.start,
              )),
        ),
        SizedBox(
          height: 10,
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            Column(
              children: [
                Image.asset("assets/images/Frame 10.png"),
                Text(
                  "Love",
                  style: TextStyle(fontWeight: FontWeight.w300),
                )
              ],
            ),
            Column(
              children: [
                Image.asset("assets/images/Frame 10 (1).png"),
                Text(
                  "Cool",
                  style: TextStyle(fontWeight: FontWeight.w300),
                )
              ],
            ),
            Column(
              children: [
                Image.asset("assets/images/Frame 8.png"),
                Text(
                  "Happy",
                  style: TextStyle(fontWeight: FontWeight.w300),
                )
              ],
            ),
            Column(
              children: [
                Image.asset("assets/images/Frame 12.png"),
                Text(
                  "Sad",
                  style: TextStyle(fontWeight: FontWeight.w300),
                )
              ],
            ),
          ],
        ),
        SizedBox(
          height: 10,
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            Text(
              "Feature",
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
            ),
            SizedBox(
              width: 20,
            ),
            Row(
              children: [
                Text(
                  "See more",
                  style: TextStyle(
                      color: Colors.green,
                      fontSize: 18,
                      fontWeight: FontWeight.w600),
                ),
                Icon(
                  Icons.arrow_forward_ios_rounded,
                  color: Colors.green,
                )
              ],
            ),
          ],
        ),
        Container(
          height: MediaQuery.of(context).size.height * .3,
          child: CarouselSlider.builder(
            carouselController: buttonCarouselController,
            itemCount: images.length,
            itemBuilder: (BuildContext context, int index, int realIndex) =>
                Image.asset(images[index], fit: BoxFit.contain),
            options: CarouselOptions(
              reverse: true,
              autoPlay: true,
              viewportFraction: 0.9,
              initialPage: 0,
              enableInfiniteScroll: true,
              autoPlayInterval: Duration(seconds: 5),
            ),
          ),
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            Text(
              "Exercise",
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
            ),
            SizedBox(
              width: 20,
            ),
            Row(
              children: [
                Text(
                  "See more",
                  style: TextStyle(
                      color: Colors.green,
                      fontSize: 18,
                      fontWeight: FontWeight.w600),
                ),
                Icon(
                  Icons.arrow_forward_ios_rounded,
                  color: Colors.green,
                )
              ],
            ),
          ],
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            Container(
                decoration: BoxDecoration(
                    color: Color.fromRGBO(249, 245, 255, 1),
                    borderRadius: BorderRadius.circular(5)),
                padding: EdgeInsets.all(10),
                child: Row(
                  children: [
                    Image.asset("assets/images/Frame.png"),
                    Text(
                      "Relaxation",
                      style:
                          TextStyle(fontSize: 14, fontWeight: FontWeight.w400),
                    )
                  ],
                )),
            Container(
                decoration: BoxDecoration(
                    color: Color.fromRGBO(253, 242, 250, 1),
                    borderRadius: BorderRadius.circular(5)),
                padding: EdgeInsets.all(10),
                child: Row(
                  children: [
                    Image.asset("assets/images/Group.png"),
                    Text(
                      "Meditation",
                      style:
                          TextStyle(fontSize: 14, fontWeight: FontWeight.w400),
                    )
                  ],
                )),
          ],
        ),
        SizedBox(height: 5,),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            Container(
                decoration: BoxDecoration(
                    color: Color.fromRGBO(255, 250, 245, 1),

    borderRadius: BorderRadius.circular(5)),
                padding: EdgeInsets.all(10),
                child: Row(
                  children: [
                    Image.asset("assets/images/Group (1).png"),
                    Text(
                      "Breathing",
                      style:
                          TextStyle(fontSize: 14, fontWeight: FontWeight.w400),
                    )
                  ],
                )),
            Container(
                decoration: BoxDecoration(
                    color: Color.fromRGBO(240, 249, 255, 1),
                    borderRadius: BorderRadius.circular(5)),
                padding: EdgeInsets.all(10),
                child: Row(
                  children: [
                    Image.asset("assets/images/Group (2).png"),
                    Text(
                      "Yoga",
                      style:
                          TextStyle(fontSize: 14, fontWeight: FontWeight.w400),
                    )
                  ],
                )),
          ],
        ),
      ],
    );
  }
}
