import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'dart:math';
import '../models/user_model.dart';
import '../models/icon_url_model.dart';

class UserScreen extends StatefulWidget {
  @override
  UserScreenState createState() {
    return new UserScreenState();
  }
}

class UserScreenState extends State<UserScreen> {
  // var title;
  var _message;
  final _controller = TextEditingController();

  // これがないとリストが表示されないっぽい
  Widget buildListTile(BuildContext context, String item) {}

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        title: CupertinoTextField(
          controller: _controller,
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
              onPressed: buttonAdd,
            ),
          ),
        ),
      ),
      body: Builder(
        builder: _buildBody,
      ),
    );
  }

  // @override
  Widget _buildBody(BuildContext context) {
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
                  backgroundImage: new AssetImage(dummyData[i].avatarUrl)
                  // backgroundImage: new NetworkImage(dummyData[i].avatarUrl),
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
                trailing: new Container(
                  height: 28.0,
                  width: 28.0,
                  child: FittedBox(
                    child: FloatingActionButton(
                        backgroundColor: Colors.orange[900],
                        onPressed: () {
                          UserDel(i);
                        },
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
    );
  }

  void UserDel(int userNumber) {
    setState(() {
      // 指定のリストを削除する

      // ToolTipを表示
      String userName = dummyData[userNumber].name;
      Scaffold.of(context).showSnackBar(SnackBar(
          // backgroundColor: Colors.amberAccent,
          content: Text('$userName\ さんを削除しました。')));

      dummyData.removeAt(userNumber);
    });
  }

  void buttonAdd() {
    setState(() {
      _message = _controller.text;
      _message = _message.replaceFirst(new RegExp(r"^\s+"), ""); //** 文字列から空白を削除
      _message = _message.replaceFirst(new RegExp(r"\s+$"), ""); //** 文字列から空白を削除

      if (_message == null || _message == "") {
        // ToolTipを表示
        Scaffold.of(context)
            .showSnackBar(const SnackBar(content: Text('名前が入力されていません。')));
        return;
      }

      Random random = new Random();
      int userNum = dummyData.length;
      int iconUrlLenght = iconUrlData.length;
      int num = random.nextInt(iconUrlLenght + 1); // 0〜22までの乱数を取得
      if (0 != dummyData.length) {
        userNum = dummyData[dummyData.length - 1].userNumber;
        userNum++;
      } else {
        userNum = 1;
      }
      dummyData.add(new UserModel(
          name: _message,
          avatarUrl: iconUrlData[num].avatarUrl,
          userNumber: userNum));
      _controller.clear();
    });
  }
}
