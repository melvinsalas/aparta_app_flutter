import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:material_design_icons_flutter/material_design_icons_flutter.dart';

import '../widgets/app_background.dart';
import '../widgets/app_button.dart';
import '../widgets/app_outline_button.dart';

class HomePage extends StatefulWidget {
  HomePage({Key key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Scaffold(
        appBar: AppBar(elevation: 0),
        body: AppBackground(child: _buildBody()),
      ),
    );
  }

  Widget _buildBody() {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16),
      child: Column(
        children: <Widget>[
          _buildIcon(),
          SizedBox(height: 64),
          _buildLoginCard(),
          _buildSocialMediaLoginCard()
        ],
      ),
    );
  }

  Widget _buildSocialMediaLoginCard() {
    Color color = Colors.grey[400];
    Widget divider = Expanded(
        child: Container(
      height: 1,
      color: color,
    ));

    return Column(
      children: <Widget>[
        Container(
          margin: EdgeInsets.all(8),
          child: Row(
            children: <Widget>[
              divider,
              Container(
                child: Text(
                  'or use',
                  style: TextStyle(
                    color: color,
                    fontSize: 12,
                  ),
                ),
                margin: EdgeInsets.symmetric(horizontal: 8),
              ),
              divider,
            ],
          ),
        ),
        Card(
          elevation: 0,
          shape: const RoundedRectangleBorder(
            borderRadius: BorderRadius.all(Radius.circular(16.0)),
          ),
          child: Container(
            margin: EdgeInsets.all(8),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                AppOutlineButton(
                  icon: MdiIcons.facebook,
                  onPressed: () {},
                ),
                AppOutlineButton(
                  icon: MdiIcons.google,
                  onPressed: () {},
                ),
                AppOutlineButton(
                  icon: MdiIcons.twitter,
                  onPressed: () {},
                ),
              ],
            ),
          ),
        ),
      ],
    );
  }

  Widget _buildLoginCard() {
    return Card(
      elevation: 0,
      shape: const RoundedRectangleBorder(
        borderRadius: BorderRadius.all(Radius.circular(16.0)),
      ),
      child: Container(
        margin: EdgeInsets.all(8),
        width: double.infinity,
        child: Column(
          children: <Widget>[
            _buildLoginTitle(),
            AppButton(
              color: Theme.of(context).accentColor,
              title: 'Sign in',
              onPressed: () {},
            ),
            AppButton(
              color: Theme.of(context).primaryColor,
              title: 'Sign up',
              outline: true,
              onPressed: () {},
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildLoginTitle() {
    return Container(
      margin: EdgeInsets.all(16),
      child: Column(
        children: <Widget>[
          Text(
            'Welcome to MI APARTA',
            style: TextStyle(
              fontWeight: FontWeight.bold,
              fontSize: 18,
              color: Theme.of(context).primaryColor,
            ),
          ),
          SizedBox(height: 8),
          Text(
            'Lorem Ipsum is simply dummy text',
            style: Theme.of(context).textTheme.subtitle.copyWith(
                  fontSize: 12,
                  color: Theme.of(context).primaryColor,
                ),
          ),
        ],
      ),
    );
  }

  Widget _buildIcon() {
    double iconSize = 96;
    return Column(
      children: <Widget>[
        Container(
          child: Icon(
            FontAwesomeIcons.home,
            color: Colors.white,
            size: iconSize,
          ),
          margin: EdgeInsets.only(
            right: iconSize / 8,
            bottom: 8,
          ), // Correction to icon
        ),
        Text(
          'MI APARTA',
          textAlign: TextAlign.center,
          style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold),
        ),
      ],
    );
  }
}
