/*create an application to increate font size when plus button click and
decrease when minus button click*/

import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: '(Increase font size',
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
  double fontSize = 18;

  void increment() {
    setState(() {
      fontSize += 3;
    });
  }

  void decrement() {
    setState(() {
      fontSize -= 3;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          Text(
            'Hello..',
            style: TextStyle(fontSize: fontSize),
          ),
          SizedBox(height: 300),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              ElevatedButton(
                style: ElevatedButton.styleFrom(
                  fixedSize: Size(120, 50),
                ),
                onPressed: () {
                  decrement();
                },
                child: Text(
                  '-',
                  style: TextStyle(fontSize: 30),
                ),
              ),
              ElevatedButton(
                style: ElevatedButton.styleFrom(
                  fixedSize: Size(120, 50),
                ),
                onPressed: () {
                  increment();
                },
                child: Text(
                  '+',
                  style: TextStyle(fontSize: 30),
                ),
              ),
            ],
          )
        ],
      ),
    );
  }
}
