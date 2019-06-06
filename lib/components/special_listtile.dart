import 'package:flutter/material.dart';

class SpecialListTile extends StatelessWidget {
  SpecialListTile({@required this.title, @required this.subtitle, @required this.asset});

  final String title;
  final String subtitle;
  final String asset;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.only(left: 20),
      child: new Row(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: <Widget>[
          Container(
            height: 100,
            width: 100,
            child: Card(
              semanticContainer: true,
              clipBehavior: Clip.antiAliasWithSaveLayer,
              child: Image.asset(
                asset,
                fit: BoxFit.fill,
              ),
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(10.0),
              ),
              elevation: 5,
              margin: EdgeInsets.all(10),
            ),
          ),
          Container(
            padding: EdgeInsets.only(left: 15),
            child: new Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                new Text(
                    title,
                    style: TextStyle(
                      fontSize: 20,
                      fontFamily: 'OpenSansBold'
                    ),
                ),
                new SizedBox(
                  height: 15
                ),
                new Text(
                    subtitle,
                    style: TextStyle(
                        color: Colors.grey,
                        fontSize: 20,
                        fontFamily: 'OpenSans'
                    ),
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}
