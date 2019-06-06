import 'package:flutter/material.dart';

class AvatarTitled extends StatelessWidget {
  AvatarTitled({@required this.asset, @required this.title});

  final String asset;
  final String title;

  @override
  Widget build(BuildContext context) {
    return Container(
      child: new Column(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: <Widget>[
          SizedBox(
            height: 100,
            width: 100,
            child: Container(
              height: 100,
              width: 100,
              child: Card(
                semanticContainer: true,
                clipBehavior: Clip.antiAliasWithSaveLayer,
                child: Image.asset(
                  asset,
                  fit: BoxFit.fill,
                ),
                shape: StadiumBorder(
                  side: BorderSide(
                    color: Colors.transparent
                  )
                ),
                elevation: 5,
                margin: EdgeInsets.all(10),
              ),
            ),
          ),
          Container(
            padding: EdgeInsets.only(top: 10),
            child: new Text(
                title,
                style: new TextStyle(
                  color: Colors.black,
                  fontFamily: 'OpenSans'
                ),
            ),
          )
        ],
      ),
    );
  }
}
