import 'package:flutter/material.dart';
import 'package:sliding_up_panel/sliding_up_panel.dart';
import 'package:dope_podcast/components/button_titled.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  BorderRadiusGeometry radius = BorderRadius.only(
    topLeft: Radius.circular(36.0),
    topRight: Radius.circular(36.0),
  );


  @override
  Widget build(BuildContext context) {
    return new Container(
      child: SlidingUpPanel(
          parallaxEnabled: true,
          parallaxOffset: .5,
          minHeight: MediaQuery.of(context).size.height * 0.35,
          borderRadius: radius,
          panel: new Center(
            child: new Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: <Widget>[
                new SizedBox(
                  height: 30,
                ),
                new Text(
                    "Handpicked",
                    style: new TextStyle(
                      fontSize: 30,
                      fontWeight: FontWeight.w500
                    ),
                )
              ],
            ),
          ),
          body: new Center(
            child: new Column(
              children: <Widget>[
                new SizedBox(
                  height: 50
                ),
                new Text(
                    "Browse",
                    style: new TextStyle(
                      fontSize: 50,
                      color: Colors.white
                    ),
                ),
                new SizedBox(
                    height: 15
                ),
                new Text(
                    "Find podcast that suit to your interest",
                    style: new TextStyle(
                        fontSize: 20,
                        color: Colors.white
                    ),
                ),
                new SizedBox(
                    height: 75
                ),
                Container(
                  height: 75,
                  padding: EdgeInsets.fromLTRB(25, 0, 25, 0),
                  child: new Card(
                    shape: StadiumBorder(
                      side: BorderSide(
                        color: Colors.transparent
                      )
                    ),
                    color: Colors.white.withAlpha(120),
                    child: new SizedBox.expand(
                      child: Container(
                          alignment: Alignment.centerLeft,
                          padding: EdgeInsets.only(left: 20),
                          child: new Text(
                              "Type keyboard",
                              style: new TextStyle(
                                color: Colors.white
                              ),
                          )
                      ),
                    ),
                  ),
                ),
                new SizedBox(
                    height: 75
                ),
                new Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: <Widget>[
                      ButtonTitled(
                        icon: Icons.music_note,
                        title: "Music",
                      ),
                      ButtonTitled(
                        icon: Icons.music_note,
                        title: "Music",
                      ),
                      ButtonTitled(
                        icon: Icons.music_note,
                        title: "Music",
                      ),
                      ButtonTitled(
                        icon: Icons.music_note,
                        title: "Music",
                      )
                  ],
                )
              ],
            ),
          ),
      ),
    );
  }
}
