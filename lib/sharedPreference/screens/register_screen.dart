import 'package:flutter/material.dart';
import 'package:flutter_project/sharedPreference/screens/detai_screen.dart';
import 'package:flutter_project/sharedPreference/screens/login_screen.dart';
import 'package:shared_preferences/shared_preferences.dart';

class RegisterScreen extends StatefulWidget {
  const RegisterScreen({super.key});

  @override
  State<RegisterScreen> createState() => _RegisterScreenState();
}

class _RegisterScreenState extends State<RegisterScreen> {
  final _nameController = TextEditingController();
  final _eMailController = TextEditingController();
  final _passwordController = TextEditingController();

  Future<void> _saveRecord(
      String name, String eMail, String password) async {
    SharedPreferences preferences = await SharedPreferences.getInstance();
    try {
      await preferences.setString('NAME', name);
      await preferences.setString('EMAIL', eMail);
      await preferences.setString('PASSWORD', password);

      print('record saved successfully');
    } catch (e) {
      print(e.toString());
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text('Register Screen'),
              TextField(
                controller: _nameController,
                decoration: InputDecoration(labelText: 'Name'),
              ),
              TextField(
                controller: _eMailController,
                decoration: InputDecoration(labelText: 'E-mail'),
              ),
              SizedBox(
                height: 10,
              ),
              TextField(
                controller: _passwordController,
                decoration: InputDecoration(labelText: 'Password'),
              ),
              SizedBox(
                height: 10,
              ),
              ElevatedButton(
                onPressed: () {
                  String name = _nameController.text.trim();
                  String eMail = _eMailController.text.trim();
                  String password = _passwordController.text.trim();

                  print('''
                  name : $name
                  age : $eMail 
                  salary : $password
                  ''');
                  _saveRecord(name, eMail, password);
                  Navigator.pushReplacement(
                    context,
                    MaterialPageRoute(
                      builder: (context) => LoginScreen(),
                    ),
                  );
                },
                child: Text('Register'),
              ),
/*
              ElevatedButton(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => DetailScreen(),
                    ),
                  );
                },
                child: Text('Detail'),
              ),
*/
              SizedBox(
                height: 30,
              ),
              TextButton(
                onPressed: () {
                  Navigator.pushReplacement(
                    context,
                    MaterialPageRoute(
                      builder: (context) => LoginScreen(),
                    ),
                  );
                },
                child: Text('Already have Account'),
              )
            ],
          ),
        ),
      ),
    );
  }
}
