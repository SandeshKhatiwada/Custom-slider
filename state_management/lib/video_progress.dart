// ignore_for_file: prefer_const_constructors, no_logic_in_create_state

import 'package:flutter/material.dart';

late _VideoProgressState stateOfideoProgress;

class VideoProgress extends StatefulWidget {
  const VideoProgress({ Key? key }) : super(key: key);

  @override
  State<VideoProgress> createState() {
    stateOfideoProgress = _VideoProgressState();
    return stateOfideoProgress;
  }
}

class _VideoProgressState extends State<VideoProgress> {
  var progress = 10.00;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("StateManagement"),
        centerTitle: true,
      ),
      body: Center(
        child: Text("Video Progress \n${progress.toStringAsFixed(2)}%",
        textAlign: TextAlign.center,
        style: TextStyle(
          fontSize: 30,
          fontWeight: FontWeight.bold
        ),
        ),
      ),
    );
  }
}