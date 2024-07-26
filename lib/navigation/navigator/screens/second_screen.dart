import 'package:flutter/material.dart';
import 'package:flutter_project/navigation/navigator/screens/third_screen.dart';

class SecondScreen extends StatelessWidget {
  final _add = TextEditingController();
  String name, id;
  int age;

  SecondScreen({required this.name, required this.id, required this.age});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Second Screen'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text('Name : $name \nAge : $age \nID : $id',
                  style: TextStyle(color: Colors.black, fontSize: 20)),
              TextField(
                controller: _add,
                decoration: InputDecoration(
                  labelText: 'Address',
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
                  String add = _add.text.trim();

                  Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => ThirdScreen(
                          name: name,
                          age: age,
                          id: id,
                          add: add,
                        ),
                      ));
                },
                child: Text(
                  'Navigate to Third',
                  style: TextStyle(fontSize: 20),
                ),
              ),
              SizedBox(height: 15),
              FilledButton(
                style: FilledButton.styleFrom(
                    fixedSize: Size(300, 50),
                    backgroundColor: Colors.redAccent),
                onPressed: () {
                  Navigator.pop(context);
                },
                child: Text(
                  'Go Back',
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
