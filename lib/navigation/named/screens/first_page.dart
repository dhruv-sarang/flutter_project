import 'package:flutter/material.dart';

import '../models/employee.dart';

class FirstPage extends StatelessWidget {
  final _nameController = TextEditingController();
  final _ageController = TextEditingController();
  final _salaryController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('First Page'),
      ),
      body: Center(
          child: Padding(
        padding: const EdgeInsets.all(20.0),
        child: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              TextField(
                controller: _nameController,
                decoration: InputDecoration(labelText: 'Employee name'),
              ),
              SizedBox(height: 16),
              TextField(
                controller: _ageController,
                decoration: InputDecoration(labelText: 'Employee age'),
              ),
              SizedBox(height: 16),
              TextField(
                controller: _salaryController,
                decoration: InputDecoration(labelText: 'Employee salary'),
              ),
              SizedBox(height: 16),
              FilledButton(
                onPressed: () {
                  String name = _nameController.text.trim();
                  int age = _ageController.text.trim().isEmpty
                      ? 0
                      : int.parse(_ageController.text.trim());
                  double salary = _salaryController.text.trim().isEmpty
                      ? 0
                      : double.parse(_salaryController.text.trim());
                  Employee emp = Employee(name: name, age: age, salary: salary);
                  Navigator.pushNamed(context, '/second', arguments: emp);
                },
                child: Text('Navigate to Second'),
              )
            ],
          ),
        ),
      )),
    );
  }
}
