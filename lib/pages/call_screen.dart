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
    Alignment.bottomRight,
    Alignment.bottomLeft,
  ];

  var _index = 0;
  AlignmentGeometry get _alignment => _alignments[_index % _alignments.length];

  @override
  Widget build(BuildContext context) {
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
        duration: const Duration(milliseconds: 500),
        child: AnimationObject(),
        curve: Curves.easeInOut,
      ),
    );
  }
}


// void main(){
//   runApp(new MaterialApp(
//     home: new CallsScreen(),
//   ));
// }

// class CallsScreen extends StatefulWidget {
//   @override
//   _State createState() => new _State();
// }

// //State is information of the application that can change over time or when some actions are taken.
// class _State extends State<CallsScreen>{

//   @override
//   Widget build(BuildContext context) {
//     return new Scaffold(
//       body: new Container(
//         padding: new EdgeInsets.all(32.0),
//         child: new Center(
//           child: new Column(
//             children: <Widget>[

//             ],
//           ),
//         ),
//       ),
//     );
//   }
// }