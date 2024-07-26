import 'package:flutter/material.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            TextField(
              decoration: InputDecoration(labelText: 'Login Id'),
            ),
            SizedBox(height: 16,),
            TextField(
              decoration: InputDecoration(labelText: 'Password'),
            ),
            SizedBox(height: 16,),
            Container(
              width: double.infinity,
              child: FilledButton(onPressed: () {

              }, child: Text('Login'),
              ),
            )
          ],
        ),
      ),
    );
  }
}
