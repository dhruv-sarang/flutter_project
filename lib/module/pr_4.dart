/*Create an application with radio buttons (Add, Substraction,
Multiply, Division) EditText(number1, number2) and print result as
per user choice from radio button in TextView*/
import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Calculate Arithmetic',
      home: CalculateArithmetic(),
    );
  }
}

class CalculateArithmetic extends StatefulWidget {
  const CalculateArithmetic({super.key});

  @override
  State<CalculateArithmetic> createState() => _CalculateArithmeticState();
}

class _CalculateArithmeticState extends State<CalculateArithmetic> {
  TextEditingController _no1controller = TextEditingController();
  TextEditingController _no2controller = TextEditingController();
  int selectedOption = 1;
  String output = '';

  void calculateResult() {
    double num1 = double.parse(_no1controller.text);
    double num2 = double.parse(_no2controller.text);

    setState(() {
      switch (selectedOption) {
        case 1:
          output = (num1 + num2).toString();
          break;
        case 2:
          output = (num1 - num2).toString();
          break;
        case 3:
          output = (num1 * num2).toString();
          break;
        case 4:
          output = (num1 / num2).toString();
          break;
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Calculate Arithmetic'),
      ),
      body: SingleChildScrollView(
        physics: BouncingScrollPhysics(),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: <Widget>[
            ListTile(
              title: const Text('Addition'),
              leading: Radio(
                value: 1,
                groupValue: selectedOption,
                onChanged: (value) {
                  setState(() {
                    selectedOption = value!;
                  });
                },
              ),
            ),
            ListTile(
              title: const Text('Subtraction'),
              leading: Radio(
                value: 2,
                groupValue: selectedOption,
                onChanged: (value) {
                  setState(() {
                    selectedOption = value!;
                  });
                },
              ),
            ),
            ListTile(
              title: const Text('Multiplication'),
              leading: Radio(
                value: 3,
                groupValue: selectedOption,
                onChanged: (value) {
                  setState(() {
                    selectedOption = value!;
                  });
                },
              ),
            ),
            ListTile(
              title: const Text('Division'),
              leading: Radio(
                value: 4,
                groupValue: selectedOption,
                onChanged: (value) {
                  setState(() {
                    selectedOption = value!;
                  });
                },
              ),
            ),
            SizedBox(height: 40),
            TextField(
              controller: _no1controller,
              keyboardType: TextInputType.number,
              decoration: InputDecoration(
                labelText: 'Enter a number',
              ),
            ),
            SizedBox(height: 20),
            TextField(
              controller: _no2controller,
              keyboardType: TextInputType.number,
              decoration: InputDecoration(
                labelText: 'Enter a number',
              ),
            ),
            SizedBox(height: 20),
            ElevatedButton(
              onPressed: () {
                calculateResult();
              },
              child: Text('Click to generate Output'),
            ),
            SizedBox(height: 40),
            Text('Output : $output', style: TextStyle(fontSize: 28, fontWeight: FontWeight.bold),
            ),
          ],
        ),
      ),
    );
  }
}
