import 'package:flutter/material.dart';

import 'model.dart';

class OutputPage extends StatelessWidget {
  User? user;

  OutputPage({this.user});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: ListTile(
          leading: CircleAvatar(
            radius: 30,
            backgroundImage: AssetImage('${user?.image}'),
          ),
          title: Text('${user?.name}'),
          subtitle: Text('${user?.email}'),
          trailing: Icon(
            Icons.favorite,
            color: user?.isLike == true ? Colors.red : Colors.grey,
          ),
        ),
      ),
    );
  }
}
