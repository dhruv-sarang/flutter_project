import 'package:flutter/material.dart';
import 'package:flutter_project/navigation/navigator/screens/first_screen.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Navigation and Route',
      home: FirstScreen(),
    );
  }
}
