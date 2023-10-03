import 'package:flutter/material.dart';
import 'package:route_exam/first_screen.dart';
import 'package:route_exam/second_screen.dart';
import 'package:route_exam/third_screen.dart';

main() {
  runApp(MyApplication());
}

class MyApplication extends StatelessWidget {
  const MyApplication({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(

      debugShowCheckedModeBanner: false,
      initialRoute: FirstScreen.routeName,
      routes: {
        FirstScreen.routeName: (context) => FirstScreen(),
        SecondScreen.routeName: (context) => SecondScreen(),
        ThirdScreen.routeName: (context) => ThirdScreen(),
      },
    );
  }
}
