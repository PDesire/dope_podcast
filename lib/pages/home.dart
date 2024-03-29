import 'package:flutter/material.dart';
import 'package:sliding_up_panel/sliding_up_panel.dart';
import 'package:dope_podcast/components/button_titled.dart';
import 'package:dope_podcast/components/avatar_titled.dart';
import 'package:dope_podcast/components/special_listtile.dart';
import 'package:dope_podcast/constants/assets.dart';
import 'package:dope_podcast/pages/details.dart';

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
          maxHeight: MediaQuery.of(context).size.height * 0.90,
          borderRadius: radius,
          panel: ListView(
            shrinkWrap: true,
            physics: NeverScrollableScrollPhysics(),
            children: <Widget>[
              new Center(
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
                          fontWeight: FontWeight.w500,
                          fontFamily: 'OpenSansBold'
                        ),
                    ),
                    new SizedBox(
                      height: 20,
                    ),
                    Container(
                      width: 40,
                      height: 5,
                      decoration: BoxDecoration(
                          color: Color(0xfff0ad86),
                          borderRadius: BorderRadius.all(Radius.circular(12.0))
                      ),
                    ),
                    new SizedBox(
                      height: 40,
                    ),
                    new Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: <Widget>[
                        SpecialListTile(
                            title: "Beach",
                            subtitle: "Dope Beach",
                            asset: Assets.beach,
                            onPressed: () {
                              Navigator.of(context).push(MaterialPageRoute(builder: (context) => DetailsPage(
                                title: "Beach",
                                description: "Super dope description",
                                image: Assets.beach,
                              )));
                            },
                        ),
                        SpecialListTile(
                            title: "Canyon",
                            subtitle: "Dope canyon",
                            asset: Assets.canyon,
                            onPressed: () {
                              Navigator.of(context).push(MaterialPageRoute(builder: (context) => DetailsPage(
                                title: "Canyon",
                                description: "Super dope description",
                                image: Assets.canyon,
                              )));
                            },
                        ),
                        SpecialListTile(
                            title: "Huts",
                            subtitle: "Dope huts",
                            asset: Assets.huts,
                            onPressed: () {
                              Navigator.of(context).push(MaterialPageRoute(builder: (context) => DetailsPage(
                                title: "Huts",
                                description: "Super dope description",
                                image: Assets.huts,
                              )));
                            },
                        )
                      ],
                    ),
                    new SizedBox(
                      height: 40,
                    ),
                    new Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: <Widget>[
                        Container(
                          alignment: Alignment.centerLeft,
                          padding: EdgeInsets.only(left: 30),
                          child: new Text(
                              "Top Authors",
                              style: new TextStyle(
                                fontSize: 20,
                                fontWeight: FontWeight.w400,
                                fontFamily: 'OpenSansBold'
                              ),
                          ),
                        ),
                        new SizedBox(
                          height: 10,
                        ),
                        new Row(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: <Widget>[
                            AvatarTitled(
                                asset: Assets.monkey,
                                title: "Monkey 1"
                            ),
                            AvatarTitled(
                                asset: Assets.monkey,
                                title: "Monkey 2"
                            ),
                            AvatarTitled(
                                asset: Assets.monkey,
                                title: "Monkey 3"
                            )
                          ],
                        )
                      ],
                    ),
                  ],
                ),
              ),
            ],
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
                      color: Colors.white,
                      fontFamily: 'OpenSansBold'
                    ),
                ),
                new SizedBox(
                    height: 15
                ),
                new Text(
                    "Find podcast that suit to your interest",
                    style: new TextStyle(
                        fontSize: 20,
                        color: Colors.white,
                        fontFamily: 'OpenSans'
                    ),
                ),
                new SizedBox(
                    height: 45
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
                                color: Colors.white,
                                fontFamily: 'OpenSans'
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
