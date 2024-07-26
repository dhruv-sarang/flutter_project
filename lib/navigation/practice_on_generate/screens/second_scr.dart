import 'package:flutter/material.dart';
import 'package:flutter_project/navigation/practice_on_generate/model/student.dart';

class SecondScr extends StatelessWidget {
  Student? student;
  SecondScr({this.student});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'First',
      home: Scaffold(
        appBar: AppBar(
          title: Text('Second Screen'),
        ),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text('Name : ${student?.name} \n '
                  'Roll No. : ${student?.rollNo}'),
              FilledButton(
                onPressed: () {
                  Navigator.pushNamed(context, '/third');
                },
                child: Text('Nevigate to Third'),
              ),
              FilledButton(
                onPressed: () {
                  Navigator.pop(context);
                },
                child: Text('Back'),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
