import 'package:flutter/material.dart';

import './mainInfo.dart';
import './buttons.dart';
import './informations.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        primarySwatch: Colors.lightBlue,
        brightness: Brightness.light,
      ),
      home: Scaffold(
        appBar: AppBar(
          title: Text('Flutter Layout Tutorial'),
        ),
        body: Body(),
      ),
    );
  }
}

class Body extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ListView(
      children: <Widget>[
        Image.asset(
          'assets/lake.jpeg',
          fit: BoxFit.cover,
          width: 600,
          height: 240,
        ),
        MainInfo(),
        ButtonsRow(),
        Informations(),
      ],
    );
  }
}
