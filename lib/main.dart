import 'package:dope_podcast/pages/details.dart';
import 'package:dope_podcast/pages/home.dart';
import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Dope Podcast',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.blue,
        accentColor: Color(0xffff8b62),
        accentIconTheme: IconThemeData(
          color: Colors.white
        ),
      ),
      home: DetailsPage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key key, this.title}) : super(key: key);

  final String title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xff0b665c),
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        leading: IconButton(
            icon: new Icon(Icons.menu),
            onPressed: () {

            }
        ),
      ),
      body: new HomePage()
    );
  }
}
