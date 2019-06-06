import 'package:flutter/material.dart';

class BottomActionButton extends StatelessWidget {
  const BottomActionButton({Key key, this.text, this.icon}) : super(key: key);

  final String text;
  final IconData icon;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        SizedBox(
          height: 60,
          width: 60,
          child: OutlineButton(
            child: Icon(
              icon,
              color: Theme.of(context).accentColor,
            ),
            onPressed: () {},
            shape: StadiumBorder(),
          ),
        ),
        SizedBox(
          height: 16,
        ),
        Text(text),
      ],
    );
  }
}
