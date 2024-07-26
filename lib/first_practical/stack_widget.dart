import 'dart:ffi';

import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Stack Widget',
      home: Scaffold(
        body: SingleChildScrollView(
          physics: BouncingScrollPhysics(),
          child: Center(
            child: Padding(
              padding: const EdgeInsets.all(10.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Container(
                    height: 380,
                    width: 380,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        image: DecorationImage(
                            image: AssetImage('assets/images/mountain.png'),
                            fit: BoxFit.fill)),
                  ),
                  SizedBox(height: 10),
                  Padding(
                    padding: const EdgeInsets.only(left: 25),
                    child: Text(
                      'Vacation Home',
                      style: TextStyle(
                          fontSize: 30,
                          fontWeight: FontWeight.bold,
                          color: Colors.black),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.fromLTRB(25, 4, 0, 4),
                    child: Row(
                      children: [
                        Icon(
                          Icons.star,
                          color: Colors.yellow,
                          size: 32,
                        ),
                        Icon(
                          Icons.star,
                          color: Colors.yellow,
                          size: 32,
                        ),
                        Icon(
                          Icons.star,
                          color: Colors.yellow,
                          size: 32,
                        ),
                        Icon(
                          Icons.star,
                          color: Colors.yellow,
                          size: 32,
                        ),
                        Icon(
                          Icons.star,
                          color: Colors.yellow,
                          size: 32,
                        ),
                        SizedBox(width: 20),
                        Text(
                          '4/5 Reviews',
                          style: TextStyle(fontSize: 16, color: Colors.grey),
                        ),
                      ],
                    ),
                  ),
                  // SizedBox(height: 20),
                  Padding(
                    padding: const EdgeInsets.fromLTRB(25, 4, 0, 4),
                    child: Text(
                      '''Lorem ipsum dolor sit amet, consectetur 
adipiscing elit, sed do eiusmod tempor 
incididunt ut labore et dolore magna 
aliqua. Ut enim ad minim veniam, quis 
nostrud exercitation ullamco laboris nisi 
ut aliquip ex ea commodo consequat.''',
                      style: TextStyle(
                          fontSize: 15, color: Colors.grey, wordSpacing: 10),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.fromLTRB(25, 10, 0, 4),
                    child: Text(
                      '''Lorem ipsum dolor sit amet, consectetur 
adipiscing elit, sed do eiusmod tempor 
incididunt ut labore et dolore magna 
aliqua. Ut enim ad minim veniam, quis 
nostrud exercitation ullamco laboris nisi.''',
                      style: TextStyle(
                          fontSize: 15, color: Colors.grey, wordSpacing: 10),
                    ),
                  ),
                  SizedBox(height: 30),

                  Container(
                    // height: 150,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(18),
                      color: Colors.black,
                    ),
                    child: Padding(
                      padding: const EdgeInsets.all(15.0),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Column(
                            children: [
                              Row(
                                children: [
                                  Text('\$156',
                                      style: TextStyle(
                                          fontSize: 25,
                                          fontWeight: FontWeight.bold,
                                          color: Colors.white)),
                                  Text(
                                    ' + taxes',
                                    style: TextStyle(
                                        fontSize: 18, color: Colors.grey),
                                  ),
                                ],
                              ),
                              Text(
                                'Per night',
                                style:
                                    TextStyle(fontSize: 18, color: Colors.grey),
                              )
                            ],
                          ),
                          FilledButton(
                            onPressed: () {},
                            child: Text('Book Now'),
                          )
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
