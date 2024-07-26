import 'package:flutter/material.dart';

class ThirdScr extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Third',
      home: Scaffold(
        appBar: AppBar(
          title: Text('Third Screen'),
        ),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              FilledButton(
                onPressed: () {
                  Navigator.pop(context);
                },
                child: Text('Back'),
              ),
            ],
          )
        ),
      ),
    );
  }
}
