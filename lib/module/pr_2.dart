/*Create an application to take input number from user and print its
reverse number in TextField*/
import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  TextEditingController _controller = TextEditingController();
  String _reverseNumber = '';

  void _calculateReverse() {
    String input = _controller.text;
    String reverse = input.split('').reversed.join();
    setState(() {
      _reverseNumber = reverse;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Reverse Number App'),
      ),
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(15.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              TextField(
                controller: _controller,
                keyboardType: TextInputType.number,
                decoration: InputDecoration(
                  labelText: 'Enter a number',
                ),
              ),
              SizedBox(height: 20),
              FilledButton(
                onPressed: _calculateReverse,
                child: Text('Calculate Reverse'),
              ),
              SizedBox(height: 20),
              Text(
                'Reverse Number: $_reverseNumber',
                style: TextStyle(fontSize: 18),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
