import 'package:flutter/material.dart';
import 'package:flutter_project/listvView_practical/practical_2/model.dart';
import 'package:flutter_project/listvView_practical/practical_2/outputScreen.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'Ptactical-2',
        home: HomeScreen());
  }
}

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  List<User> userList = [
    User(
        name: 'User - 1',
        email: 'user_1@gmail.com',
        image: 'assets/images/images1.jpeg'),
    User(
        name: 'User - 2',
        email: 'user_2@gmail.com',
        image: 'assets/images/images1.jpeg'),
    User(
        name: 'User - 3',
        email: 'user_3@gmail.com',
        image: 'assets/images/images1.jpeg'),
    User(
        name: 'User - 4',
        email: 'user_4@gmail.com',
        image: 'assets/images/images1.jpeg'),
    User(
        name: 'User - 5',
        email: 'user_5@gmail.com',
        image: 'assets/images/images1.jpeg'),
    User(
        name: 'User - 6',
        email: 'user_6@gmail.com',
        image: 'assets/images/images1.jpeg'),
    User(
        name: 'User - 7',
        email: 'user_7@gmail.com',
        image: 'assets/images/images1.jpeg'),
    User(
        name: 'User - 8',
        email: 'user_8@gmail.com',
        image: 'assets/images/images1.jpeg'),
    User(
        name: 'User - 9',
        email: 'user_9@gmail.com',
        image: 'assets/images/images1.jpeg'),
    User(
        name: 'User - 10',
        email: 'user_10@gmail.com',
        image: 'assets/images/images1.jpeg'),
    User(
        name: 'User - 11',
        email: 'user_11@gmail.com',
        image: 'assets/images/images1.jpeg'),
    User(
        name: 'User - 12',
        email: 'user_12@gmail.com',
        image: 'assets/images/images1.jpeg'),
    User(
        name: 'User - 13',
        email: 'user_13@gmail.com',
        image: 'assets/images/images1.jpeg'),
    User(
        name: 'User - 14',
        email: 'user_14@gmail.com',
        image: 'assets/images/images1.jpeg'),
    User(
        name: 'User - 15',
        email: 'user_15@gmail.com',
        image: 'assets/images/images1.jpeg'),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.blueAccent,
          centerTitle: true,
          title: Text(
            'User List',
            style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 28,
                letterSpacing: 5,
                wordSpacing: 5),
          ),
        ),
        body: ListView.builder(
          physics: BouncingScrollPhysics(),
          itemCount: userList.length,
          itemBuilder: (context, index) {
            User user = userList[index];

            return Card(
              elevation: 5,
              color: Colors.white,
              borderOnForeground: true,
              surfaceTintColor: Colors.blue,
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
                trailing: IconButton(
                    icon: Icon(Icons.favorite,
                        color: (userList[index].isLike == true)
                            ? Colors.red
                            : Colors.grey),
                    onPressed: () {
                      setState(() {
                        userList[index].isLike = !userList[index].isLike;
                      });
                    }),
              ),
            );
          },
        ));
  }
}
