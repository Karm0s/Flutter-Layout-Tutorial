import 'package:flutter/material.dart';

class LikesInfo extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _LikesInfoState();
  }
}

class _LikesInfoState extends State<LikesInfo> {
  int _likesCounter;
  bool _liked;

  @override
  void initState() {
    super.initState();
    _likesCounter = 40;
    _liked = false;
  }

  @override
  Widget build(BuildContext context) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: <Widget>[
        IconButton(
          icon: (_liked ? Icon(Icons.star) : Icon(Icons.star_border)),
          color: Colors.red[500],
          onPressed: () {
            setState((){
              if(_liked){
                _liked = false;
                _likesCounter--;
              }
              else{
                _liked = true;
                _likesCounter++;
              }
            });
          },
        ),
        Container(
          padding: EdgeInsets.only(
            top: 3,
            left: 5,
          ),
          child: Text(
            _likesCounter.toString(),
            style: TextStyle(
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
      ],
    );
  }
}
