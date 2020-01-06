import 'package:flutter/material.dart';

import 'favorite_plant.dart';

class Plants extends StatefulWidget {
  @override
  _PlantsState createState() => _PlantsState();
}

class _PlantsState extends State<Plants> {
  double padding_b = 24.0;
  Color textColor = Colors.black;
  Color containerColor = Colors.grey[200];
  Color iconColor = Color.fromRGBO(224, 124, 124, 1);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[50],
      body: Padding(
        padding:
            EdgeInsets.only(top: padding_b, left: padding_b, right: padding_b),
        child: Column(
          // crossAxisAlignment: CrossAxisAlignment.start,
          // mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: <Widget>[
            //Top
            Container(
              height: 120,
              margin: EdgeInsets.only(top: padding_b),
              child: Row(
                children: <Widget>[
                  Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      Text(
                        'Hello Alex',
                        style: TextStyle(
                            fontSize: 40.0,
                            color: textColor,
                            // letterSpacing: 2.0,
                            fontWeight: FontWeight.bold),
                      ),
                      SizedBox(
                        height: padding_b * 0.2,
                      ),
                      Text(
                        'You have 9 plants',
                        style: TextStyle(
                            fontSize: 20.0,
                            // letterSpacing: 2.0,
                            color: Colors.grey[600]),
                      )
                    ],
                  ),
                  Spacer(),
                  Container(
                    width: 54,
                    height: 54,
                    decoration: BoxDecoration(
                        color: Colors.grey[200], shape: BoxShape.circle),
                    child: Icon(Icons.add, size: 40.0, color: Colors.grey[600]),
                  ),
                ],
              ),
            ),
            // Center - Warning missed
            Container(
              height: 60,
              margin: EdgeInsets.only(top: padding_b),
              decoration: BoxDecoration(
                  color: containerColor,
                  borderRadius: BorderRadius.circular(32)),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: <Widget>[
                  Container(
                    margin: EdgeInsets.only(left: padding_b * 0.5),
                    height: 34.0,
                    width: 34.0,
                    child: Icon(
                      Icons.report,
                      color: Colors.orange[400],
                      size: 34.0,
                    ),
                  ),
                  Container(
                      margin: EdgeInsets.only(left: padding_b * 0.3),
                      height: 34.0,
                      width: 34.0,
                      child: Icon(
                        Icons.wb_cloudy,
                        size: 34.0,
                        color: Colors.grey[600],
                        // color: Colors.blagck,
                      )),
                  Container(
                    margin: EdgeInsets.only(left: padding_b * 0.5),
                    height: 32,
                    child: Center(
                      child: Text(
                        'You missed watering plants',
                        style: TextStyle(
                            fontWeight: FontWeight.bold, fontSize: 18.0),
                      ),
                    ),
                  ),
                ],
              ),
            ),
            // Center - Plants status
            Container(
              height: 200.0,
              // color: Colors.red,
              margin: EdgeInsets.only(top: padding_b),
              child: ListView(
                scrollDirection: Axis.horizontal,
                children: <Widget>[
                  Favorite_pants(
                    name: 'Eddy',
                    colorsfavorite: Colors.purple,
                    image: 'assets/daynhen.png',
                  ),
                  Favorite_pants(
                    name: 'Alex',
                    colorsfavorite: Colors.purple,
                    image: 'assets/nhadam.png',
                  ),
                  Favorite_pants(
                    name: 'Zora',
                    colorsfavorite: Colors.orange[600],
                    image: 'assets/senda.png',
                  ),
                  Favorite_pants(
                    name: 'Eddy',
                    colorsfavorite: Colors.purple,
                    image: 'assets/daynhen.png',
                  ),
                  Favorite_pants(
                    name: 'Alex',
                    colorsfavorite: Colors.purple,
                    image: 'assets/nhadam.png',
                  ),
                  Favorite_pants(
                    name: 'Zora',
                    colorsfavorite: Colors.orange[600],
                    image: 'assets/senda.png',
                  ),
                ],
              ),
            ),
            //Bottom
            Container(
              height: 260.0,
              margin: EdgeInsets.only(top: padding_b * 2),
              child: Row(
                // crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: <Widget>[
                  // Left Image
                  Stack(
                    alignment: AlignmentDirectional.topEnd,
                    children: <Widget>[
                      Container(
                        height: 260.0,
                        width: 160.0,
                        decoration: BoxDecoration(
                            // color: Colors.red,
                            borderRadius: BorderRadius.circular(12),
                            image: DecorationImage(
                              image: AssetImage('assets/nhadam.png'),
                              fit: BoxFit.fill,
                            )),
                        // child: Placeholder(),
                      ),
                      Container(
                        margin: EdgeInsets.only(
                            top: padding_b * 0.2, right: padding_b * 0.5),
                        width: 80,
                        height: 40,
                        decoration: BoxDecoration(
                            color: Colors.grey[100],
                            borderRadius: BorderRadius.circular(18)),
                        child: Row(
                          children: <Widget>[
                            Container(
                              // margin: EdgeInsets.only(left: padding_b * 0.5),
                              height: 40.0,
                              width: 40.0,
                              child: Icon(
                                Icons.report,
                                color: Colors.orange[400],
                                size: 40.0,
                              ),
                            ),
                            Container(
                                // margin: EdgeInsets.only(left: padding_b * 0.3),
                                height: 40.0,
                                width: 40.0,
                                child: Icon(
                                  Icons.wb_cloudy,
                                  size: 40.0,
                                  color: Colors.grey[600],
                                  // color: Colors.blagck,
                                )),
                          ],
                        ),
                      ),
                    ],
                  ),
                  SizedBox(
                    width: 30.0,
                  ),
                  // Right Image
                  Container(
                      height: 260.0,
                      width: 170.0,
                      child: Column(
                        children: <Widget>[
                          Container(
                            height: 200,
                            width: 170,
                            decoration: BoxDecoration(
                                // color: Colors.red,
                                borderRadius: BorderRadius.circular(12),
                                image: DecorationImage(
                                  image: AssetImage('assets/cay.png'),
                                  fit: BoxFit.fill,
                                )),
                          ),
                          // SizedBox(height: 40.0,),
                          Container(
                            height: 60,
                            width: 170,
                            child: Center(
                              child: Text(
                                'Wincent',
                                textAlign: TextAlign.center,
                                style: TextStyle(
                                  fontSize: 24.0,
                                  fontWeight: FontWeight.bold,
                                  letterSpacing: 0.1,
                                ),
                              ),
                            ),
                          )
                        ],
                      )),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}

List<Color> habitColor = [
  Color.fromRGBO(68, 63, 121, 1),
  Color.fromRGBO(224, 124, 124, 1),
  Color.fromRGBO(242, 162, 101, 1),
];
