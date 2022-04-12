// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import 'package:state_management/sliders.dart';
import 'package:state_management/video_progress.dart';

void main(){
  runApp(MaterialApp(
     title: "StateManagement",
      theme: ThemeData(
        primarySwatch: Colors.teal,
      ),
      debugShowCheckedModeBanner: false,
      home: MyApp(),
  ));
}

class MyApp extends StatelessWidget {
  const MyApp({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
     body: Center(
        child: Stack(
          children:<Widget> [
            Expanded(child: VideoProgress()),
            Positioned(child: CustomSlider(),
            bottom: 0,
            left: 0,
            right: 0,
            )
          ],
        ),
      ),
    );
  }
}
