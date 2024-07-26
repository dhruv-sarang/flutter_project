import 'package:flutter/material.dart';
import '../models/employee.dart';

class FourthPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    var employee = ModalRoute.of(context)?.settings.arguments as Employee;

    return Scaffold(
      appBar: AppBar(
        title: Text('Fourth Page'),
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
                  'Address : ${employee.address}\n'
                  'Department : ${employee.dep}',
                  style: TextStyle(color: Colors.black, fontSize: 20)),
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
              ),
            ],
          ),
        ),
      ),
    );
  }
}
