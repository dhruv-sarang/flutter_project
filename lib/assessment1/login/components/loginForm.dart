import 'package:flutter/material.dart';

class LoginForm extends StatefulWidget {
  const LoginForm({super.key});

  @override
  State<LoginForm> createState() => _LoginFormState();
}

class _LoginFormState extends State<LoginForm> {
  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.start,
      children: <Widget>[
        Container(
          alignment: Alignment.bottomCenter,
          height: MediaQuery.of(context).size.height * 0.25,
          child: Transform.rotate(
            angle: -35 * 3.1415926535897932 / 180,
            child: Text('E',
                style: TextStyle(
                    fontSize: 120,
                    fontWeight: FontWeight.bold,
                    color: Colors.orange)),
          ),
        ),
        SizedBox(
          height: 16,
        ),
        Text(
          'ECORP',
          style: TextStyle(color: Colors.orange, fontSize: 45),
        ),
        SizedBox(
          height: 16,
        ),
        Container(
          height: MediaQuery.of(context).size.height * 0.50,
          width: double.infinity,
          child: Card(
            color: Colors.white,
            child: Padding(
              padding: const EdgeInsets.fromLTRB(20, 35, 20, 35),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  Container(
                    height: 60,
                    child: TextField(
                      decoration: InputDecoration(
                          hintText: 'Email',
                          hintStyle:
                          TextStyle(color: Colors.grey.shade700),
                          filled: true,
                          fillColor: Colors.grey.shade300,
                          border: UnderlineInputBorder(
                            borderRadius: BorderRadius.circular(100),
                          ),
                          prefixIcon: Icon(
                            Icons.account_circle_rounded,
                            color: Colors.grey.shade700,
                          )),
                    ),
                  ),
                  SizedBox(
                    height: 16,
                  ),
                  Container(
                    height: 60,
                    child: TextField(
                      decoration: InputDecoration(
                        hintText: 'Password',
                        hintStyle:
                        TextStyle(color: Colors.grey.shade700),
                        filled: true,
                        fillColor: Colors.grey.shade300,
                        border: UnderlineInputBorder(
                          borderRadius: BorderRadius.circular(100),
                        ),
                        prefixIcon: Icon(
                          Icons.lock,
                          color: Colors.grey.shade700,
                        ),
                        suffixIcon: Icon(
                          Icons.remove_red_eye,
                          color: Colors.grey.shade700,
                        ),
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 16,
                  ),
                  TextButton(
                    onPressed: () {},
                    child: Text('Forgot Passwor?',
                        style: TextStyle(
                            fontSize: 16, color: Colors.grey)),
                  ),
                  Container(
                    width: 120,
                    child: ElevatedButton(
                      style: ElevatedButton.styleFrom(
                          backgroundColor: Colors.purple),
                      onPressed: () {},
                      child: Text('LOGIN',
                          style: TextStyle(
                              color: Colors.white, fontSize: 16)),
                    ),
                  ),
                  TextButton(
                    onPressed: () {},
                    child: Text('SIGNUP',
                        style: TextStyle(
                            fontSize: 18, color: Colors.grey)),
                  ),
                ],
              ),
            ),
          ),
        ),
      ],
    );
  }
}
