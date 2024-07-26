import 'package:flutter/material.dart';
import 'package:flutter_project/singleton_sharedpreference/preference/pref_manager.dart';
import 'package:flutter_project/singleton_sharedpreference/screens/login_screen.dart';

class MyHomeScreen extends StatefulWidget {
  const MyHomeScreen({super.key});

  @override
  State<MyHomeScreen> createState() => _MyHomeScreenState();
}

class _MyHomeScreenState extends State<MyHomeScreen> {

  @override
  void initState() {
    loadData();
    super.initState();
  }

  String name='';

  void loadData() {
    setState(() {
     PrefManager.getName(name);
    });
  }

  bool st = false;
  void status(st, BuildContext context) {
    st=!st;
    PrefManager.statusChange(st);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text('Welcome ${PrefManager.getName(name)}'),
            SizedBox(
              height: 16,
            ),
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
              status(st, context);
              Navigator.pushAndRemoveUntil(
                  context,
                  MaterialPageRoute(
                    builder: (context) => LoginScreen(),
                  ),
                  (route) => false);
            },
            child: Text('Yes'),
          )
        ],
      ),
    );
  }
}
