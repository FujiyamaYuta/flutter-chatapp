import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'dart:math';
import '../models/user_model.dart';
import '../models/icon_url_model.dart';


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
  // final controller = TextEditingController();
  final controller = TextEditingController();
  // final _chatTextController = TextEditingController();

  List<String> items = <String>[
    'A', 'B', 'C', 'D', 'E', 'F', 'G', 'H', 'I', 'J', 'K', 'L', 'M', 'N',
  ];

  @override
  void initState(){
    _message = 'OK';
    super.initState();
  }


  Widget buildListTile(BuildContext context, String item) {
  }

  @override
  Widget build(BuildContext context){

    Iterable<Widget> listTiles = items.map<Widget>((String item) => buildListTile(context, item));
    listTiles = ListTile.divideTiles(context: context, tiles: listTiles);

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

              Padding(
                padding:EdgeInsets.all(10.0),
                child:CupertinoTextField(
                  controller: controller,
                  textCapitalization: TextCapitalization.sentences,
                  placeholder: '名前',
                  decoration: BoxDecoration(
                    border: Border.all(
                      width: 0.0,
                      color: CupertinoColors.inactiveGray,
                    ),
                    borderRadius: BorderRadius.circular(15.0),
                  ),
                  maxLines: null,
                  keyboardType: TextInputType.multiline,
                  prefix: const Padding(padding: EdgeInsets.symmetric(horizontal: 4.0)),
                  suffix: Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 4.0),
                    child: CupertinoButton(
                      color: CupertinoColors.activeGreen,
                      minSize: 0.0,
                      child: const Icon(
                        CupertinoIcons.add_circled,
                        size: 21.0,
                        color: CupertinoColors.white,
                      ),
                      padding: const EdgeInsets.all(2.0),
                      borderRadius: BorderRadius.circular(15.0),
                      onPressed: buttonPressed,
                    ),
                  ),
                ),
              ),

              // Padding(
              //   padding:EdgeInsets.all(10.0),
              //   child:TextFormField(
              //     // keyboardType: TextInputType.number,
              //     controller: controller,
              //     decoration: const InputDecoration(
              //       border: OutlineInputBorder(),
              //       labelText: 'Name',
              //       filled: true,
              //       icon: Icon(Icons.person),
              //       hintText: 'What do people call you?',
              //       suffixStyle: TextStyle(color: Colors.green)
              //     ),
              //     maxLines: 1,
              //   ),
              // ),
              // ButtonBar(
              //   mainAxisSize: MainAxisSize.min,
              //   children: <Widget>[
              //     RaisedButton.icon(
              //       icon: const Icon(Icons.add, size: 18.0),
              //       label: const Text('登録する', semanticsLabel: 'RAISED BUTTON 2'),
              //       onPressed: buttonPressed,
              //       color: Theme.of(context).primaryColor
              //     ),
              //   ],
              // ),
            ],
          )
      ) 
    );
  }

void buttonPressed(){
  setState((){
    _message = controller.text;
    debugPrint('======= ${widget.title}');
    debugPrint('======= ${controller.text}');
    Random random = new Random();
    int userNum = dummyData.length;
    int iconUrlLenght = iconUrlData.length;
    int num = random.nextInt(iconUrlLenght + 1); // 0〜22までの乱数を取得
    if(0 != dummyData.length){
      userNum = dummyData[dummyData.length-1].userNumber;
      userNum ++;
      debugPrint('==== userNum - if ==== ${userNum}');
    }else{
      userNum = 1;
      // userNum = dummyData[dummyData.length].userNumber;
      debugPrint('==== userNum - else ==== ${userNum}');
    }
    dummyData.add(new UserModel(name: controller.text,message: "Hey Flutter, You are so amazing !",avatarUrl:iconUrlData[num].avatarUrl,userNumber:userNum));
    for(int i=0; i<dummyData.length; i++){
      debugPrint('=== dummyData[i].name ==== ${dummyData[i].name}');
      debugPrint('==== dummyData[i].userNumber ==== ${dummyData[i].userNumber}');
      debugPrint('==== userNum==== ${userNum}');
      // debugPrint('==== dummyData.length ==== ${dummyData.length}');
    }
    controller.clear();
  });
}

}