import 'package:flutter/material.dart';

AppBar busappbar() {
  return AppBar(
    automaticallyImplyLeading: false,
    backgroundColor: Colors.black,
    title: Container(
      height: 300,
      width: 200,
      decoration: BoxDecoration(
        image: DecorationImage(image: AssetImage("assets/images/logo/moovbe.png"),fit: BoxFit.fill)
      ),
    ),
    centerTitle: true,
    toolbarHeight: kToolbarHeight+50,
  );
}
