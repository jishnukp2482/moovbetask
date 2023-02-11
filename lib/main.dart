import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:moovbe/screens/splashscreen.dart';
void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      title: "moovbe",
      debugShowCheckedModeBanner: false,
      home: splashscreen(),
    );
  }
}
