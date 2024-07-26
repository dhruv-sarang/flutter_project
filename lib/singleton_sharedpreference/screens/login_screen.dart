import 'package:flutter/material.dart';
import 'package:flutter_project/singleton_sharedpreference/preference/pref_manager.dart';
import 'package:flutter_project/singleton_sharedpreference/screens/home_screen.dart';
import 'package:flutter_project/singleton_sharedpreference/screens/register_screen.dart';
import 'package:fluttertoast/fluttertoast.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  final _eMailController = TextEditingController();
  final _passwordController = TextEditingController();

  @override
  void initState() {
    loadData();
    super.initState();
  }

  String eMail = '', password = '';
  bool st = true;

  void loadData() {
    setState(() {
      PrefManager.getEmail(eMail);
      PrefManager.getPassword(password);
    });
  }

  void status(st, BuildContext context) {
    st=!st;
    PrefManager.statusChange(st);
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
              Text('Login Screen'),
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
                  status(st, context);
                  String emailController = _eMailController.text.trim();
                  String passwordController = _passwordController.text.trim();
                  if (PrefManager.getEmail(eMail) == emailController &&
                      PrefManager.getPassword(password) == passwordController) {
                    Navigator.pushReplacement(
                      context,
                      MaterialPageRoute(
                        builder: (context) => MyHomeScreen(),
                      ),
                    ); //true
                  } else {
                    Fluttertoast.showToast(msg: 'E-Mail or Password incorrect');
                    //false
                  }
                },
                child: Text('Login'),
              ),
              SizedBox(
                height: 30,
              ),
              TextButton(
                onPressed: () {
                  Navigator.pushReplacement(
                    context,
                    MaterialPageRoute(
                      builder: (context) => RegisterScreen(),
                    ),
                  );
                },
                child: Text('Sign Up'),
              )
            ],
          ),
        ),
      ),
    );
  }
}
