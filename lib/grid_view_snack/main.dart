import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Number Grid View',
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: Text('Number Grid View'),
        ),
        body: NumberGrid(),
      ),
    );
  }
}

class NumberGrid extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    List<Widget> rows = [];

    // Track the number to be displayed
    int number = 1, line = 6;

    // Define the number of rows we want in the grid
    for (int i = 0; i < line; i++) {
      List<dynamic> newRow;
      if (i % 4 == 0) {
        // Row 1: "1 2 3 4"
        print('no : ${number + 3}');
        newRow = i == line - 1 && number + 3 == number + 3
            ? [number, number + 1, number + 2, 'Coming Soon']
            : [number++, number++, number++, number++]; // 1, 2, 3, 4
      } else if (i == line - 1 && line.isOdd) {
        // Example to place 'Coming\nSoon'
        newRow = ['Coming Soon', number + 2, number + 1, number];
      } else if (i == line - 1 && line.isEven) {
        // Example to place 'Coming\nSoon'
        newRow = i % 4 == 1
            ? [null, null, null, 'Coming Soon']
            : ['Coming Soon', null, null, null];
      } else if (i % 4 == 1) {
        // Row 2: "_ _ _ 5"
        newRow = [null, null, null, number++]; // _ _ _ 5
      } else if (i % 4 == 2) {
        // Row 3: "9 8 7 6"
        newRow = [number + 3, number + 2, number + 1, number]; // 9, 8, 7, 6
        number += 4; // Increment to 10 for next round
      } else if (i % 4 == 3) {
        // Row 4: "10 _ _ _"
        newRow = [number++, null, null, null]; // 10 _ _ _
      } else {
        // Fallback (should not reach here)
        newRow = [null, null, null, null];
      }

      // Add the row to the list
      rows.add(createRow(newRow));
    }

    return SingleChildScrollView(
      child: Column(children: rows),
    );
  }

  Widget createRow(List<dynamic> numbers) {
    List<Widget> cells = numbers.map((number) {
      // Determine the background color based on the cell content
      Color cellColor;
      if (number == 'Coming Soon') {
        cellColor = Colors.blue; // Set color to blue for "Coming Soon"
      } else {
        cellColor =
            (number != null && number is int) ? Colors.blue : Colors.white;
      }

      return Expanded(
        child: InkWell(
          onTap: () {
            if (number != null) {
              print(number);
            }
          },
          child: Container(
            margin: const EdgeInsets.all(4),
            color: cellColor,
            height: 100,
            width: 60,
            child: Center(
              child: Text(
                number?.toString() ?? '',
                style: TextStyle(color: Colors.white, fontSize: 24),
                textAlign: TextAlign.center,
              ),
            ),
          ),
        ),
      );
    }).toList();

    return Row(
      mainAxisAlignment: MainAxisAlignment.start,
      children: cells,
    );
  }
}
