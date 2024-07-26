import 'package:flutter/material.dart';
import 'package:flutter_project/sqlite_crud_provider/provider/task_provider.dart';
import 'package:flutter_project/sqlite_crud_provider/screens/home_page.dart';
import 'package:provider/provider.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Material App',
      home: MultiProvider(
          providers: [
            ChangeNotifierProvider(
              create: (context) => TaskProvider()..loadTask(),
            )
          ],
          child: HomePage()),
    );
  }
}
