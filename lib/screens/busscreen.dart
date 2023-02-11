import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:moovbe/components/appbarbusscreen.dart';
import 'package:moovbe/components/buslist.dart';
class busscreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
      appBar: busappbar(),
      body: ListView(
        children: [
          Padding(
            padding: const EdgeInsets.fromLTRB(0, 10, 0, 10),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Padding(
                  padding: const EdgeInsets.fromLTRB(10, 0, 2.5, 0),
                  child: Stack(children: [
                    Container(
                      height: 190,
                      width: 180,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(8),
                        image: DecorationImage(
                            image: AssetImage("assets/images/logo/bus.jpg"),
                            fit: BoxFit.fill),
                      ),
                    ),
                    Positioned(
                      left: 10,
                      top: 10,
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            "Bus",
                            style: TextStyle(
                                color: Colors.white,
                                fontSize: 20,
                                fontWeight: FontWeight.bold),
                          ),
                          Text(
                            "Manage your Bus",
                            style: TextStyle(
                                color: Colors.white,
                                fontWeight: FontWeight.w300),
                          )
                        ],
                      ),
                    )
                  ]),
                ),
                Padding(
                  padding: const EdgeInsets.fromLTRB(2.5, 0, 10, 0),
                  child: Stack(children: [
                    Container(
                      height: 190,
                      width: 180,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(8),
                        image: DecorationImage(
                            image: AssetImage("assets/images/logo/driver.jpg"),
                            fit: BoxFit.fill),
                      ),
                    ),
                    Positioned(
                      left: 10,
                      top: 10,
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            "Driver",
                            style: TextStyle(
                                color: Colors.white,
                                fontSize: 20,
                                fontWeight: FontWeight.bold),
                          ),
                          Text(
                            "Manage your Driver",
                            style: TextStyle(
                                color: Colors.white,
                                fontWeight: FontWeight.w300),
                          )
                        ],
                      ),
                    )
                  ]),
                ),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.fromLTRB(12.5,5,0,0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Text("21 Buses Found",style: TextStyle(color: Colors.black87),)
              ],
            ),
          ),
          buslist(),
        ],
      ),
    ));
  }
}
