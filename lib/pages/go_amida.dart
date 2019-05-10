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

  var _index = 1;
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
        child:ListView.builder(
          itemCount: userData.length,
          itemBuilder: (context, int i) {
            return
              AnimatedAlign(
                alignment: _alignment,
                duration: const Duration(milliseconds: 1000),
                // child: AnimationObject(),
                // アイコンを動的に追加
                child:
                  Stack(
                  children: [
                    Column(
                      children: <Widget>[
                        SizedBox(
                          width: 60,
                          height: 60,
                          child: Container(
                            child: ClipRRect(
                              borderRadius: BorderRadius.circular(100.0),
                              child: Image.asset(userData[i].avatarUrl),
                            )
                          )
                        ),
                      ]
                    )
                  ]
                ),
                curve: Curves.easeInOut,
              );
          },
        )
      ),
    );
  }
}