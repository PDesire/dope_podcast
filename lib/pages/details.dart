import 'package:dope_podcast/components/bottom_action_button.dart';
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
              background: Image.asset(
                Assets.beach,
                fit: BoxFit.cover,
              ),
            ),
          ),
          SliverList(
            delegate: SliverChildListDelegate([
              SizedBox(height: 20),
              Padding(
                padding: const EdgeInsets.all(24),
                child: _buildTitle(context),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 24),
                child: _buildDescription(),
              ),
              Column(
                mainAxisSize: MainAxisSize.max,
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: <Widget>[
                  _buildAuthor(),
                  _buildActions(),
                ],
              ),
            ]),
          ),
        ],
      ),
    );
  }

  Row _buildActions() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: <Widget>[
        BottomActionButton(
          icon: Icons.star,
          text: 'Favorite',
        ),
        BottomActionButton(
          icon: Icons.trending_up,
          text: 'Favorite',
        ),
        BottomActionButton(
          icon: Icons.access_time,
          text: 'Favorite',
        ),
      ],
    );
  }

  ListTile _buildAuthor() {
    return ListTile(
      contentPadding: const EdgeInsets.all(24),
      leading: CircleAvatar(
        radius: 25,
        backgroundImage:
            NetworkImage('https://randomuser.me/api/portraits/men/92.jpg'),
      ),
      title: Text(
        'Adam Cunningham',
        style: TextStyle(fontWeight: FontWeight.bold),
      ),
      subtitle: Text('23.5k Followers'),
    );
  }

  Text _buildDescription() {
    return Text(
      'Lorem ipsum dolor sit amet, consetetur sadipscing elitr, sed diam nonumy eirmod tempor invidunt ut labore et dolore magna aliquyam',
      style: TextStyle(
        height: 1.4,
        fontSize: 16,
        color: Colors.black54,
      ),
    );
  }

  Row _buildTitle(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: <Widget>[
        Flexible(
          child: Text(
            'Minimalism Lifestyle',
            style: Theme.of(context).textTheme.display1.copyWith(
                  color: Colors.black,
                  fontWeight: FontWeight.bold,
                ),
            softWrap: true,
          ),
        ),
        CircleAvatar(
          backgroundColor: Theme.of(context).accentColor.withOpacity(0.1),
          radius: 50,
          child: FloatingActionButton(
            elevation: 0,
            onPressed: () {},
            child: Icon(Icons.play_arrow),
          ),
        ),
      ],
    );
  }
}
