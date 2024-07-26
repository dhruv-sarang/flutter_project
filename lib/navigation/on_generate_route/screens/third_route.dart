import 'package:flutter/material.dart';

import '../models/employee.dart';

class ThirdRoute extends StatelessWidget {

  Employee? employee;

  ThirdRoute({this.employee});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Third Screen'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text('Name : ${employee?.name} \nAge : ${employee?.age} \nSalary : ${employee?.salary} \nAddress : ${employee?.address}',
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
              )
            ],
          ),
        ),
      ),
    );
  }
}
