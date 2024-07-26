import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter_project/singleton_sharedpreference/preference/pref_manager.dart';
import 'package:flutter_project/singleton_sharedpreference/screens/home_screen.dart';
import 'package:flutter_project/singleton_sharedpreference/screens/login_screen.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    Timer(Duration(seconds: 3), () {
      if (PrefManager.getLoginStatus()) {
        Navigator.pushAndRemoveUntil(
            context,
            MaterialPageRoute(
              builder: (context) => LoginScreen(),
            ),
            (route) => false);
      } else {
        Navigator.pushAndRemoveUntil(
            context,
            MaterialPageRoute(
              builder: (context) => MyHomeScreen(),
            ),
                (route) => false);
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: CircleAvatar(
          radius: 100,
          backgroundColor: Colors.black,
        ),
      ),
    );
  }
}
