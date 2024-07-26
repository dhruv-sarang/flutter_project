import 'package:flutter/material.dart';
import 'dart:math' as math;

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  String imageUrl =
      'https://cdn.pixabay.com/photo/2015/02/24/15/41/wolf-647528_1280.jpg';

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Column Widget',
      debugShowCheckedModeBanner: false,
      theme: ThemeData.dark(),
      home: Scaffold(
        appBar: AppBar(
          title: Center(
            child: Text(
              'Material App Bar',
              style: TextStyle(
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
        ),
        body: Center(
          child: Container(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Container(
                  height: 100,
                  width: 300,
                  decoration: BoxDecoration(
                    border: Border.all(
                      color: Colors.red,
                      width: 10,
                    ),
                    /*borderRadius: BorderRadius.vertical(
                        top: Radius.circular(100), bottom: Radius.circular(50)*/
                    /*borderRadius: BorderRadius.horizontal(
                        left: Radius.circular(10), right: Radius.circular(100)),*/
                    borderRadius: BorderRadius.only(
                        /*topLeft: Radius.circular(50),
                        bottomRight: Radius.circular(50),*/
                        topRight: Radius.circular(50),
                        bottomLeft: Radius.circular(50)),
                  ),
                  child: Center(
                    child: Text(
                      'Container 1',
                      style: TextStyle(
                          color: Colors.white,
                          fontSize: 40,
                          fontWeight: FontWeight.bold),
                    ),
                  ),
                ),
                Container(
                  child: Transform(
                    alignment: Alignment.center,
                    transform: Matrix4.rotationZ(
                      math.pi / 4,
                    ),
                    child: Container(
                      height: 150,
                      width: 150,
                      decoration: BoxDecoration(
                        color: Colors.transparent,
                        border: Border.all(
                          width: 10,
                          color: Colors.amber,
                        ),
                      ),
                      child: Transform(
                        alignment: Alignment.center,
                        transform: Matrix4.rotationZ(
                          -math.pi / 4,
                        ),
                        child: Center(
                          child: Text(
                            'Container 2',
                            style: TextStyle(
                                color: Colors.white,
                                fontSize: 24,
                                fontWeight: FontWeight.bold),
                          ),
                        ),
                      ),
                    ),
                  ),
                ),
                Container(
                  height: 100,
                  width: 300,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(100),
                    color: Colors.cyan,
                    border: Border.all(color: Colors.deepPurple, width: 10),
                  ),
                  child: Center(
                    child: Transform(
                      alignment: Alignment.center,
                      transform: Matrix4.rotationZ(-0.2),
                      child: Text(
                        'Container 3',
                        style: TextStyle(
                            color: Colors.white,
                            fontSize: 40,
                            fontWeight: FontWeight.bold),
                      ),
                    ),
                  ),
                ),
                Container(
                  height: 150,
                  width: 150,
                  decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    color: Colors.amberAccent,
                    border: Border.all(width: 10, color: Colors.grey),
                    image: DecorationImage(
                        // image: Image.network(imageUrl),
                        image: AssetImage('assets/images/images1.jpeg'),
                        fit: BoxFit.cover),
                  ),
                ),
                Container(
                  padding: EdgeInsets.all(20),
                  height: 100,
                  width: 300,
                  alignment: Alignment.center,
                  decoration: BoxDecoration(
                    color: Colors.amber,
                    border: Border.all(color: Colors.green, width: 2),
                    borderRadius: BorderRadius.circular(50),
                    boxShadow: [
                      BoxShadow(
                          color: Colors.blue, blurRadius: 70, spreadRadius: 5),
                      BoxShadow(
                          color: Colors.brown, blurRadius: 50, spreadRadius: 5),
                      BoxShadow(
                          color: Colors.red, blurRadius: 30, spreadRadius: 5),
                    ],
                    gradient: LinearGradient(
                      colors: [
                        Colors.lightBlueAccent.shade700,
                        Colors.lightBlueAccent.shade400,
                        Colors.lightBlueAccent.shade200,
                        Colors.lightBlueAccent.shade100,
                        Colors.pinkAccent.shade100,
                        Colors.pinkAccent.shade200,
                        Colors.pinkAccent.shade400,
                        Colors.pink.shade700
                      ],
                      begin: Alignment.topCenter,
                      end: Alignment.bottomCenter,
                    ),
                  ),
                  child: Center(
                    child: Text(
                      'Container 5',
                      style: TextStyle(
                          color: Colors.black,
                          fontSize: 40,
                          fontWeight: FontWeight.bold),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
