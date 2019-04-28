import 'package:flutter/material.dart';
import '../models/user_model.dart';


class StatusScreen extends StatelessWidget{

  final title = "Flluter サンプル";

  @override
  Widget build(BuildContext context){
    return new MaterialApp(
      title:'Flutter',
      theme: new ThemeData(
        primarySwatch:Colors.blue,
      ),
      home:new MyHomePage(
        title:this.title,
      )
    );
  }
}

class MyHomePage extends StatefulWidget{
  MyHomePage({Key key, this.title}):super(key:key);
  final String title;
  // final String message;

  @override
  _MyHomePageState createState() => new _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage>{

  int _counter = 0;

  void _incrementCounter(){
    setState((){
      _counter++;
    });
  }

  @override
  Widget build(BuildContext context){
    return Scaffold(
      // appBar: AppBar(title:Text(widget.title)),
      body:Center(
        child:Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children:<Widget>[
            Text(
              'You have pushed the button this many times'
            ),
            Text(
              '$_counter',
              style:Theme.of(context).textTheme.display1,
            )
          ]
        )
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: _incrementCounter,
        tooltip: 'set message',
        child: Icon(Icons.add),
      ),
    );
  }
}