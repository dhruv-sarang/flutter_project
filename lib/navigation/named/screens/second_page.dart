import 'package:flutter/material.dart';
import '../models/employee.dart';

class SecondPage extends StatelessWidget {
  final _addressController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    var employee = ModalRoute.of(context)?.settings.arguments as Employee;

    return Scaffold(
      appBar: AppBar(
        title: Text('Second Page'),
      ),
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(20.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                'Name :  ${employee.name}\n'
                'Age : ${employee.age}\n'
                'Salary : ${employee.salary}\n',
                style: TextStyle(color: Colors.black, fontSize: 20),
              ),
              SizedBox(height: 16),
              TextField(
                controller: _addressController,
                decoration: InputDecoration(labelText: 'Employee Address'),
              ),
              SizedBox(height: 16),
              FilledButton(
                onPressed: () {
                  String address = _addressController.text.trim();
                  employee.address = address;
                  Navigator.pushNamed(context, '/third', arguments: employee);
                },
                child: Text('Navigate to Third'),
              ),
              SizedBox(height: 16),
              FilledButton(
                style: FilledButton.styleFrom(backgroundColor: Colors.red),
                onPressed: () {
                  // Navigate to Previous Screen
                  Navigator.pop(context);
                },
                child: Text('Go Back'),
              )
            ],
          ),
        ),
      ),
    );
  }
}
