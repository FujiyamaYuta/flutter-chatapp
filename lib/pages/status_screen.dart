import 'package:flutter/material.dart';
import '../models/select_amida.dart';


void main(){
  runApp(new MaterialApp(
    home: new StatusScreen(),
  ));
}

class StatusScreen extends StatefulWidget {
  @override
  _State createState() => new _State();
}

//State is information of the application that can change over time or when some actions are taken.
class _State extends State<StatusScreen>{

  bool _value1 = true;
  bool _value2 = false;

  void _onChanged1(bool value){
    setState((){
      if(value == false){
        return;
      }
      _value1 = value;
      _value2 = false;
      amidaNumber = 1;
    });
  }

  void _onChanged2(bool value){
    setState((){
      if(value == false){
        return;
      }
      _value1 = false;
      _value2 = value;
      amidaNumber = 2;
    });
  }


  @override
  Widget build(BuildContext context) {
    FocusScope.of(context).requestFocus(new FocusNode()); // ** キーボードを下げる

    return
    new Scaffold(
      // appBar: new AppBar(
      //   title: new Text('Name here'),
      // ),
      //hit Ctrl+space in intellij to know what are the options you can use in flutter widgets
      body: new Container(
        padding: new EdgeInsets.all(32.0),
        child: new Center(
          child: new Column(
            children: <Widget>[
              new SwitchListTile(
                value: _value1, 
                onChanged: _onChanged1,
                title: new Text('あみだくじ', style: new TextStyle(fontWeight: FontWeight.bold)),
              ),
              new SwitchListTile(
                  value: _value2,
                  onChanged: _onChanged2,
                  title: new Text('当たりくじ', style: new TextStyle(fontWeight: FontWeight.bold)),
              )
            ],
          ),
        ),
      ),
    );
  }
}