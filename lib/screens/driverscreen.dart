import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:moovbe/components/appbardriverlist.dart';
import 'package:moovbe/components/driverlist.dart';
import 'package:moovbe/screens/adddriverscreen.dart';
class driverscreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SafeArea(child: Scaffold(
      appBar:driverdetailsappbar() ,
      body: ListView(
        children: [
          Row(
            children: [
           Padding(
            padding: const EdgeInsets.fromLTRB(20,20,0,0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Text("21 Drivers Found",style: TextStyle(color: Colors.black87),)
              ],
            ),
          ),

            ],
          ),
          driverlist(),
          Padding(
              padding: const EdgeInsets.fromLTRB(20, 230, 20, 10),
              child: SizedBox(
                height: 50,
                width: double.infinity,
                child: ElevatedButton(
                  onPressed: () {
                    Get .to(adddriverscreen());
                  },
                  child: Text(
                    "Add Driver",
                    style: TextStyle(color: Colors.white, fontSize: 18),
                  ),
                  style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.redAccent.shade400,
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(8))),
                ),
              ),
            )

        ],
      ),
    ));
  }
}
