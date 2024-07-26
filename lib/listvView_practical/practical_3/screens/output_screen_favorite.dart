import '../models/usres.dart';
import 'package:flutter/material.dart';


class outputScreenFavorite extends StatelessWidget {
  final List<User> oUser;

  outputScreenFavorite({required this.oUser});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Favorite Users'),
      ),
      body: ListView.builder(
        itemCount: oUser.length,
        itemBuilder: (context, index) {
          return ListTile(
            leading: CircleAvatar(
              radius: 30,
              backgroundColor: Colors.cyan,
              child: Text(
                '${oUser[index].name!.isEmpty ? '' : oUser[index].name![0].toUpperCase()}',
                style: TextStyle(
                    fontSize: 38,
                    fontWeight: FontWeight.bold,
                    color: Colors.cyan.shade100),
              ),
            ),
            title: Text('${oUser[index].name?.replaceFirst(oUser[index].name![0], oUser[index].name![0].toUpperCase())}'),
            subtitle: Text('${oUser[index].email}\n${oUser[index].contact}'),
            trailing: Icon(Icons.favorite, color: Colors.redAccent),
          );
        },
      ),
    );
  }
}



