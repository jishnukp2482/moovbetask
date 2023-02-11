import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:get/get.dart';
import 'package:moovbe/screens/loginpage.dart';

class splashscreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
      backgroundColor: Colors.redAccent.shade400,
      body: Center(
        child: Container(
          height: 250,
          width: 300,
          decoration: BoxDecoration(
              image: DecorationImage(
                  image: AssetImage("assets/images/logo/moovbe.png"),
                  fit: BoxFit.cover)),
        ),
      ),

      // Padding(
      //   padding: const EdgeInsets.fromLTRB(0,0,0,10),
      //   child: Align(
      //            alignment: Alignment.bottomLeft,
      //                child: Padding(
      //       padding: const EdgeInsets.fromLTRB(20,0,20,0),
      //   child: SizedBox(
      //     height: 30,
      //     width: double.infinity,
      //     child: ElevatedButton(onPressed: (){},
      //     child: Text("Get Started",style: TextStyle(
      //       color: Colors.redAccent.shade400,
      //     ),)),
      //   ),
      // ),
      //           ),
      // ),

      floatingActionButton: SizedBox(
        height: 50,
        width: double.infinity,
        child: FittedBox(
          child: FloatingActionButton.extended(
            onPressed: () {
              Get.to(loginpage());
            },
            backgroundColor: Colors.white,
            label: Text(
              "Get Started",
              style: TextStyle(color: Colors.redAccent.shade400),
            ),
            // child: Text("Get Started",style: TextStyle(color: Colors.redAccent.shade400),)
            shape:
                RoundedRectangleBorder(borderRadius: BorderRadius.circular(5)),
          ),
        ),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
    ));
  }
}
