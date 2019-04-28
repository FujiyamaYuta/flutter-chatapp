import 'package:flutter/material.dart';
import '../models/user_model.dart';

class CallsScreen extends StatelessWidget {

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
  
  var _message;
  final controller = TextEditingController();

  List<String> items = <String>[
    'A', 'B', 'C', 'D', 'E', 'F', 'G', 'H', 'I', 'J', 'K', 'L', 'M', 'N',
  ];

  @override
  void initState(){
    _message = 'OK';
    super.initState();
  }

  Widget buildListTile(BuildContext context, String item) {
    Widget secondary;
    if (_itemType == _MaterialListType.twoLine) {
      secondary = const Text('Additional item information.');
    } else if (_itemType == _MaterialListType.threeLine) {
      secondary = const Text(
        'Even more additional list item information appears on line three.',
      );
    }
    return MergeSemantics(
      child: ListTile(
        isThreeLine: _itemType == _MaterialListType.threeLine,
        dense: _dense,
        leading: _showAvatars ? ExcludeSemantics(child: CircleAvatar(child: Text(item))) : null,
        title: Text('This item represents $item.'),
        subtitle: secondary,
        trailing: _showIcons ? Icon(Icons.info, color: Theme.of(context).disabledColor) : null,
      ),
    );
  }

  @override
  Widget build(BuildContext context){

    Iterable<Widget> listTiles = items.map<Widget>((String item) => buildListTile(context, item));

    return Scaffold(
      resizeToAvoidBottomPadding: false,
      body:Scrollbar(
        child:
          Column(
            mainAxisAlignment: MainAxisAlignment.start,
            mainAxisSize: MainAxisSize.max,
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: <Widget>[

              Padding(
                padding: EdgeInsets.all(20.0),
                child: Text(
                  _message,
                  style: TextStyle(
                    fontSize:32.0,
                    fontWeight: FontWeight.w400,
                    fontFamily: "Roboto"
                  ),
                )
              ),

              // Padding(
              //   padding:EdgeInsets.all(10.0),
              //   child:ListView(
              //     padding: EdgeInsets.symmetric(vertical: false ? 4.0 : 8.0),
              //     // itemCount: dummyData.length,
              //     // padding: EdgeInsets.symmetric(vertical: false ? 4.0 : 8.0),
              //     // children: listTiles.toList(),
              //   ),
              // ),

              Padding(
                padding:EdgeInsets.all(10.0),
                child:TextFormField(
                  // keyboardType: TextInputType.number,
                  controller: controller,
                  decoration: const InputDecoration(
                    border: OutlineInputBorder(),
                    labelText: 'Name',
                    filled: true,
                    icon: Icon(Icons.person),
                    hintText: 'What do people call you?',
                    // hintText: '参加者の名前',
                    // prefixText: '\$',
                    // suffixText: 'USD',
                    suffixStyle: TextStyle(color: Colors.green)
                  ),
                  maxLines: 1,
                ),
              ),

              FlatButton(
                padding:EdgeInsets.all(10.0),
                color:Colors.lightBlueAccent,
                child: Text(
                  "登録する",
                  style:TextStyle(
                    fontSize:16.0,
                    color: Colors.blue,
                    fontWeight: FontWeight.w400,
                    fontFamily: "Roboto"
                  )
                ),
                onPressed: buttonPressed,
              )

            ],
          )
      ) 
    );
  }

void buttonPressed(){
  setState((){
    _message = 'you said ' + controller.text;
  });
}

}