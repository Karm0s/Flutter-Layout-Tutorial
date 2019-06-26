import 'package:flutter/material.dart';

import './textInfo.dart';
import './likesInfo.dart';

class MainInfo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(32),
      child: Row(
        children: <Widget>[
          Expanded(
            child: TextInfo(),
          ),
          LikesInfo(),
        ],
      ),
    );
  }
}



