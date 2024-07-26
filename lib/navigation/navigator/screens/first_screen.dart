import 'package:flutter/material.dart';
import 'package:flutter_project/navigation/navigator/screens/second_screen.dart';

class FirstScreen extends StatelessWidget {
  final _name = TextEditingController();
  final _age = TextEditingController();
  final _id = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('First Screen'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              TextField(
                controller: _name,
                decoration: InputDecoration(
                  labelText: 'Name',
                ),
                style: TextStyle(
                  fontSize: 20,
                  height: 1.5,
                ),
              ),
              SizedBox(height: 15),
              TextField(
                controller: _age,
                decoration: InputDecoration(
                  labelText: 'Age',
                ),
                style: TextStyle(
                  fontSize: 20,
                  height: 1.5,
                ),
              ),
              SizedBox(height: 15),
              TextField(
                controller: _id,
                decoration: InputDecoration(
                  labelText: 'ID No.',
                ),
                style: TextStyle(
                  fontSize: 20,
                  height: 1.5,
                ),
              ),
              SizedBox(height: 15),
              FilledButton(
                style: FilledButton.styleFrom(fixedSize: Size(300, 50)),
                onPressed: () {
                  String name = _name.text.trim();
                  int age = _age.text.trim().isEmpty
                      ? 0
                      : int.parse(_age.text.trim());
                  String id = _id.text.trim();
                  // print('Name : $name');
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => SecondScreen(
                          name: name,
                          age: age,
                          id: id,
                        ),
                      ));
                },
                child: Text(
                  'Navigate to Second',
                  style: TextStyle(fontSize: 20),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
