import 'package:flutter/material.dart';

import './button.dart';
import './dialogs.dart';

class ButtonsRow extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _ButtonsRowState();
  }
}

class _ButtonsRowState extends State<ButtonsRow> {
  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(32),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: <Widget>[
          Button(
            icon: Icon(Icons.call),
            label: 'Call',
            color: Theme.of(context).primaryColor,
            onButtonPressed: (){
              Dialogs.alert(
                context: context,
                title: 'Button Pressed',
                content: 'Button <Call> was pressed.',
              );
            },
          ),
          Button(
            icon: Icon(Icons.near_me),
            label: 'Route',
            color: Theme.of(context).primaryColor,
            onButtonPressed: (){
              Dialogs.alert(
                context: context,
                title: 'Button Pressed',
                content: 'Button <Route> was pressed.',
              );
            },
          ),
          Button(
            icon: Icon(Icons.share),
            label: 'Share',
            color: Theme.of(context).primaryColor,
            onButtonPressed: (){
              Dialogs.alert(
                context: context,
                title: 'Button Pressed',
                content: 'Button <Share> was pressed.',
              );
            },
          ),
        ],
      ),
    );
  }
}
