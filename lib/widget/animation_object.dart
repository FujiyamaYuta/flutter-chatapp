import 'dart:ui';

import 'package:flutterwhatsapp/util/util.dart';
import 'package:flutter/material.dart';

class AnimationObject extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    logger.info('build');
    return Stack(
      children: [
        SizedBox(
          width: 120,
          height: 120,
          child: Image.asset('https://firebasestorage.googleapis.com/v0/b/bingo-card.appspot.com/o/amida-icon%2Ficon_1.png?alt=media&token=e22089ed-848d-4d94-beb4-a2e8fdbaf228'),
        ),
        Positioned(
          left: 0,
          right: 0,
          top: 30,
          child: ClipRect(
            child: BackdropFilter(
              filter: ImageFilter.blur(
                sigmaX: 10,
                sigmaY: 10,
              ),
              child: Container(
                height: 30,
                color: Colors.white.withAlpha(50),
              ),
            ),
          ),
        )
      ],
    );
  }
}
