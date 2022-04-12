// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables, prefer_final_fields

import 'package:flutter/material.dart';
import 'package:state_management/video_progress.dart';

class CustomSlider extends StatefulWidget {
  const CustomSlider({ Key? key }) : super(key: key);

  @override
  State<CustomSlider> createState() => _CustomSliderState();
}

class _CustomSliderState extends State<CustomSlider> {
  var _sliderValue = 0.1;
  void _onValueChanged(double val){
    setState(() {
      _sliderValue = val;
    });
    stateOfideoProgress.setState(() {
      stateOfideoProgress.progress = val * 100;
    });
  }
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 150,
      margin: EdgeInsets.symmetric(horizontal: 30),
      child: Slider(
        onChanged: _onValueChanged,
      value: _sliderValue,
      ),
    );
  }
}