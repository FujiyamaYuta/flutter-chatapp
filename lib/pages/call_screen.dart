import 'package:flutterwhatsapp/widget/animation_object.dart';
import 'package:flutterwhatsapp/widget/app_scaffold.dart';
import 'package:flutter/material.dart';
import '../models/select_amida.dart';

class CallsScreen extends StatefulWidget {
  // static const routeName = 'animatedAlign';

  @override
  _CallsScreenState createState() => _CallsScreenState();
}

class _CallsScreenState extends State<CallsScreen> {
  static const _alignments = [
    Alignment.topLeft,
    Alignment.topRight,
    Alignment.bottomLeft,
    Alignment.bottomRight,
  ];

  var _index = 0;
  AlignmentGeometry get _alignment => _alignments[_index % _alignments.length];

  @override
  Widget build(BuildContext context) {
    FocusScope.of(context).requestFocus(new FocusNode()); // ** キーボードを下げる
    return AppScaffold(
      // title: 'AnimatedAlign',
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          setState(() {
            _index++;
          });
        },
        child: const Icon(Icons.refresh),
      ),
      child: AnimatedAlign(
        alignment: _alignment,
        duration: const Duration(milliseconds: 1000),
        child: AnimationObject(),
        curve: Curves.easeInOut,
      ),
    );
  }
}