/*create an application to change background when button is clicked*/

import 'dart:math';

import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Background Change',
      home: BackgroundChange(),
    );
  }
}

class BackgroundChange extends StatefulWidget {
  const BackgroundChange({super.key});

  @override
  State<BackgroundChange> createState() => _BackgroundChangeState();
}

class _BackgroundChangeState extends State<BackgroundChange> {
  Color selectedColor = Colors.blueAccent;
  List<Color> colorList = [
    Colors.redAccent,
    Colors.yellowAccent,
    Colors.greenAccent,
    Colors.black,
    Colors.white,
    Colors.purpleAccent
  ];

  void getRandomColor() {
    setState(() {
      var index = Random().nextInt(colorList.length);
      selectedColor = colorList[index];
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: selectedColor,
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ElevatedButton(
              onPressed: () {
                getRandomColor();
              },
              child: Text('Change Background'),
            )
          ],
        ),
      ),
    );
  }
}