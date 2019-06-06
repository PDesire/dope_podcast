import 'package:flutter/material.dart';

class ButtonTitled extends StatelessWidget {
  ButtonTitled({@required this.icon, @required this.title});

  final IconData icon;
  final String title;

  @override
  Widget build(BuildContext context) {
    return Container(
      child: new Column(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: <Widget>[
          SizedBox(
            height: 75,
            width: 75,
            child: FloatingActionButton(
                backgroundColor: Colors.white,
                child: Icon(
                  icon, color: Colors.black,
                ),
                onPressed: () {

                }
            ),
          ),
          Container(
            padding: EdgeInsets.only(top: 10),
            child: new Text(
                title,
                style: new TextStyle(
                  color: Colors.white,
                  fontFamily: 'OpenSans'
                ),
            ),
          )
        ],
      ),
    );
  }
}
