import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Material App',
      home: Scaffold(
        appBar: AppBar(
          title: Text('Material App Bar'),
        ),
        body: Container(
          margin: EdgeInsets.all(10),
          child: ListView(
            children: const <Widget>[
              ListTile(
                trailing: Icon(Icons.keyboard_arrow_right),
                title: Text('AAAA AAAA', textAlign: TextAlign.start),
                subtitle: Text('AAAA AAAA', textAlign: TextAlign.start),
                leading: Icon(Icons.person),
                tileColor: Colors.grey,
                shape: RoundedRectangleBorder(
                  side: BorderSide(color: Colors.black45, width: 3),
                  borderRadius: BorderRadius.all(Radius.circular(20)),
                ),
              ),
              SizedBox(height: 10),
              ListTile(
                trailing: Icon(Icons.keyboard_arrow_right),
                title: Text(
                  'BBBB BBBB',
                  textAlign: TextAlign.center,
                ),
                tileColor: Colors.grey,
                shape: RoundedRectangleBorder(
                  side: BorderSide(color: Colors.black45, width: 3),
                  borderRadius: BorderRadius.all(Radius.circular(20)),
                ),
              ),
              SizedBox(height: 10),
              ListTile(
                trailing: Icon(Icons.keyboard_arrow_right),
                title: Text(
                  'CCCC CCCC',
                  textAlign: TextAlign.center,
                ),
                tileColor: Colors.grey,
                shape: RoundedRectangleBorder(
                  side: BorderSide(color: Colors.black45, width: 3),
                  borderRadius: BorderRadius.all(Radius.circular(20)),
                ),
              ),
              SizedBox(height: 10),
              ListTile(
                trailing: Icon(Icons.keyboard_arrow_right),
                title: Text(
                  'DDDD DDDD',
                  textAlign: TextAlign.center,
                ),
                tileColor: Colors.grey,
                shape: RoundedRectangleBorder(
                  side: BorderSide(color: Colors.black45, width: 3),
                  borderRadius: BorderRadius.all(Radius.circular(20)),
                ),
              ),
              SizedBox(height: 10),
              ListTile(
                trailing: Icon(Icons.keyboard_arrow_right),
                title: Text(
                  'EEEE EEEE',
                  textAlign: TextAlign.center,
                ),
                tileColor: Colors.grey,
                shape: RoundedRectangleBorder(
                  side: BorderSide(color: Colors.black45, width: 3),
                  borderRadius: BorderRadius.all(Radius.circular(20)),
                ),
              ),
              SizedBox(height: 10),
              ListTile(
                trailing: Icon(Icons.keyboard_arrow_right),
                title: Text(
                  'FFFF FFFF',
                  textAlign: TextAlign.center,
                ),
                tileColor: Colors.grey,
                shape: RoundedRectangleBorder(
                  side: BorderSide(color: Colors.black45, width: 3),
                  borderRadius: BorderRadius.all(Radius.circular(20)),
                ),
              ),
              SizedBox(height: 10),
              ListTile(
                trailing: Icon(Icons.keyboard_arrow_right),
                title: Text(
                  'GGGG GGGG',
                  textAlign: TextAlign.center,
                ),
                tileColor: Colors.grey,
                shape: RoundedRectangleBorder(
                  side: BorderSide(color: Colors.black45, width: 3),
                  borderRadius: BorderRadius.all(Radius.circular(20)),
                ),
              ),
              SizedBox(height: 10),
              ListTile(
                trailing: Icon(Icons.keyboard_arrow_right),
                title: Text(
                  'HHHH HHHH',
                  textAlign: TextAlign.center,
                ),
                tileColor: Colors.grey,
                shape: RoundedRectangleBorder(
                  side: BorderSide(color: Colors.black45, width: 3),
                  borderRadius: BorderRadius.all(Radius.circular(20)),
                ),
              ),
              SizedBox(height: 10),
              ListTile(
                trailing: Icon(Icons.keyboard_arrow_right),
                title: Text(
                  'IIII IIII',
                  textAlign: TextAlign.center,
                ),
                tileColor: Colors.grey,
                shape: RoundedRectangleBorder(
                  side: BorderSide(color: Colors.black45, width: 3),
                  borderRadius: BorderRadius.all(Radius.circular(20)),
                ),
              ),
              SizedBox(height: 10),
              ListTile(
                trailing: Icon(Icons.keyboard_arrow_right),
                title: Text(
                  'JJJJ JJJJ',
                  textAlign: TextAlign.center,
                ),
                tileColor: Colors.grey,
                shape: RoundedRectangleBorder(
                  side: BorderSide(color: Colors.black45, width: 3),
                  borderRadius: BorderRadius.all(Radius.circular(20)),
                ),
              ),
              SizedBox(height: 10),
              ListTile(
                trailing: Icon(Icons.keyboard_arrow_right),
                title: Text(
                  'KKKK KKKK',
                  textAlign: TextAlign.center,
                ),
                tileColor: Colors.grey,
                shape: RoundedRectangleBorder(
                  side: BorderSide(color: Colors.black45, width: 3),
                  borderRadius: BorderRadius.all(Radius.circular(20)),
                ),
              ),
              SizedBox(height: 10),
              ListTile(
                trailing: Icon(Icons.keyboard_arrow_right),
                title: Text(
                  'LLLL LLLL',
                  textAlign: TextAlign.center,
                ),
                tileColor: Colors.grey,
                shape: RoundedRectangleBorder(
                  side: BorderSide(color: Colors.black45, width: 3),
                  borderRadius: BorderRadius.all(Radius.circular(20)),
                ),
              ),
              SizedBox(height: 10),
              ListTile(
                trailing: Icon(Icons.keyboard_arrow_right),
                title: Text(
                  'MMMM MMMM',
                  textAlign: TextAlign.center,
                ),
                tileColor: Colors.grey,
                shape: RoundedRectangleBorder(
                  side: BorderSide(color: Colors.black45, width: 3),
                  borderRadius: BorderRadius.all(Radius.circular(20)),
                ),
              ),
              SizedBox(height: 10),
              ListTile(
                trailing: Icon(Icons.keyboard_arrow_right),
                title: Text(
                  'NNNN NNNN',
                  textAlign: TextAlign.center,
                ),
                tileColor: Colors.grey,
                shape: RoundedRectangleBorder(
                  side: BorderSide(color: Colors.black45, width: 3),
                  borderRadius: BorderRadius.all(Radius.circular(20)),
                ),
              ),
              SizedBox(height: 10),
              ListTile(
                trailing: Icon(Icons.keyboard_arrow_right),
                title: Text(
                  'OOOO OOOO',
                  textAlign: TextAlign.center,
                ),
                tileColor: Colors.grey,
                shape: RoundedRectangleBorder(
                  side: BorderSide(color: Colors.black45, width: 3),
                  borderRadius: BorderRadius.all(Radius.circular(20)),
                ),
              ),
              SizedBox(height: 10),
              ListTile(
                trailing: Icon(Icons.keyboard_arrow_right),
                title: Text(
                  'PPPP PPPP',
                  textAlign: TextAlign.center,
                ),
                tileColor: Colors.grey,
                shape: RoundedRectangleBorder(
                  side: BorderSide(color: Colors.black45, width: 3),
                  borderRadius: BorderRadius.all(Radius.circular(20)),
                ),
              ),
              SizedBox(height: 10),
              ListTile(
                trailing: Icon(Icons.keyboard_arrow_right),
                title: Text(
                  'QQQQ QQQQ',
                  textAlign: TextAlign.center,
                ),
                tileColor: Colors.grey,
                shape: RoundedRectangleBorder(
                  side: BorderSide(color: Colors.black45, width: 3),
                  borderRadius: BorderRadius.all(Radius.circular(20)),
                ),
              ),
              SizedBox(height: 10),
              ListTile(
                trailing: Icon(Icons.keyboard_arrow_right),
                title: Text(
                  'RRRR RRRR',
                  textAlign: TextAlign.center,
                ),
                tileColor: Colors.grey,
                shape: RoundedRectangleBorder(
                  side: BorderSide(color: Colors.black45, width: 3),
                  borderRadius: BorderRadius.all(Radius.circular(20)),
                ),
              ),
              SizedBox(height: 10),
              ListTile(
                trailing: Icon(Icons.keyboard_arrow_right),
                title: Text(
                  'SSSS SSSS',
                  textAlign: TextAlign.center,
                ),
                tileColor: Colors.grey,
                shape: RoundedRectangleBorder(
                  side: BorderSide(color: Colors.black45, width: 3),
                  borderRadius: BorderRadius.all(Radius.circular(20)),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

/*
ListView(
children: [
Container(
height: 70,
color: Colors.amber[600],
child: const Center(child: Text('Entry A')),
),
Container(
height: 70,
color: Colors.amber[700],
child: const Center(child: Text('Entry B')),
),
Container(
height: 70,
color: Colors.amber[100],
child: const Center(child: Text('Entry C')),
),
Container(
height: 70,
color: Colors.amber[600],
child: const Center(child: Text('Entry D')),
),
Container(
height: 70,
color: Colors.amber[700],
child: const Center(child: Text('Entry E')),
),
Container(
height: 70,
color: Colors.amber[100],
child: const Center(child: Text('Entry F')),
),
Container(
height: 70,
color: Colors.amber[600],
child: const Center(child: Text('Entry G')),
),
Container(
height: 70,
color: Colors.amber[700],
child: const Center(child: Text('Entry H')),
),
Container(
height: 70,
color: Colors.amber[100],
child: const Center(child: Text('Entry I')),
),
Container(
height: 70,
color: Colors.amber[600],
child: const Center(child: Text('Entry J')),
),
Container(
height: 70,
color: Colors.amber[700],
child: const Center(child: Text('Entry K')),
),
Container(
height: 70,
color: Colors.amber[100],
child: const Center(child: Text('Entry L')),
),
Container(
height: 70,
color: Colors.amber[700],
child: const Center(child: Text('Entry M')),
),
Container(
height: 70,
color: Colors.amber[100],
child: const Center(child: Text('Entry N')),
),
],*/
