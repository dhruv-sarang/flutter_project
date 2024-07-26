import 'package:flutter/material.dart';
import 'package:flutter_project/listvView_practical/practical_1/model.dart';
import 'package:flutter_project/listvView_practical/practical_1/outputScreen.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Material App',
      home: HomePage(),
    );
  }
}

class HomePage extends StatelessWidget {
  List<User> userList = [
    User(
        name: 'Rushik',
        email: 'rushik@gmail.com',
        image: 'assets/images/google.png'),
    User(
        name: 'Parthiv',
        email: 'parthiv@gmail.com',
        image: 'assets/images/google.png',
        isLike: true),
    User(
        name: 'Rahul',
        email: 'rahul@gmail.com',
        image: 'assets/images/google.png'),
    User(
        name: 'Greena',
        email: 'greena@gmail.com',
        image: 'assets/images/facebook.jpeg'),
    User(
        name: 'Kinjal',
        email: 'kinjal@gmail.com',
        image: 'assets/images/facebook.jpeg',
        isLike: true),
    User(
        name: 'Keyur',
        email: 'keyur@gmail.com',
        image: 'assets/images/google.png'),
    User(
        name: 'Dhruv',
        email: 'dhruv@gmail.com',
        image: 'assets/images/google.png',
        isLike: true),
    User(
        name: 'Rahul',
        email: 'rahul@gmail.com',
        image: 'assets/images/google.png'),
    User(
        name: 'Greena',
        email: 'greena@gmail.com',
        image: 'assets/images/facebook.jpeg'),
    User(
        name: 'Kinjal',
        email: 'kinjal@gmail.com',
        image: 'assets/images/facebook.jpeg',
        isLike: true),
    User(
        name: 'Keyur',
        email: 'keyur@gmail.com',
        image: 'assets/images/google.png'),
    User(
        name: 'Dhruv',
        email: 'dhruv@gmail.com',
        image: 'assets/images/google.png',
        isLike: true),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('User List'),
        ),
        body: ListView.builder(
          physics: BouncingScrollPhysics(),
          itemCount: userList.length,
          itemBuilder: (context, index) {
            User user = userList[index];

            return Card(
              elevation: 2,
              color: Colors.white,
              borderOnForeground: true,
              /*surfaceTintColor: Colors.blue,*/
              child: ListTile(
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => OutputPage(user: user),
                    ),
                  );
                },
                leading: CircleAvatar(
                  radius: 30,
                  backgroundImage: AssetImage(user.image),
                ),
                title: Text(user.name),
                subtitle: Text(user.email),
                trailing: Icon(
                  Icons.favorite,
                  color: user.isLike == true ? Colors.red : Colors.grey,
                ),
              ),
            );
          },
        ));
  }
}
