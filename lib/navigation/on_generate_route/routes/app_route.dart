import 'package:flutter/material.dart';

import '../models/employee.dart';
import '../screens/first_route.dart';
import '../screens/second_route.dart';
import '../screens/third_route.dart';

class AppRoute {
  static const firstRoute = '/';
  static const secondRoute = '/second';
  static const thirdRoute = '/third';

  static Route<dynamic>? onGenerateRoute(RouteSettings settings) {
    switch (settings.name) {
      case firstRoute:
        return MaterialPageRoute(
          builder: (context) => FirstRoute(),
        );
      case secondRoute:
        Employee? args = settings.arguments as Employee;
        return MaterialPageRoute(
          builder: (context) => SecondRoute(
            employee: args,
          ),
        );
      case thirdRoute:
        Employee? args = settings.arguments as Employee;
        return MaterialPageRoute(
          builder: (context) => ThirdRoute(
            employee: args,
          ),
        );
    }
  }
}
