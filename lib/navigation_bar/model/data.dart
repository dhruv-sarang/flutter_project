import 'package:flutter/material.dart';

class Data {
  String title;
  Widget screen;
  IconData icon;
  IconData selectedIcon;

  Data(
      {required this.title,
        required this.screen,
        required this.icon,
        required this.selectedIcon});
}
