import 'package:flutter/material.dart';

class ThirdScreen extends StatelessWidget {
  String email;

  ThirdScreen({required this.email});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Text('Email ID : $email',
                style: TextStyle(
                    fontWeight: FontWeight.bold,
                    color: Colors.black,
                    fontSize: 20)),
            Text('Wrong Password',
                style: TextStyle(
                    fontWeight: FontWeight.bold,
                    color: Colors.blue,
                    fontSize: 40)),
            SizedBox(height: 20),
            FilledButton(
              style: FilledButton.styleFrom(
                  fixedSize: Size(300, 50), backgroundColor: Colors.redAccent),
              onPressed: () {
                Navigator.pop(context);
              },
              child: Text(
                'Go Back',
                style: TextStyle(fontSize: 20),
              ),
            )
          ],
        ),
      ),
    );
  }
}
