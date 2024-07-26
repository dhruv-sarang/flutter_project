import 'package:flutter/material.dart';

class RegisterScreen extends StatefulWidget {
  const RegisterScreen({super.key});

  @override
  State<RegisterScreen> createState() => _RegisterScreenState();
}

class _RegisterScreenState extends State<RegisterScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            TextField(
              decoration: InputDecoration(labelText: 'Name'),
            ),
            SizedBox(height: 16,),
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

              }, child: Text('Register'),
              ),
            )
          ],
        ),
      ),
    );
  }
}
