import 'package:dope_podcast/constants/assets.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class DetailsPage extends StatelessWidget {
  DetailsPage({this.image, this.title, this.description});

  final String image;
  final String title;
  final String description;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: CustomScrollView(
        slivers: <Widget>[
          SliverAppBar(
            expandedHeight: 200,
            flexibleSpace: FlexibleSpaceBar(
              background: Image.asset(Assets.beach),
            ),
          ),
          SliverList(
            delegate: SliverChildListDelegate([]),
          ),
        ],
      ),
    );
  }
}
