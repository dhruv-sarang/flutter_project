import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';

class DetailScreen extends StatefulWidget {
  @override
  State<DetailScreen> createState() => _DetailScreenState();
}

class _DetailScreenState extends State<DetailScreen> {
  String name = '';
  String eMail = '';
  String password = '';
  var status;

  @override
  void initState() {
    loadData();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Text('''
        name : $name
        E-Mail : $eMail
        Salary : $password
        Login status : ${status ?? ''}
        '''),
      ),
    );
  }

  Future<void> loadData() async {
    SharedPreferences preferences = await SharedPreferences.getInstance();
    setState(() {
      name = preferences.getString('NAME') ?? '';
      eMail = preferences.getString('EMAIL') ?? '';
      password = preferences.getString('PASSWORD') ?? '';
      status = preferences.getBool('STATUS');
    });
  }
}
