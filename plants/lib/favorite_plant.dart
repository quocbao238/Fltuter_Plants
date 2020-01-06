import 'package:flutter/material.dart';

class Favorite_pants extends StatelessWidget {
  const Favorite_pants({
    Key key,
    @required this.name,
    @required this.colorsfavorite,
    @required this.image,
  }) : super(key: key);

  // final double padding_b;
  final String name;
  final Color colorsfavorite;
  final String image;

  @override
  Widget build(BuildContext context) {
    return Container(
        margin: EdgeInsets.only(left: 2.4),
        width: 115.0,
        height: 200.0,
        child: Stack(
          alignment: AlignmentDirectional.topEnd,
          children: <Widget>[
            Container(
              width: 115.0,
              height: 200.0,
              child: Row(
                children: <Widget>[
                  Container(
                    margin: EdgeInsets.only(top: 10),
                    width: 115.0 - 20.0,
                    height: 200.0,
                    child: Column(
                      children: <Widget>[
                        // Image View
                        Container(
                          width: 115.0,
                          height: 200.0 - 40.0,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(24),
                            image: DecorationImage(
                                image: AssetImage(image),
                                fit: BoxFit.fill),
                          ),
                        ),
                        //Eddy Name
                        Container(
                          // alignment: ,
                          width: 200.0,
                          height: 30,
                          child: Center(
                            child: Text(
                              name,
                              textAlign: TextAlign.center,
                              style: TextStyle(
                                  color: Colors.black,
                                  letterSpacing: 1.0,
                                  fontWeight: FontWeight.bold,
                                  fontSize: 18.0),
                            ),
                          ),
                        )
                      ],
                    ),
                  ),
                ],
              ),
            ),
            //Right Heart
            Container(
                width: 40.0,
                height: 40.0,
                // color: Colors.white,
                decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(34)),
                child: Stack(
                  alignment: AlignmentDirectional.center,
                  children: <Widget>[
                    Container(
                      width: 34.0,
                      height: 34.0,
                      decoration: BoxDecoration(
                          color: colorsfavorite,
                          borderRadius: BorderRadius.circular(34)),
                    ),
                    Icon(
                      Icons.favorite,
                      size: 20.0,
                      color: Colors.white,
                    ),
                  ],
                ))
          ],
        ));
  }
}
