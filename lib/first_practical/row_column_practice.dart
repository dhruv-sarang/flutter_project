import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Material App',
      debugShowCheckedModeBanner: false,
      home: Scaffold(
          body: SingleChildScrollView(
          physics: BouncingScrollPhysics(),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            // mainAxisSize: MainAxisSize.min,
            children: [
              Container(
                height: 470,
                width: 500,
                decoration: BoxDecoration(
                    image: DecorationImage(
                          image: AssetImage('assets/images/mountain.png'),
                        fit: BoxFit.fill)),
              ),
              SizedBox(height: 15),
              Padding(
                padding: const EdgeInsets.fromLTRB(20, 0, 20, 0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Container(
                      child: Text(
                        'Untold Forest Storty',
                        style: TextStyle(
                            fontWeight: FontWeight.bold, fontSize: 30),
                      ),
                    ),
                    SizedBox(height: 10),
                    Stack(
                      clipBehavior: Clip.none,
                      alignment: Alignment.center,
                      children: [
                        Positioned(
                          child: Container(
                            height: 65,
                            width: 65,
                            decoration: BoxDecoration(
                              shape: BoxShape.circle,
                              border: Border.all(width: 1),
                              // color: Colors.black,
                              image: DecorationImage(
                                image: AssetImage('assets/images/google.png'),
                                fit: BoxFit.fill,
                              ),
                            ),
                          ),
                        ),
                        Positioned(
                          right: -40,
                          child: Container(
                            height: 65,
                            width: 65,
                            decoration: BoxDecoration(
                              shape: BoxShape.circle,
                              border: Border.all(width: 1),
                              // color: Colors.black,
                              image: DecorationImage(
                                image: AssetImage('assets/images/images1.jpeg'),
                                fit: BoxFit.fill,
                              ),
                            ),
                          ),
                        ),
                        Positioned(
                          right: -80,
                          child: Container(
                            height: 65,
                            width: 65,
                            decoration: BoxDecoration(
                              shape: BoxShape.circle,
                              border: Border.all(width: 1),
                              // color: Colors.black,
                              image: DecorationImage(
                                image:
                                    AssetImage('assets/images/facebook.jpeg'),
                                fit: BoxFit.fill,
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                    SizedBox(height: 10),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text(
                              '9.2',
                              style: TextStyle(
                                  fontSize: 30, fontWeight: FontWeight.bold),
                            ),
                            Text(
                              'IMDB Rating',
                              style:
                                  TextStyle(fontSize: 15, color: Colors.grey),
                            ),
                            Icon(Icons.eighteen_up_rating,
                                color: Colors.yellow, size: 35)
                          ],
                        ),
                        Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text(
                              '52%',
                              style: TextStyle(
                                  fontSize: 30, fontWeight: FontWeight.bold),
                            ),
                            Text(
                              'Rotten Tomatoes',
                              style:
                                  TextStyle(fontSize: 15, color: Colors.grey),
                            ),
                            Icon(Icons.adb, color: Colors.red, size: 35)
                          ],
                        ),
                        Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text(
                              '51',
                              style: TextStyle(
                                  fontSize: 30, fontWeight: FontWeight.bold),
                            ),
                            Text(
                              'Metacritic',
                              style:
                                  TextStyle(fontSize: 15, color: Colors.grey),
                            ),
                            Icon(Icons.masks, color: Colors.black, size: 35)
                          ],
                        ),
                      ],
                    ),
                    SizedBox(height: 20),
                    Text(
                      '''Lorem Ipsum is simply dummy text of the 
printing and typesetting industry. Lorem 
Ipsum has been the industry\'s standard 
dummy text ever since the 1500s, when an 
unknown printer took a galley of type and 
scrambled it to make a type specimen book.
Lorem Ipsum is simply dummy text of the 
printing and typesetting industry. Lorem 
Ipsum has been the industry\'s standard 
dummy text ever since the 1500s, when an 
unknown printer took a galley of type and 
scrambled it to make a type specimen book.
                      ''',
                      style:
                          TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                    ),
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
