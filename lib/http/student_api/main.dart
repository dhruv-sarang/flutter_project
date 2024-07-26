import 'package:flutter/material.dart';
import 'package:flutter_project/http/student_api/screens/studentlist_screen.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'Http Get Request',
        home: StudentListScreen());
  }
}
