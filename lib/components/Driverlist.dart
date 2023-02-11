import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class driverlist extends StatelessWidget {
  List <String> imagelist=[
    "assets/images/logo/profiedriver.jpg",
    "assets/images/logo/profiedriver.jpg",
    "assets/images/logo/profiedriver.jpg",
    "assets/images/logo/profiedriver.jpg",
    "assets/images/logo/profiedriver.jpg",
  ];
  List<String>drivername=["Rohit sharma","Rohit sharma","Rohit sharma","Rohit sharma","Rohit sharma",];
  List<String>licenseno=["Licenseno:PJ515196161655","Licenseno:PJ515196161655","Licenseno:PJ515196161655","Licenseno:PJ515196161655","Licenseno:PJ515196161655",];
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.fromLTRB(20,30,20,0),
      child: Container(
           decoration: BoxDecoration(boxShadow: [
          BoxShadow(
            color: Colors.grey.shade300,
            blurRadius: 5,
          )
        ]),
        height: 360,
        child: ListView.builder(
          itemCount: imagelist.length,
          itemBuilder: (context, index) {
            return Card(
              shape: BeveledRectangleBorder(
    borderRadius: BorderRadius.circular(5
     ),
  ),
              child: ListTile(
                shape: RoundedRectangleBorder(
                    // side: BorderSide(width: .2,color: Colors.black),
                    borderRadius: BorderRadius.circular(10),
                  ),
                leading: 
                  
                   CircleAvatar(
                    radius: 30,
                    backgroundImage: AssetImage(imagelist[index]),
                    backgroundColor: Colors.grey.shade300,
                    
                  ),
                
                title:Text(drivername[index]) ,
                subtitle: Text(licenseno[index],maxLines: 1,),
                trailing:SizedBox(
                        height: 30,
                        width: 90,
                        child: ElevatedButton(
                          onPressed: () {
                          
                          },
                          child: Text(
                            "Delete",
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
