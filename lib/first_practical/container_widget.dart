import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData.dark(),
      title: 'Container widget',
      home: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.black12,
          title: Center(child: Text('Container widget',
            style:TextStyle(
              fontSize: 30,
              fontWeight: FontWeight.bold,
                color: Colors.white60
            ),
          )
          ),
        ),
        body: Center(
          child: Container(
            // color: Colors.amber,
            padding: EdgeInsets.all(20),
            // margin: EdgeInsets.all(16),
            /*padding: EdgeInsets.symmetric(vertical: 20, horizontal: 30),*/
            /*padding: EdgeInsets.fromLTRB(10, 15, 20, 10),*/
            /*padding: EdgeInsets.only(top: 20, bottom: 20),*/
            height: 100,
            width: 300,
            alignment: Alignment.center,
            decoration: BoxDecoration(
              color: Colors.amber,
              border: Border.all(color: Colors.green, width: 2),
              borderRadius: BorderRadius.circular(50),
              boxShadow: [
                BoxShadow(color: Colors.blue, blurRadius: 70, spreadRadius: 5),
                BoxShadow(color: Colors.yellow, blurRadius: 50, spreadRadius: 5),
                BoxShadow(color: Colors.red, blurRadius: 30, spreadRadius: 5),
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
                'Container 1',
                style: TextStyle(color: Colors.black, fontSize: 40, fontWeight: FontWeight.bold),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
