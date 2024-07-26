import 'package:flutter/material.dart';
import 'package:flutter_project/http/practical3/screens/albumList_screen.dart';



void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(title: 'Http Get Request', home: AlbumListScreen());
  }
}


