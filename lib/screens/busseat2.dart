import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:get/get.dart';
import 'package:moovbe/components/appbarbusdetails.dart';
import 'package:moovbe/components/seat.dart';
import 'package:moovbe/screens/driverscreen.dart';

class busseat2 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
      appBar: busdetailsappbar(),
      body: ListView(
        children: [
          Padding(
            padding: const EdgeInsets.fromLTRB(20, 10, 20, 0),
            child: Stack(children: [
              GestureDetector(
                onTap: () {
                  Get.to(driverscreen());
                },
                child: Container(
                  height: 150,
                  width: double.infinity,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      image: DecorationImage(
                          image: AssetImage("assets/images/logo/driver.jpg"),
                          fit: BoxFit.cover)),
                ),
              ),
              Positioned(
                top: 25,
                left: 15,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "Rohit sharma",
                      style: TextStyle(
                          color: Colors.white,
                          fontSize: 30,
                          fontWeight: FontWeight.bold),
                    ),
                    Text(
                      "License no:PJ515196161655",
                      style: TextStyle(fontSize: 15, color: Colors.white),
                    )
                  ],
                ),
              )
            ]),
          ),
          seat(
            firstcolumnseatcrossaxiscount: 1,
            secondcolumnseatcrossaxiscount: 3,
            firstcontainerheight: 600,
            firstcontainerwidth: 50,
            secondcontainerheight: 600,
            secondcontainerwidth: 150,
            driverseatleftpadding: 92,
            secondgridcontainerheight: 505,
            secondgridcontainerwidth: 150,
            firstcontaineritemcount: 9,
            secondcontaineritemcount: 27,
          )
        ],
      ),
    ));
  }
}
