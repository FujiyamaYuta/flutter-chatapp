import 'package:flutter/material.dart';
import '../models/user_model.dart';

class UserScreen extends StatefulWidget {
  @override
  UserScreenState createState() {
    return new UserScreenState();
  }
}

class UserScreenState extends State<UserScreen> {

  void buttonPressed(int userNumber){
    debugPrint('=== DELETE ===${userNumber}');
    // build(BuildContext context);
    setState((){
    dummyData.removeLast();
    // new UserScreenState();
    // new UserScreen();
    //   debugPrint('=== DELETE ===');
    });
  }

  @override
  Widget build(BuildContext context) {
    return new ListView.builder(
      itemCount: dummyData.length,
      itemBuilder: (context, i) => new Column(
            children: <Widget>[
              new Divider(
                height: 0,
              ),
              new ListTile(
                leading: new CircleAvatar(
                  foregroundColor: Theme.of(context).primaryColor,
                  backgroundColor: Colors.grey,
                  backgroundImage: new NetworkImage(dummyData[i].avatarUrl),
                ),
                title: new Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: <Widget>[
                    new Text(
                      dummyData[i].name,
                      style: new TextStyle(fontWeight: FontWeight.bold),
                    ),
                  ],
                ),
                subtitle: new Container(
                  padding: const EdgeInsets.only(top: 5.0),
                  child: new Text(
                    dummyData[i].message,
                    style: new TextStyle(color: Colors.grey, fontSize: 15.0),
                  ),
                ),

                trailing:
                new Container(
                  height: 28.0,
                  width: 28.0,
                  child: FittedBox(
                    child: FloatingActionButton(
                      // color: Colors.red ,
                      backgroundColor: Colors.orange[900],
                      // onPressed: buttonPressed(dummyData[i].userNumber),
                      onPressed: () { buttonPressed(dummyData[i].userNumber); },
                      child: Icon(Icons.close,color: Colors.white,size: 20.0,)
                    ),
                  ),
                ),
                // new FloatingActionButton(
                //   onPressed: buttonPressed,
                //   tooltip: 'set message',
                //   child: Icon(Icons.close,color: Colors.white,size: 20.0,)
                // ),
                
                // trailing: new Icon(
                  
                //   // アイコン画像の設定
                //   Icons.close,
                //   // アイコンの色の設定
                //   color:Colors.red,
                //   onPressed: buttonPressed
                // ),

              )
            ],
          ),
    );
  }

}