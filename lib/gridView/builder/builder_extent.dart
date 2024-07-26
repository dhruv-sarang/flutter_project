import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return HomeScreen();
  }
}

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'GridView Extent',
      home: Scaffold(
        body: GridView.extent(
          // scrollDirection: Axis.horizontal,
          maxCrossAxisExtent: 200,
          childAspectRatio: 1/1.2,
          mainAxisSpacing: 10,
          crossAxisSpacing: 10,
          children: <Widget>[
            Container(color: Colors.red.shade100),
            Container(color: Colors.red.shade200),
            Container(color: Colors.red.shade300),
            Container(color: Colors.red.shade400),
            Container(color: Colors.red.shade500),
            Container(color: Colors.red.shade600),
            Container(color: Colors.red.shade700),
            Container(color: Colors.red.shade800),
            Container(color: Colors.red.shade900),
            Container(color: Colors.red.shade100),
            Container(color: Colors.red.shade200),
            Container(color: Colors.red.shade300),
            Container(color: Colors.red.shade400),
            Container(color: Colors.red.shade500),
            Container(color: Colors.red.shade600),
            Container(color: Colors.red.shade700),
            Container(color: Colors.red.shade800),
            Container(color: Colors.red.shade900),
            // Add more containers as needed
          ],
        ),
      ),
    );
  }
}
