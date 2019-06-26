import 'package:flutter/material.dart';

import './dialogs.dart';

class Button extends StatelessWidget {
  final Icon icon;
  final String label;
  final Color color;
  final Function onButtonPressed;

  Button({this.label, this.icon, this.color, this.onButtonPressed});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        IconButton(
          icon: icon,
          color: color,
          onPressed: onButtonPressed,
        ),
        Container(
          margin: EdgeInsets.only(
            top: 8,
          ),
          child: Text(
            label,
            style: TextStyle(
              color: color,
              fontSize: 12,
              fontWeight: FontWeight.w500,
            ),
          ),
        ),
      ],
    );
  }
}
