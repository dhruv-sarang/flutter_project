import 'package:flutter/material.dart';
import 'package:flutter_project/navigation/named/screens/first_page.dart';
import 'package:flutter_project/navigation/named/screens/fourth_page.dart';
import 'package:flutter_project/navigation/named/screens/second_page.dart';
import 'package:flutter_project/navigation/named/screens/third_page.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Named Routing',
      initialRoute: '/',
      routes: {
        '/': (context) => FirstPage(),
        '/second': (context) => SecondPage(),
        '/third' : (context) => ThirdPage(),
        '/fourth' : (context) => FourthPage(),
      },
    );
  }
}
