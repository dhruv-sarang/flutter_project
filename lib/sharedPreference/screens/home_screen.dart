import 'package:flutter/material.dart';
import 'package:flutter_project/sharedPreference/screens/login_screen.dart';
import 'package:shared_preferences/shared_preferences.dart';

class MyHomeScreen extends StatefulWidget {
  const MyHomeScreen({super.key});

  @override
  State<MyHomeScreen> createState() => _MyHomeScreenState();
}

class _MyHomeScreenState extends State<MyHomeScreen> {
  String name = '';
  var isLogin;

  @override
  void initState() {
    loadData();
    super.initState();
  }

  Future<void> _saveRecord(bool isLoginF) async {
    SharedPreferences preferences = await SharedPreferences.getInstance();
    try {
      await preferences.setBool('STATUS', isLogin);
      print('Status saved successfully');
    } catch (e) {
      print(e.toString());
    }
  }

  Future<void> loadData() async {
    SharedPreferences preferences = await SharedPreferences.getInstance();
    setState(() {
      name = preferences.getString('NAME') ?? '';
      isLogin = preferences.getBool('STATUS') ?? '';
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text('Welcome $name'),
            SizedBox(height: 16,),
            ElevatedButton(
              onPressed: () {
                showAlertDialog(context);
              },
              child: Text('Logout'),
            )
          ],
        ),
      ),
    );
  }

  Future<void> showAlertDialog(BuildContext context) async {
    return await showDialog(
      context: context,
      builder: (context) => AlertDialog(
        title: Text('Alert'),
        content: Text('Are you sure you want to Logout'),
        actions: [
          TextButton(
            onPressed: () {
              Navigator.pop(context, false);
            },
            child: Text('No'),
          ),
          TextButton(
            onPressed: () {
              isLogin=!isLogin;
              _saveRecord(isLogin);
              Navigator.pushReplacement(
                context,
                MaterialPageRoute(
                  builder: (context) => LoginScreen(),
                ),
              );
            },
            child: Text('Yes'),
          )
        ],
      ),
    );
  }
}
