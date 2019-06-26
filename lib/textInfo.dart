import 'package:flutter/material.dart';

class TextInfo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        Container(
          margin: EdgeInsets.only(
            bottom: 8,
          ),
          child: Text(
            'Oeschinen Lake Campground',
            style: TextStyle(
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
        Container(
          child: Text(
            'Kandersteg, Switzerland',
            style: TextStyle(
              color: Colors.grey[500],
            ),
          ),
        ),
      ],
    );
  }
}