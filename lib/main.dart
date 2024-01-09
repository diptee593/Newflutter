import 'package:flutter/material.dart';
//import 'package:newflutter/pages/home_page.dart';
import 'package:newflutter/pages/jump.dart';

void main() {
  //add this
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      //home: HomePage(),
      home: MyJump(),
    );
  }
}
