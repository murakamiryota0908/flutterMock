import 'package:flutter/material.dart';

class salarypage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Work Management App',
      home: Scaffold(body: Calculator()),
      darkTheme: ThemeData.dark(),
      debugShowCheckedModeBanner: false,
    );
  }
}

class Calculator extends StatefulWidget {
  @override
  _CalculatorState createState() => _CalculatorState();
}

class _CalculatorState extends State<Calculator> {
  String display = "0";
  String? operation;
  double? firstValue;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        Expanded(
            child: Container(
                alignment: Alignment.bottomRight,
                padding: EdgeInsets.all(16.0),
                child: Text(display,
                    style: TextStyle(fontSize: 32, color: Colors.white)))),
        for (var row in _buttonRows) buildButtonRow(row),
      ],
    );
  }

  final _buttonRows = [
    ['7', '8', '9', '/'],
    ['4', '5', '6', '×'],
    ['1', '2', '3', '−'],
    ['AC', '0', '.', '+'],
    ['', '', '', '=']
  ];

  Widget buildButtonRow(List<String> titles) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: titles
          .map((title) =>
              CalculatorButton(title: title, onPressed: onButtonPressed))
          .toList(),
    );
  }

  void onButtonPressed(String value) {
    setState(() {
      if ('0123456789'.contains(value)) {
        if (display == '0' || (operation != null && firstValue == null)) {
          display = value;
        } else {
          display += value;
        }
      } else if (value == 'AC') {
        display = '0';
        operation = null;
        firstValue = null;
      } else if (['+', '−', '×', '/'].contains(value)) {
        operation = value;
        firstValue = double.parse(display);
        display = '0';
      } else if (value == '=') {
        if (operation != null && firstValue != null) {
          switch (operation) {
            case '+':
              display = (firstValue! + double.parse(display)).toString();
              break;
            case '−':
              display = (firstValue! - double.parse(display)).toString();
              break;
            case '×':
              display = (firstValue! * double.parse(display)).toString();
              break;
            case '/':
              if (double.parse(display) == 0.0) {
                display = "Error";
              } else {
                display = (firstValue! / double.parse(display))
                    .toStringAsFixed(2); // 小数点以下2桁で表示
              }
              break;
          }
          firstValue = null;
          operation = null;
        }
      } else if (value == '.' && !display.contains('.')) {
        display += '.';
      }
    });
  }
}

class CalculatorButton extends StatelessWidget {
  final String title;
  final Function(String) onPressed;
  const CalculatorButton({required this.title, required this.onPressed});

  @override
  Widget build(BuildContext context) {
    Color buttonColor = _buttonColors.containsKey(title)
        ? _buttonColors[title]!
        : Colors.grey[300]!;
    Color textColor = (title == 'AC') ? Colors.black : Colors.white;
    return title.isEmpty ? _emptySpace() : _button(buttonColor, textColor);
  }

  Widget _emptySpace() => Container(width: 70, height: 70);

  Widget _button(Color color, Color textColor) {
    return Container(
      width: 70,
      height: 70,
      margin: EdgeInsets.all(8.0),
      child: ElevatedButton(
        onPressed: () => onPressed(title),
        child: Text(title, style: TextStyle(fontSize: 24, color: textColor)),
        style: ElevatedButton.styleFrom(
          primary: color,
          shape: CircleBorder(),
        ),
      ),
    );
  }

  static const _buttonColors = {
    '0': Colors.grey,
    '1': Colors.grey,
    '2': Colors.grey,
    '3': Colors.grey,
    '4': Colors.grey,
    '5': Colors.grey,
    '6': Colors.grey,
    '7': Colors.grey,
    '8': Colors.grey,
    '9': Colors.grey,
    '.': Colors.grey,
    '/': Colors.orange,
    '×': Colors.orange,
    '−': Colors.orange,
    '+': Colors.orange,
    '=': Colors.orange,
  };
}
