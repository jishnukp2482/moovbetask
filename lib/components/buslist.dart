import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:get/get.dart';
import 'package:moovbe/screens/busseat.dart';
import 'package:moovbe/screens/busseat2.dart';

class buslist extends StatelessWidget {
  List<String> busname = [
    "KSRTC",
    "KSRTC",
    "KSRTC",
    "KSRTC",
    "KSRTC",
  ];
  List<String> busimage = [
    "assets/images/logo/bus2.jpg",
    "assets/images/logo/bus2.jpg",
    "assets/images/logo/bus2.jpg",
    "assets/images/logo/bus2.jpg",
    "assets/images/logo/bus2.jpg",
  ];
  List<String> busdescription = [
    "Swift Scannia P-series",
    "Swift Scannia P-series",
    "Swift Scannia P-series",
    "Swift Scannia P-series",
    "Swift Scannia P-series",
  ];
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.fromLTRB(12.5, 10, 12.5, 10),
      child: Container(
        decoration: BoxDecoration(boxShadow: [
          BoxShadow(
            color: Colors.grey.shade300,
            blurRadius: 5,
          )
        ]),
        height: 440,
        child: ListView.builder(
          itemCount: busname.length,
          itemBuilder: (context, index) {
            return Card(
               shape: BeveledRectangleBorder(
    borderRadius: BorderRadius.circular(5
     ),
  ),
              child: ListTile(
                contentPadding: EdgeInsets.fromLTRB(2, 10, 10, 5),
                shape: RoundedRectangleBorder(
                  // side: BorderSide(width: .2,color: Colors.black),
                  borderRadius: BorderRadius.circular(10),
                ),
                
                leading: Container(
                  height: 500,
                  width: 80,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(10),
                        bottomLeft: Radius.circular(10)),
                    image: DecorationImage(
                        image: AssetImage(busimage[index]), fit: BoxFit.fill),
                  ),
                ),
                title: Text(
                  busname[index],
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                  ),
                ),
                subtitle: Text(
                  busdescription[index],
                  style: TextStyle(fontWeight: FontWeight.w500),
                ),
                trailing: SizedBox(
                  height: 30,
                  width: 90,
                  child: ElevatedButton(
                    onPressed: () {
                      Get.to(busseat2());
                    },
                    child: Text(
                      "Manage",
                      style: TextStyle(color: Colors.white),
                    ),
                    style: ElevatedButton.styleFrom(
                        backgroundColor: Colors.redAccent.shade400,
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(5))),
                  ),
                ),
              ),
            );
          },
        ),
      ),
    );
  }
}
