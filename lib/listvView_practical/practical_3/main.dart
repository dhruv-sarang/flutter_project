import 'package:flutter/material.dart';
import 'package:flutter_project/listvView_practical/practical_3/screens/userlist_screen.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Crud Operation',
      home: UserListScreen(),
    );
  }
}
