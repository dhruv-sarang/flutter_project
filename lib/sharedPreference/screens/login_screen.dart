import 'package:flutter/material.dart';
import 'package:flutter_project/sharedPreference/screens/home_screen.dart';
import 'package:flutter_project/sharedPreference/screens/register_screen.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:fluttertoast/fluttertoast.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  final _eMailController = TextEditingController();
  final _passwordController = TextEditingController();

  String eMail = '';
  String password = '';
  var isLogin=false;

  Future<void> _saveRecord(bool isLogin) async {
    SharedPreferences preferences = await SharedPreferences.getInstance();
    try {
      await preferences.setBool('STATUS', isLogin);
      print('Status saved successfully');
    } catch (e) {
      print(e.toString());
    }
  }

  @override
  void initState() {
    loadData();
    super.initState();
  }


  Future<void> loadData() async {
    SharedPreferences preferences = await SharedPreferences.getInstance();
    setState(() {
      eMail = preferences.getString('EMAIL') ?? '';
      password = preferences.getString('PASSWORD') ?? '';
    });
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
                  String eMail = _eMailController.text.trim();
                  String password = _passwordController.text.trim();
                  if (eMail == 'dhruv__sarang' && password == 'Dhruv123') {
                    isLogin=!isLogin;
                    _saveRecord(isLogin);
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
