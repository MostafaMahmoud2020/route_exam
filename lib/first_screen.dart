import 'package:flutter/material.dart';

class FirstScreen extends StatelessWidget {
  const FirstScreen({super.key});

  static const String routeName = "FirstScreen";

  @override
  Widget build(BuildContext context) {
    return  Container(
      color: Colors.red,
      width: 100,
      height: 100,
    );
  }
}
