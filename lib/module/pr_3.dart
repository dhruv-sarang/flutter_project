/*Create an application to input 2 numbers from user and all numbers
between those 2 numbers in next activity*/
import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'All No. Between',
      home: AllNoBetween(),
    );
  }
}

class AllNoBetween extends StatefulWidget {
  const AllNoBetween({super.key});

  @override
  State<AllNoBetween> createState() => _AllNoBetweenState();
}

class _AllNoBetweenState extends State<AllNoBetween> {
  TextEditingController _no1controller = TextEditingController();
  TextEditingController _no2controller = TextEditingController();
  List<int> _allNoBetween = [0];

  void _calculateallNoBetween() {
    int number1 = int.parse(_no1controller.text);
    int number2 = int.parse(_no2controller.text);
    List<int> output =
        List.generate(number2 - number1 + 1, (index) => number1 + index);
    setState(() {
      _allNoBetween = output;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('All No. Between'),
      ),
      body: SingleChildScrollView(
        child: Center(
          child: Padding(
            padding: const EdgeInsets.all(15.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                TextField(
                  controller: _no1controller,
                  keyboardType: TextInputType.number,
                  decoration: InputDecoration(
                    labelText: 'Enter a number',
                  ),
                ),
                SizedBox(height: 20),
                TextField(
                  controller: _no2controller,
                  keyboardType: TextInputType.number,
                  decoration: InputDecoration(
                    labelText: 'Enter a number',
                  ),
                ),
                SizedBox(height: 20),
                FilledButton(
                  onPressed: _calculateallNoBetween,
                  child: Text('All No. Between'),
                ),
                SizedBox(height: 20),
                Text('$_allNoBetween', style: TextStyle(fontSize: 28, fontWeight: FontWeight.bold)),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
