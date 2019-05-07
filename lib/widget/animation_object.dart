import 'dart:ui';

import 'package:flutterwhatsapp/util/util.dart';
import 'package:flutter/material.dart';
import '../models/user_model.dart';

class AnimationObject extends StatelessWidget {

 // @override
  Widget build(BuildContext context) {
    return new ListView.builder(
      itemCount: dummyData.length,
      itemBuilder: (context, i) => new Column(
        children: <Widget>[
          SizedBox(
            width: 70,
            height: 70,
            child: Container(
              child: ClipRRect(
                borderRadius: BorderRadius.circular(100.0),
                child: Image.asset(dummyData[i].avatarUrl),
              )
            )
          ),
        ],
      ),
    );
  }


  // @override
  // Widget build(BuildContext context) {
  //   logger.info('build');
  //   return Stack(

  //     children: [

  //       Column(
  //         children: <Widget>[
  //           SizedBox(
  //             width: 70,
  //             height: 70,
  //             child: Container(
  //               child: ClipRRect(
  //                 borderRadius: BorderRadius.circular(100.0),
  //                 child: Image.asset('assets/amida-icon/icon_1.png'),
  //               )
  //             )
  //           ),

  //           SizedBox(
  //             width: 70,
  //             height: 70,
  //             child: Container(
  //               child: ClipRRect(
  //                 borderRadius: BorderRadius.circular(100.0),
  //                 child: Image.asset('assets/amida-icon/icon_2.png'),
  //               )
  //             )
  //           ),

  //           SizedBox(
  //             width: 70,
  //             height: 70,
  //             child: Container(
  //               child: ClipRRect(
  //                 borderRadius: BorderRadius.circular(100.0),
  //                 child: Image.asset('assets/amida-icon/icon_3.png'),
  //               )
  //             )
  //           ),

  //           SizedBox(
  //             width: 70,
  //             height: 70,
  //             child: Container(
  //               child: ClipRRect(
  //                 borderRadius: BorderRadius.circular(100.0),
  //                 child: Image.asset('assets/amida-icon/icon_4.png'),
  //               )
  //             )
  //           ),

  //           SizedBox(
  //             width: 70,
  //             height: 70,
  //             child: Container(
  //               child: ClipRRect(
  //                 borderRadius: BorderRadius.circular(100.0),
  //                 child: Image.asset('assets/amida-icon/icon_5.png'),
  //               )
  //             )
  //           ),

  //           SizedBox(
  //             width: 70,
  //             height: 70,
  //             child: Container(
  //               child: ClipRRect(
  //                 borderRadius: BorderRadius.circular(100.0),
  //                 child: Image.asset('assets/amida-icon/icon_5.png'),
  //               )
  //             )
  //           ),

  //         ],
  //       ),

  //       // SizedBox(
  //       //   width: 70,
  //       //   height: 70,
  //       //   child: Container(
  //       //     child: ClipRRect(
  //       //       borderRadius: BorderRadius.circular(100.0),
  //       //       child: Image.asset('assets/amida-icon/icon_1.png'),
  //       //     )
  //       //   )
  //       // ),
  //     ],
  //   );
  // }
}
