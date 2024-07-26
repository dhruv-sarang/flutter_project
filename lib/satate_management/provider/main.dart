import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import 'model/counter.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Counter App',
      home: Provider(
        create: (context) => Counter(),
        child: HomeScreen(),
      ),
    );
  }
}

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    print('build method called.');

    return Scaffold(
      appBar: AppBar(
        title: Text('Counter App'),
      ),
      body: Center(
          child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          ElevatedButton(
            onPressed: () {
              Provider.of<Counter>(context, listen: false).decrement();
            },
            child: Text(
              '-',
              style: TextStyle(fontSize: 30),
            ),
          ),
          Text(
            '${Provider.of<Counter>(context).count}',
            style: TextStyle(fontSize: 30),
          ),
          ElevatedButton(
            onPressed: () {
              // increment();
              Provider.of<Counter>(context, listen: false).increment();
            },
            child: Text(
              '+',
              style: TextStyle(fontSize: 30),
            ),
          ),
        ],
      )),
    );
  }
}
