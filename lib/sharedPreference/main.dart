import 'package:flutter/material.dart';
import 'package:flutter_project/sharedPreference/screens/home_screen.dart';
import 'package:flutter_project/sharedPreference/screens/login_screen.dart';
import 'package:shared_preferences/shared_preferences.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: MainSplashScreen(),
    );
  }
}

class MainSplashScreen extends StatefulWidget {
  const MainSplashScreen({Key? key});

  @override
  State<MainSplashScreen> createState() => _MainSplashScreenState();
}

class _MainSplashScreenState extends State<MainSplashScreen> {
  var isLogin;

  void initState() {
    loadData();
    super.initState();
    Future.delayed(Duration(seconds: 3), () {
      if (isLogin == true) {
        Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) => MyHomeScreen(),
          ),
        );
      }else{
        Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) => LoginScreen(),
          ),
        );
      }
    });
  }

  Future<void> loadData() async {
    SharedPreferences preferences = await SharedPreferences.getInstance();
    setState(() {
      isLogin = preferences.getBool('STATUS') ?? '';
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
      )
    );
  }
}
