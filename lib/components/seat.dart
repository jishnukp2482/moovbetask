import 'package:flutter/material.dart';

class seat extends StatelessWidget {
  List<double> leftppadding = [30, 40];
  final int firstcolumnseatcrossaxiscount;

  final int secondcolumnseatcrossaxiscount;
  final double firstcontainerheight;
  final double firstcontainerwidth;
  final double secondcontainerheight;
  final double secondgridcontainerheight;
  final double secondcontainerwidth;
  final double secondgridcontainerwidth;
  final int firstcontaineritemcount;
  final int secondcontaineritemcount;
  final double driverseatleftpadding;
  seat({
    required this.firstcolumnseatcrossaxiscount,
    required this.secondcolumnseatcrossaxiscount,
    required this.firstcontainerheight,
    required this.firstcontainerwidth,
    required this.secondcontainerheight,
    required this.secondcontainerwidth,
    required this.secondgridcontainerheight,
    required this.secondgridcontainerwidth,
    required this.firstcontaineritemcount,
    required this.secondcontaineritemcount,
    required this.driverseatleftpadding,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.fromLTRB(40, 10, 40, 10),
      child: Container(
        height: 585,
        width: 250,
        decoration: BoxDecoration(
          border: Border.all(
            color: Colors.grey.shade300,
            width: 5,
          ),
          borderRadius: BorderRadius.circular(10),
        ),
        child: Padding(
          padding: const EdgeInsets.fromLTRB(30, 20, 0, 10),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                padding: const EdgeInsets.only(top: 40),
                child: Container(
                  height: firstcontainerheight,
                  width: firstcontainerwidth,
                  child: GridView.builder(
                    shrinkWrap: true,
                    itemCount: firstcontaineritemcount,
                    gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                      crossAxisCount: firstcolumnseatcrossaxiscount,
                      mainAxisSpacing: 1,
                      crossAxisSpacing: 2,
                    ),
                    itemBuilder: (context, index) {
                      return Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Icon(
                            Icons.event_seat,
                            size: 40,
                            color: Colors.redAccent.shade400,
                          ),
                        ],
                      );
                    },
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.fromLTRB(10, 0, 30, 0),
                child: Container(
                  height: secondcontainerheight,
                  width: secondcontainerwidth,
                  child: Column(
                    children: [
                      Padding(
                        padding:  EdgeInsets.fromLTRB(driverseatleftpadding, 0, 0, 0),
                        child: Icon(
                          Icons.event_seat,
                          color: Colors.black,
                          size: 40,
                        ),
                      ),
                      Container(
                        height: secondgridcontainerheight,
                        width: secondgridcontainerwidth,
                        child: GridView.builder(
                          shrinkWrap: true,
                          itemCount: secondcontaineritemcount,
                          gridDelegate:
                              SliverGridDelegateWithFixedCrossAxisCount(
                            crossAxisCount: secondcolumnseatcrossaxiscount,
                            mainAxisSpacing: 1,
                            crossAxisSpacing: 2,
                          ),
                          itemBuilder: (context, index) {
                            return Column(
                              mainAxisAlignment: MainAxisAlignment.start,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Icon(
                                  Icons.event_seat,
                                  size: 40,
                                  color: Colors.redAccent.shade400,
                                ),
                              ],
                            );
                          },
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
