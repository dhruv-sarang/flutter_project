import 'package:flutter/material.dart';
import 'package:flutter_project/navigation/practice_on_generate/model/student.dart';

import '../routes/app_route.dart';

class FirstScr extends StatelessWidget {
  final _nameC = TextEditingController();
  final _rollNoC = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'First',
      home: Scaffold(
          appBar: AppBar(
            title: Text('First Screen'),
          ),
          body: Center(
            child: Padding(
              padding: const EdgeInsets.all(20),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  TextField(
                    controller: _nameC,
                    decoration: InputDecoration(
                      labelText: 'Enter Name',
                    ),
                  ),
                  TextField(
                    controller: _rollNoC,
                    decoration: InputDecoration(
                      labelText: 'Enter Roll No.',
                    ),
                  ),
                  FilledButton(
                    onPressed: () {
                      String name = _nameC.text.trim();
                      int rollNo = _rollNoC.text.trim().isEmpty
                      ? 0
                      : int.parse(_rollNoC.text.trim());
                      Student st = Student(name: name, rollNo: rollNo);
                      Navigator.pushNamed(context, AppRoute.secondScr, arguments: st);
                    },
                    child: Text('Nevigate to Second'),
                  ),
                ],
              ),
            ),
          )),
    );
  }
}
