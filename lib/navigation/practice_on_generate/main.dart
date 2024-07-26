import 'package:flutter/material.dart';
import 'package:flutter_project/navigation/practice_on_generate/routes/app_route.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Practice On Generate',
      initialRoute: AppRoute.firstScr,
      onGenerateRoute: AppRoute.onGenerateRoute,
    );
  }
}
