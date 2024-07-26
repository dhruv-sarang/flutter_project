import 'package:flutter/material.dart';
import 'package:flutter_project/navigation/navigator/login_screens/second_screen.dart';
import 'package:flutter_project/navigation/navigator/login_screens/third_screen.dart';

class FirstScreen extends StatelessWidget {
  final _email = TextEditingController();
  final _password = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: BoxDecoration(
          gradient: LinearGradient(colors: [
            Colors.blue,
            Colors.blue.shade700,
            Colors.blue.shade600,
            Colors.blue.shade500,
            Colors.blue.shade400,
            Colors.blue.shade300,
            // Colors.blue.shade200,
            // Colors.blue.shade100,
          ], begin: Alignment.bottomCenter, end: Alignment.topCenter),
        ),

        // color: Colors.blueAccent,
        child: Center(
          child: Padding(
            padding: const EdgeInsets.all(40.0),
            child: SingleChildScrollView(
              physics: BouncingScrollPhysics(),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Center(
                      child: Text(
                    'Sign In',
                    style: TextStyle(
                        fontSize: 36,
                        fontWeight: FontWeight.bold,
                        color: Colors.white),
                  )),
                  SizedBox(height: 20),
                  Text(
                    'Email',
                    style: TextStyle(
                        fontSize: 15,
                        fontWeight: FontWeight.bold,
                        color: Colors.white),
                  ),
                  SizedBox(height: 5),
                  /*TextField(
                      decoration: InputDecoration(
                        hintText: 'Enter your Email',
                        hintStyle: TextStyle(color: Colors.white60),
                        prefixIcon: Icon(Icons.mail, color: Colors.white),
                        // filled: true,
                        border: OutlineInputBorder(),
                      ),
                    ),*/
                  Container(
                    child: TextField(
                      controller: _email,
                      decoration: InputDecoration(
                        border: UnderlineInputBorder(
                            borderRadius:
                                BorderRadius.all(Radius.circular(10))),
                        labelText: 'Enter your Email',
                        labelStyle:
                            TextStyle(color: Colors.white60, height: 1, fontSize: 18),
                        prefixIcon: Icon(Icons.mail, color: Colors.white),
                        fillColor: Colors.blue,
                        filled: true,
                      ),
                      style: TextStyle(fontSize: 20, height: 1),
                    ),
                    decoration: BoxDecoration(
                      boxShadow: [
                        BoxShadow(
                          color: Colors.black38,
                          blurRadius: 25,
                          offset: const Offset(0, 10),
                        ),
                      ],
                    ),
                  ),
                  SizedBox(height: 20),
                  Text(
                    'Password',
                    style: TextStyle(
                        fontSize: 15,
                        fontWeight: FontWeight.bold,
                        color: Colors.white),
                  ),
                  SizedBox(height: 5),

                  /*TextField(
                      decoration: InputDecoration(
                          hintText: 'Enter your Password',
                          hintStyle: TextStyle(color: Colors.white60),
                          prefixIcon: Icon(Icons.lock, color: Colors.white),
                          border: OutlineInputBorder()),
                    ),*/
                  Container(
                    child: TextField(
                      controller: _password,
                      obscureText: true,
                      decoration: InputDecoration(
                        border: UnderlineInputBorder(
                            borderRadius:
                                BorderRadius.all(Radius.circular(10))),
                        hintText: 'Enter your Password',
                        hintStyle:
                            TextStyle(color: Colors.white60, height: 2, fontSize: 18),
                        prefixIcon: Icon(Icons.lock, color: Colors.white),
                        fillColor: Colors.blue,
                        filled: true,
                      ),
                    ),
                    decoration: BoxDecoration(
                      boxShadow: [
                        BoxShadow(
                          color: Colors.black38,
                          blurRadius: 25,
                          offset: const Offset(0, 10),
                        ),
                      ],
                    ),
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      TextButton(
                          onPressed: () {},
                          child: Text(
                            'Forgot Password?',
                            style: TextStyle(
                                fontSize: 15,
                                fontWeight: FontWeight.bold,
                                color: Colors.white),
                          )),
                    ],
                  ),
                  SizedBox(height: 5),
                  Row(
                    children: [
                      SizedBox(width: 15),
                      Icon(
                        Icons.check_box_outline_blank,
                        color: Colors.white,
                      ),
                      SizedBox(width: 12),
                      Text(
                        'Remember me',
                        style: TextStyle(
                            fontSize: 17,
                            fontWeight: FontWeight.bold,
                            color: Colors.white),
                      ),
                    ],
                  ),
                  SizedBox(height: 15),
                  Center(
                    child: Container(
                      width: 400,
                      height: 50,
                      child: ElevatedButton(
                        /*onPressed: () {
                          String email = _email.text.trim();
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => SecondScreen(email: email),
                            ),
                          );
                        },*/
                        onPressed: () {
                          String password = _password.text;
                          String email = _email.text.trim();
                          if (password == '12345') {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context) =>
                                    SecondScreen(email: email),
                              ),
                            );
                          } else {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context) => ThirdScreen(email: email),
                              ),
                            );
                          }
                        },
                        child: Text(
                          'LOGIN',
                          style: TextStyle(fontSize: 20, color: Colors.blue),
                        ),
                        // style: ElevatedButton.styleFrom(backgroundColor: Colors.lightBlueAccent),
                      ),
                    ),
                  ),
                  SizedBox(height: 20),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        '-OR-',
                        style: TextStyle(
                            fontSize: 15,
                            fontWeight: FontWeight.bold,
                            color: Colors.white),
                      ),
                    ],
                  ),
                  SizedBox(height: 15),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        'Sign in with',
                        style: TextStyle(
                            fontSize: 18,
                            fontWeight: FontWeight.bold,
                            color: Colors.white),
                      ),
                    ],
                  ),
                  SizedBox(height: 20),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Container(
                        height: 50,
                        width: 50,
                        decoration: BoxDecoration(
                          shape: BoxShape.circle,
                          // color: Colors.black,
                          image: DecorationImage(
                            // image: Image.network(imageUrl),
                            image: AssetImage('assets/images/facebook.jpeg'),
                            fit: BoxFit.contain,
                          ),
                        ),
                      ),
                      SizedBox(width: 80),
                      Container(
                        height: 50,
                        width: 50,
                        decoration: BoxDecoration(
                          shape: BoxShape.circle,
                          color: Colors.white,
                          image: DecorationImage(
                              // image: Image.network(imageUrl),
                              image: AssetImage('assets/images/google.png'),
                              fit: BoxFit.contain),
                        ),
                      ),
                    ],
                  ),
                  SizedBox(height: 15),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        'Don\'t have an Account?',
                        style: TextStyle(fontSize: 16, color: Colors.white),
                      ),
                      TextButton(
                          onPressed: () {
                            String email = _email.text.trim();
                          },
                          child: Text(
                            'Sign Up',
                            style: TextStyle(
                                fontSize: 16,
                                fontWeight: FontWeight.bold,
                                color: Colors.white),
                          )),
                    ],
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
