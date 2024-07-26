import 'package:flutter/material.dart';
import 'package:flutter_project/assessment1/login/components/loginForm.dart';

class MainScreen extends StatefulWidget {
  const MainScreen({super.key});

  @override
  State<MainScreen> createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Stack(
      children: [
        Container(
          height: MediaQuery.of(context).size.height,
          width: MediaQuery.of(context).size.width,
          color: Colors.purple,
        ),
        SingleChildScrollView(
          padding: EdgeInsets.all(25),
          child: LoginForm(),
        )
      ],
    ));
  }
}
