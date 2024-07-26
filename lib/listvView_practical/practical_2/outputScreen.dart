import 'package:flutter/material.dart';
import 'package:flutter_project/listvView_practical/practical_2/model.dart';

class OutputPage extends StatefulWidget {
  User? user;

  OutputPage({this.user});

  @override
  State<OutputPage> createState() => _OutputPageState();
}

class _OutputPageState extends State<OutputPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ListTile(
              leading: CircleAvatar(
                radius: 30,
                backgroundImage: AssetImage('${widget.user?.image}'),
              ),
              title: Text('${widget.user?.name}'),
              subtitle: Text('${widget.user?.email}'),
              trailing: Icon(
                Icons.favorite,
                color: widget.user?.isLike == true ? Colors.red : Colors.grey,
              ),
            ),
            SizedBox(height: 30),
            ElevatedButton(
              onPressed: () {
                Navigator.pop(context);
              },
              child: Text('Back'),
            ),
          ],
        ),
      ),
    );
  }
}
