// import 'package:flutter/material.dart';
// import 'package:camera/camera.dart';

// class CameraScreen extends StatefulWidget {
//   List<CameraDescription> cameras;

//   CameraScreen(this.cameras);

//   @override
//   CameraScreenState createState() {
//     return new CameraScreenState();
//   }
// }

// class CameraScreenState extends State<CameraScreen> {
//   CameraController controller;

//   @override
//   void initState() {
//     super.initState();
//     controller =
//         new CameraController(widget.cameras[0], ResolutionPreset.medium);
//     controller.initialize().then((_) {
//       if (!mounted) {
//         return;
//       }
//       setState(() {});
//     });
//   }

//   @override
//   void dispose() {
//     controller?.dispose();
//     super.dispose();
//   }

//   @override
//   Widget build(BuildContext context) {
//     if (!controller.value.initialized) {
//       return new Container();
//     }
//     return new AspectRatio(
//       aspectRatio: controller.value.aspectRatio,
//       child: new CameraPreview(controller),
//     );
//   }
// }

import 'package:flutter/material.dart';

class CameraScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new Center(
      child: new Text(
        "Camera",
        style: new TextStyle(fontSize: 20.0),
      ),
    );
  }
}