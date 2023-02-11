import 'package:flutter/material.dart';
import 'package:moovbe/components/adddriverappbar.dart';
class adddriverscreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SafeArea(child: Scaffold(
      appBar: adddriverappbar(),
      body: ListView(
        children: [
           Padding(
              padding: const EdgeInsets.fromLTRB(20, 50, 20, 10),
              child: Container(
                width: double.infinity,
                height: 50,
                decoration: BoxDecoration(
                  color: Colors.grey.shade300,
                  borderRadius: BorderRadius.circular(5),
                ),
                child: TextFormField(
                  textAlign: TextAlign.center,
                  decoration: InputDecoration(
                      hintText: "Enter Name",
                      hintStyle: TextStyle(
                        color: Colors.black54,
                      ),
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(5),
                      )),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.fromLTRB(20, 5, 20, 5),
              child: Container(
                width: double.infinity,
                height: 50,
                decoration: BoxDecoration(
                  color: Colors.grey.shade300,
                  borderRadius: BorderRadius.circular(5),
                ),
                child: TextFormField(
                  textAlign: TextAlign.center,
                  decoration: InputDecoration(
                      hintText: "Enter License Number",
                      hintStyle: TextStyle(
                        color: Colors.black54,
                      ),
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(5),
                      )),
                ),
              ),
            ),
                Padding(
              padding: const EdgeInsets.fromLTRB(20, 500, 20, 10),
              child: SizedBox(
                height: 50,
                width: double.infinity,
                child: ElevatedButton(
                  onPressed: () {
                   // Get.to(busscreen());
                  },
                  child: Text(
                    "Save",
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
