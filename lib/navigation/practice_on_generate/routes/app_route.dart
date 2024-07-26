import 'package:flutter/material.dart';
import 'package:flutter_project/navigation/practice_on_generate/model/student.dart';
import 'package:flutter_project/navigation/practice_on_generate/screens/third_scr.dart';
import '../screens/first_scr.dart';
import '../screens/second_scr.dart';

class AppRoute {
  static const firstScr = '/';
  static const secondScr = '/second';
  static const thirdScr = '/third';

  static Route<dynamic>? onGenerateRoute(RouteSettings settings) {
    switch (settings.name) {
      case firstScr:
        return MaterialPageRoute(
          builder: (context) => FirstScr(),
        );
      case secondScr:
        Student? str = settings.arguments as Student;
        return MaterialPageRoute(
          builder: (context) => SecondScr(student: str),
        );
      case thirdScr:
        return MaterialPageRoute(
          builder: (context) => ThirdScr(),
        );
    }
  }
}
