import 'package:flutter/material.dart';
import 'package:flutter_project/navigation_bar/screens/home_screen.dart';
import 'package:flutter_project/navigation_bar/screens/message_screen.dart';
import 'package:flutter_project/navigation_bar/screens/notificatin_screen.dart';

import 'model/data.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Navigation bar',
      home: MainScreen(),
    );
  }
}

class MainScreen extends StatefulWidget {
  const MainScreen({super.key});

  @override
  State<MainScreen> createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> {
  int selectedIndex = 0;
  List<Data> dataList = [];

  @override
  void initState() {
    dataList.add(Data(
        title: 'Home Screen',
        screen: HomeScreen(),
        icon: Icons.home_outlined,
        selectedIcon: Icons.home));
    dataList.add(Data(
        title: 'Notification Screen',
        screen: NotificationScreen(),
        icon: Icons.notifications_none,
        selectedIcon: Icons.notifications));
    dataList.add(Data(
        title: 'Message Screen',
        screen: MessageScreen(),
        icon: Icons.message_outlined,
        selectedIcon: Icons.message));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.grey,
        title: Text(dataList[selectedIndex].title),
      ),
      body: dataList[selectedIndex].screen,
      bottomNavigationBar: NavigationBar(
        labelBehavior: NavigationDestinationLabelBehavior.onlyShowSelected,
        backgroundColor: Colors.grey,
        selectedIndex: selectedIndex,
        indicatorColor: Colors.black26,
        onDestinationSelected: (value) {
          setState(() {
            selectedIndex = value!;
          });
        },
        destinations: List.generate(
          dataList.length,
          (index) => NavigationDestination(
            icon: Icon(dataList[index].icon),
            label: dataList[index].title.split(' ').first,
            selectedIcon: Icon(dataList[index].selectedIcon),
          ),
        ),
      ),
    );
  }
}
