import 'dart:ffi';

import 'package:flutter/material.dart';
import 'package:percent_indicator/percent_indicator.dart';

class Description extends StatefulWidget {
  @override
  _DescriptionState createState() => _DescriptionState();
}

class _DescriptionState extends State<Description> {
  double padding_b = 16.0;

  @override
  Widget build(BuildContext context) {
    // Item Contaier Size
    var size = MediaQuery.of(context).size;
    double itemHeight = (size.height - kToolbarHeight - 24) / 2;
    double itemWidth = size.width;

    return Scaffold(
      body: Padding(
        padding: EdgeInsets.only(
            right: padding_b,
            left: padding_b,
            top: padding_b,
            bottom: padding_b),
        // child:
        child: Column(
          children: <Widget>[
            /* Top */
            Container(
              margin: EdgeInsets.only(top: padding_b * 2),
              height: 250.0,
              width: 250.0,
              child: Center(
                child: Stack(
                  children: <Widget>[
                    CircularPercentIndicator(
                      radius: 230.0,
                      lineWidth: 10.0,
                      percent: 0.85,
                      center: new CircleAvatar(
                        radius: 90.0,
                        backgroundImage: AssetImage('assets/nhadam.png'),
                      ),
                      progressColor: Colors.greenAccent,
                    )
                  ],
                ),
              ),
            ),
            /* Center */
            Container(
              height: 360.0,
              child: Column(
                children: <Widget>[
                  /* Edy Name */
                  Container(
                    margin: EdgeInsets.only(top: padding_b),
                    height: 130.0,
                    child: Column(
                      children: <Widget>[
                        Text(
                          'Eddy',
                          style: TextStyle(
                              color: Colors.black,
                              fontSize: 50.0,
                              fontWeight: FontWeight.bold),
                        ),
                        Container(
                          height: 50.0,
                          width: 250.0,
                          margin: EdgeInsets.only(top: padding_b),
                          decoration: BoxDecoration(
                              color: Colors.grey[50],
                              borderRadius: BorderRadius.circular(32)),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: <Widget>[
                              Container(
                                margin: EdgeInsets.only(left: padding_b * 0.1),
                                height: 50.0,
                                width: 50.0,
                                child: Icon(
                                  Icons.report,
                                  color: Colors.orange[400],
                                  size: 50.0,
                                ),
                              ),
                              Container(
                                  margin:
                                      EdgeInsets.only(left: padding_b * 0.1),
                                  height: 50.0,
                                  width: 50.0,
                                  child: Icon(
                                    Icons.wb_cloudy,
                                    size: 50.0,
                                    color: Colors.grey[600],
                                    // color: Colors.blagck,
                                  )),
                              Container(
                                margin: EdgeInsets.only(left: padding_b),
                                height: 32,
                                child: Center(
                                  child: Text(
                                    'NEEDS WATER',
                                    style: TextStyle(
                                        color: Colors.grey[500],
                                        fontWeight: FontWeight.bold,
                                        fontSize: 16.0),
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                  /* GribView Status*/
                  Container(
                    margin: EdgeInsets.only(top: padding_b * 2),
                    height: 160.0,
                    child: GridView.count(
                      crossAxisCount: 2,
                      childAspectRatio: 3.0,
                      crossAxisSpacing: 18.0,
                      mainAxisSpacing: 10.0,
                      children: <Widget>[
                        ListStatus(
                            'Water', '1 time in 2 weeks', Icons.wb_cloudy),
                        ListStatus('Sun', 'Eddy likes sun', Icons.wb_sunny),
                        ListStatus(
                            'Temperature', 'No less than 15*C', Icons.timeline),
                      ],
                    ),
                  ),
                ],
              ),
            ),
            /* Bottom */
            Container(
              margin: EdgeInsets.only(top: padding_b * 0.5),
              height: 110.0,
              // color: Colors.red,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.start,
                children: <Widget>[
                  Text(
                    'Description',
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      fontSize: 28.0,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  SizedBox(height: 5.0,),
                  Text(
                    "Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s",
                    textAlign: TextAlign.start,
                    style: TextStyle(
                      fontSize: 15.0,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ],
              ),
              // child: Placeholder(),
            )
          ],
        ),
      ),
    );
  }
}

class ListStatus extends StatelessWidget {
  final name;
  final status;
  final icons;

  ListStatus(this.name, this.status, this.icons);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: <Widget>[
        Container(
          width: 40,
          height: 120,
          child: Row(
            // mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              Icon(
                icons,
                size: 30.0,
              ),
            ],
          ),
        ),
        Container(
          width: 140,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              Text(
                name,
                style: TextStyle(
                  fontSize: 20.0,
                  fontWeight: FontWeight.bold,
                  // letterSpacing: 1.0,
                ),
              ),
              SizedBox(
                height: 10.0,
              ),
              Text(
                status,
                style: TextStyle(
                    color: Colors.grey[700],
                    fontSize: 16.0,
                    letterSpacing: 0.1),
              )
            ],
          ),
        )
      ],
    );
  }
}
