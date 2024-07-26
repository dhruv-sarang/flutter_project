import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Practical 8',
      home: Homepage(),
    );
  }
}

class Homepage extends StatelessWidget {
  const Homepage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Practical 8'),
      ),
      body: Center(
        child: Stack(
          clipBehavior: Clip.none,
          alignment: Alignment.center,
          children: [
            Positioned(
              right: 170,
              child: CircleAvatar(
                radius: 40,
                backgroundImage: AssetImage('assets/images/images1.jpeg'),
              ),
            ),
            Positioned(
              left: 170,
              child: CircleAvatar(
                radius: 40,
                backgroundImage: AssetImage('assets/images/images1.jpeg'),
              ),
            ),
            Positioned(
              child: Text('Dhruv Sarang',
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 25)),
            ),
            Positioned(
              top: 70,
              child: CircleAvatar(
                radius: 40,
                backgroundImage: AssetImage('assets/images/images1.jpeg'),
              ),
            ),
            Positioned(
              bottom: 70,
              child: CircleAvatar(
                radius: 40,
                backgroundImage: AssetImage('assets/images/images1.jpeg'),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
