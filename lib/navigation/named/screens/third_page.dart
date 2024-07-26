import 'package:flutter/material.dart';
import '../models/employee.dart';

class ThirdPage extends StatelessWidget {
  final _depController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    var employee = ModalRoute.of(context)?.settings.arguments as Employee;

    return Scaffold(
      appBar: AppBar(
        title: Text('Third Page'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                  'Name : ${employee.name}\n'
                  'Age : ${employee.age}\n'
                  'Salary : ${employee.salary}\n'
                  'Address : ${employee.address}',
                  style: TextStyle(color: Colors.black, fontSize: 20)),
              SizedBox(height: 15),
              TextField(
                controller: _depController,
                decoration: InputDecoration(labelText: 'Enter Department'),
              ),
              SizedBox(height: 16),
              FilledButton(
                  onPressed: () {
                    String dep = _depController.text.trim();
                    employee.dep = dep;
                    Navigator.pushNamed(context, '/fourth',
                        arguments: employee);
                  },
                  child: Text('Navigate to Fourth')),
              SizedBox(height: 16),
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
              ),
            ],
          ),
        ),
      ),
    );
  }
}
