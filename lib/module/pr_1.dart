import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Practical 1',
      home: Scaffold(
/*
        body: SingleChildScrollView(
          physics: BouncingScrollPhysics(),
          child: Padding(
            padding: const EdgeInsets.all(10.0),
            child: Column(
              children: [
                Container(
                  width: 500,
                  height: 300,
                  color: Colors.red,
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 10),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Expanded(
                        flex: 1,
                        child: Container(
                          height: 180,
                          color: Colors.blue,
                        ),
                      ),
                      SizedBox(width: 10),
                      Expanded(
                        flex: 1,
                        child: Container(
                          height: 180,
                          color: Colors.blue,
                        ),
                      ),
                    ],
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 10),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Expanded(
                        flex: 1,
                        child: Container(
                          height: 180,
                          color: Colors.blue,
                        ),
                      ),
                      SizedBox(width: 10),
                      Expanded(
                        flex: 1,
                        child: Container(
                          height: 180,
                          color: Colors.blue,
                        ),
                      ),
                    ],
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 10),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Expanded(
                        flex: 1,
                        child: Container(
                          height: 130,
                          color: Colors.yellow,
                        ),
                      ),
                      SizedBox(width: 10),
                      Expanded(
                        flex: 1,
                        child: Container(
                          height: 130,
                          color: Colors.yellow,
                        ),
                      ),
                      SizedBox(width: 10),
                      Expanded(
                        flex: 1,
                        child: Container(
                          // width: 200,
                          height: 130,
                          color: Colors.yellow,
                        ),
                      ),
                    ],
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 10),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Expanded(
                        flex: 1,
                        child: Container(
                          height: 130,
                          color: Colors.yellow,
                        ),
                      ),
                      SizedBox(width: 10),
                      Expanded(
                        flex: 1,
                        child: Container(
                          height: 130,
                          color: Colors.yellow,
                        ),
                      ),
                      SizedBox(width: 10),
                      Expanded(
                        flex: 1,
                        child: Container(
                          height: 130,
                          color: Colors.yellow,
                        ),
                      ),
                    ],
                  ),
                )
              ],
            ),
          ),
        ),
*/
        body: Padding(
          padding: const EdgeInsets.all(10),
          child: GridView.count(
            physics: BouncingScrollPhysics(),
            primary: false,
            crossAxisSpacing: 10,
            mainAxisSpacing: 10,
            crossAxisCount: 1,
            children: <Widget>[
              Container(
                height: 200,
                color: Colors.red,
              ),
              Container(
                child: GridView.count(
                  // primary: false,
                  crossAxisSpacing: 10,
                  mainAxisSpacing: 10,
                  crossAxisCount: 2,
                  children: <Widget>[
                    Container(
                      padding: const EdgeInsets.all(10),
                      color: Colors.blue,
                    ),
                    Container(
                      padding: const EdgeInsets.all(10),
                      color: Colors.blue,
                    ),
                    Container(
                      padding: const EdgeInsets.all(10),
                      color: Colors.blue,
                    ),
                    Container(
                      padding: const EdgeInsets.all(10),
                      color: Colors.blue,
                    ),
                  ],
                ),
              ),
              Container(
                child: GridView.count(
                  primary: false,
                  crossAxisSpacing: 10,
                  mainAxisSpacing: 10,
                  crossAxisCount: 3,
                  children: <Widget>[
                    Container(
                      padding: const EdgeInsets.all(10),
                      color: Colors.yellow,
                    ),
                    Container(
                      padding: const EdgeInsets.all(10),
                      color: Colors.yellow,
                    ),
                    Container(
                      padding: const EdgeInsets.all(10),
                      color: Colors.yellow,
                    ),
                    Container(
                      padding: const EdgeInsets.all(10),
                      color: Colors.yellow,
                    ),
                    Container(
                      padding: const EdgeInsets.all(10),
                      color: Colors.yellow,
                    ),
                    Container(
                      padding: const EdgeInsets.all(10),
                      color: Colors.yellow,
                    ),
                    Container(
                      padding: const EdgeInsets.all(10),
                      color: Colors.yellow,
                    ),
                    Container(
                      padding: const EdgeInsets.all(10),
                      color: Colors.yellow,
                    ),
                    Container(
                      padding: const EdgeInsets.all(10),
                      color: Colors.yellow,
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
