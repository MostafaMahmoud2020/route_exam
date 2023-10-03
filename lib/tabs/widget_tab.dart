import 'package:flutter/material.dart';
import 'package:carousel_slider/carousel_slider.dart';

class WidgetTab extends StatelessWidget {
  WidgetTab({super.key});

  List<String> images = [
    "assets/images/Frame 340.png",
    "assets/images/Frame 3466530.png",
  ];

  @override
  Widget build(BuildContext context) {
    return Container(
      height: MediaQuery.of(context).size.width * .4,
      width: double.infinity,
      child: CarouselSlider.builder(
        itemCount: images.length,
        itemBuilder: (BuildContext context, int index, int realIndex) =>
            Image.asset(
          images[index],
        ),
        options: CarouselOptions(
          reverse: true,
          autoPlay: true,
          viewportFraction: 0.95,
          initialPage: 0,
          enableInfiniteScroll: true,
          autoPlayInterval: const Duration(seconds: 3),
        ),
      ),
    );
  }
}
