import 'package:flutter/material.dart';
import 'package:flutterwhatsapp/pages/go_amida.dart';
// import 'package:flutterwhatsapp/pages/camera_screen.dart';
import 'package:flutterwhatsapp/pages/user_screen.dart';
import 'package:flutterwhatsapp/pages/status_screen.dart';

class AmidaApp extends StatefulWidget {
  var cameras;
  AmidaApp(this.cameras);

  @override
  _AmidaAppState createState() => new _AmidaAppState();
}

class _AmidaAppState extends State<AmidaApp>
    with SingleTickerProviderStateMixin {
  TabController _tabController;

  @override
  // ** タブの初期値を設定する
  void initState() {
    super.initState();
    // ** initialIndex → タブの初期値、 length → tab数
    _tabController = new TabController(vsync: this, initialIndex: 0, length: 3);
  }

  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: new AppBar(
        title: new Text("あみだくじアプリ"),
        elevation: 0.7,
        bottom: new TabBar(
          controller: _tabController,
          indicatorColor: Colors.white,
          tabs: <Widget>[
            new Tab(text: "参加者登録"),
            new Tab(text: "目的"),
            new Tab(text: "あみだ"),
          ],
        ),
        actions: <Widget>[
          new Icon(Icons.search),
          new Padding(
            padding: const EdgeInsets.symmetric(horizontal: 5.0),
          ),
          new Icon(Icons.more_vert)
        ],
      ),
      body: new TabBarView(
        controller: _tabController,
        children: <Widget>[
          new UserScreen(),
          new StatusScreen(),
          new GoAmidaScreen(),
        ],
      ),
      // floatingActionButton: new FloatingActionButton(
      //   backgroundColor: Theme.of(context).accentColor,
      //   child: new Icon(
      //     Icons.message,
      //     color: Colors.white,
      //   ),
      //   onPressed: () => print("open chats"),
      // ),
    );
  }
}
