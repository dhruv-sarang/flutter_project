import 'package:flutter/material.dart';

import '../models/employee.dart';
import '../routes/app_route.dart';


class SecondRoute extends StatelessWidget {
  final _addressController = TextEditingController();

  Employee? employee;

  SecondRoute({this.employee});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Second Route'),
      ),
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(20.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text('''
              Name :  ${employee?.name}
              Age : ${employee?.age}
              Salary : ${employee?.salary}
              '''),
              SizedBox(
                height: 16,
              ),
              TextField(
                controller: _addressController,
                decoration: InputDecoration(labelText: 'Employee Address'),
              ),
              SizedBox(
                height: 16,
              ),
              FilledButton(
                onPressed: () {
                  String address = _addressController.text.trim();
                  employee?.address = address;
                  Navigator.pushNamed(context, AppRoute.thirdRoute,
                      arguments: employee);
                },
                child: Text('Navigate to Third'),
              ),
              SizedBox(
                height: 16,
              ),
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
