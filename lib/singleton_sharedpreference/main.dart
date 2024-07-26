import 'package:flutter/material.dart';
import 'package:flutter_project/singleton_sharedpreference/preference/pref_manager.dart';
import 'package:flutter_project/singleton_sharedpreference/screens/splash_screen.dart';
Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await PrefManager.init();
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Material App',
      home: SplashScreen(),
    );
  }
}