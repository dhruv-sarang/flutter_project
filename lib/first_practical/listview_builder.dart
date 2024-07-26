import 'dart:math';

import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Listview (builder constructor)',
      home: HomeScreen(),
    );
  }
}

class HomeScreen extends StatelessWidget {
  List<Color> colorList = [
    Colors.blue.shade100,
    Colors.blue.shade200,
    Colors.blue.shade300,
    Colors.blue.shade400,
    Colors.blue.shade500,
    Colors.blue.shade600,
    Colors.blue.shade700,
  ];
  /*List<Color> colorList = [
    Colors.red,
    Colors.purple,
    Colors.indigo,
    Colors.blueAccent,
    Colors.green,
    Colors.yellow,
    Colors.orange,
  ];*/

  var colorIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Listview (Builder)'),
      ),
      body: Container(
        decoration: BoxDecoration(
          // color: Colors.red
        ),
        child: ListView.builder(
          shrinkWrap: true,
          // scrollDirection: Axis.horizontal,
          padding: EdgeInsets.all(5),
          physics: BouncingScrollPhysics(),
          itemCount: 50,
          itemBuilder: (context, index) {
            // var colorIndex = Random().nextInt(colorList.length);

            Color color = colorList[colorIndex];
            if (colorIndex < colorList.length - 1) {
              colorIndex++;
            } else {
              colorIndex = 0;
            }
            return Column(
              children: [
                ListTile(
                  leading: Icon(Icons.person),
                  title: Text('Entry - ${index + 1}', textAlign: TextAlign.start),
                  trailing: Icon(Icons.keyboard_arrow_right),
                  tileColor: colorList[colorIndex],
                  shape: RoundedRectangleBorder(
                    side: BorderSide(color: Colors.black, width: 1),
                    borderRadius: BorderRadius.all(
                      Radius.circular(10),
                    ),
                  ),
                ),
                SizedBox(height: 3)
              ],
            );
          },
        ),
      ),
    );
  }
}
