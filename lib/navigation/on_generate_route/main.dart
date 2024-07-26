import 'package:flutter/material.dart';
import 'package:flutter_project/navigation/on_generate_route/routes/app_route.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      title: 'On Generate Routing',
      initialRoute: AppRoute.firstRoute,
      onGenerateRoute: AppRoute.onGenerateRoute,
    );
  }
}
