import 'package:flutter/material.dart';

class CallsScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new Center(
      child: new Text(
        "Calls",
        style: new TextStyle(fontSize: 20.0),
      ),
      // floatingActionButton: new FloatingActionButton(
      //   backgroundColor: Theme.of(context).accentColor,
      //   child: new Icon(
      //     Icons.message,
      //     color: Colors.white,
      //   ),
      //   onPressed: () => print("open chats"),
      // ),
    );
  }
}
