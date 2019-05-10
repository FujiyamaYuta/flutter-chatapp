import 'package:flutterwhatsapp/widget/animation_object.dart';
import 'package:flutterwhatsapp/widget/app_scaffold.dart';
import 'package:flutter/material.dart';
import '../models/select_amida.dart';
import '../models/user_model.dart';


class GoAmidaScreen extends StatefulWidget {
  // static const routeName = 'animatedAlign';

  @override
  _GoAmidaScreenState createState() => _GoAmidaScreenState();
}

class _GoAmidaScreenState extends State<GoAmidaScreen> {
  static const _alignments = [
    Alignment.topRight,
    Alignment.topLeft,
    // Alignment.bottomLeft,
    // Alignment.bottomRight,
  ];

  var _index = 0;
  AlignmentGeometry get _alignment => _alignments[_index % _alignments.length];

  @override
  Widget build(BuildContext context) {
    FocusScope.of(context).requestFocus(new FocusNode()); // ** キーボードを下げる
    return
    new Scaffold(
      floatingActionButton:FloatingActionButton(
        onPressed: () {
          setState(() {
            _index++;
          });
        },
        child: const Icon(Icons.refresh),
      ),
      body: new Container(
        padding: new EdgeInsets.all(32.0),
          child: new Column(
            children: <Widget>[

               new ListView.builder(
      itemCount: userData.length,
      itemBuilder: (context, i) => new Column(
            children: <Widget>[
              new Divider(
                height: 0,
              ),
              new ListTile(
                leading: new CircleAvatar(
                  foregroundColor: Theme.of(context).primaryColor,
                  backgroundColor: Colors.grey,
                  backgroundImage: new AssetImage(userData[i].avatarUrl)
                ),
                title: new Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: <Widget>[
                    new Text(
                      userData[i].name,
                      style: new TextStyle(fontWeight: FontWeight.bold),
                    ),
                  ],
                ),
                trailing: new Container(
                  height: 28.0,
                  width: 28.0,
                  child: FittedBox(
                    child: FloatingActionButton(
                        backgroundColor: Colors.orange[900],
                        child: Icon(
                          Icons.close,
                          color: Colors.white,
                          size: 20.0,
                        )),
                  ),
                ),
              )
            ],
          ),
    )

              // AnimatedAlign(
              //   alignment: _alignment,
              //   duration: const Duration(milliseconds: 1000),
              //   child: AnimationObject(),
              //   curve: Curves.easeInOut,
              // ),
              // AnimatedAlign(
              //   alignment: _alignment,
              //   duration: const Duration(milliseconds: 1000),
              //   child: AnimationObject(),
              //   curve: Curves.easeInOut,
              // ),
            ],
          ),
      ),
    );

    // AppScaffold(
    //   body: new Container(
    //   ),
    //   // title: 'AnimatedAlign',
    //   floatingActionButton: FloatingActionButton(
    //     onPressed: () {
    //       setState(() {
    //         _index++;
    //       });
    //     },
    //     child: const Icon(Icons.refresh),
    //   ),
    //   child: AnimatedAlign(
    //     alignment: _alignment,
    //     duration: const Duration(milliseconds: 1000),
    //     child: AnimationObject(),
    //     curve: Curves.easeInOut,
    //   ),
    // );
  }
}