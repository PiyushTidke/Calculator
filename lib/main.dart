import 'package:calculator/widget/calculator_button.dart';
import 'package:flutter/material.dart';

void main() => runApp(CalculatorApp());

class CalculatorApp extends StatefulWidget {
  @override
  _CalculatorAppState createState() => _CalculatorAppState();
}

class _CalculatorAppState extends State<CalculatorApp> {
  int? firstnum;
  int? secondnum;
  String? history = '';
  String? textToDisplay = '';
  String? res;
  String? operation;

  void btnOnclick(String btnVal) {
    print(btnVal);
    if (btnVal == 'C') {
      textToDisplay = '';
      firstnum = 0;
      secondnum = 0;
      res = '';
    } else if (btnVal == 'AC') {
      textToDisplay = '';
      firstnum = 0;
      secondnum = 0;
      res = '';
      history = '';
    }
    //else if(btnVal == '+/-'){
    //   if(textToDisplay! [0] ≠   '-'){
    //     res ='-'+textToDisplay!;
    //   }
    //   else{
    //     res =textToDisplay!.substring(1);
    //   }

    else if (btnVal == '<') {
      res = textToDisplay!.substring(0, textToDisplay!.length - 1);
    } else if (btnVal == '+' ||
        btnVal == '-' ||
        btnVal == 'X' ||
        btnVal == '/') {
      firstnum = int.parse(textToDisplay!);
      res = '';
      operation = btnVal;
    } else if (btnVal == '=') {
      secondnum = int.parse(textToDisplay!);
      if (operation == '+') {
        res = (firstnum! + secondnum!).toString();
        history =
            firstnum.toString() + operation.toString() + secondnum.toString();
      }
      if (operation == '-') {
        res = (firstnum! - secondnum!).toString();
        history =
            firstnum.toString() + operation.toString() + secondnum.toString();
      }
      if (operation == 'X') {
        res = (firstnum! * secondnum!).toString();
        history =
            firstnum.toString() + operation.toString() + secondnum.toString();
      }
      if (operation == '/') {
        res = (firstnum! / secondnum!).toString();
        history =
            firstnum.toString() + operation.toString() + secondnum.toString();
      }
    } else {
      res = int.parse(textToDisplay! + btnVal).toString();
    }
    setState(() {
      textToDisplay = res;
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Calculator',
      theme: ThemeData(primarySwatch: Colors.blueGrey),
      home: Scaffold(
        appBar: AppBar(
          title: Text('Flutter Calculator'),
        ),
        backgroundColor: Color(0xff28527a),
        body: Container(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              Container(
                child: Padding(
                  padding: EdgeInsets.only(right: 12),
                  child: Text(
                    history!,
                    style: TextStyle(
                      fontSize: 48,
                      color: Color(0x66ffffff),
                    ),
                  ),
                ),
                alignment: Alignment(1.0, 1.0),
              ),
              Container(
                child: Padding(
                  padding: EdgeInsets.all(12),
                  child: Text(
                    textToDisplay!,
                    style: TextStyle(fontSize: 40, color: Colors.white),
                  ),
                ),
                alignment: Alignment(1.0, 1.0),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  CalculatorButton(
                    text: 'AC',
                    fillcolor: 0xFF8ac4d0,
                    textcolor: 0xff000000,
                    textsize: 20,
                    callback: btnOnclick,
                  ),
                  CalculatorButton(
                    text: 'C',
                    fillcolor: 0xFF8ac4d0,
                    textcolor: 0xff000000,
                    textsize: 20,
                    callback: btnOnclick,
                  ),
                  CalculatorButton(
                    text: '<',
                    fillcolor: 0xFFf4d160,
                    textcolor: 0xff000000,
                    textsize: 20,
                    callback: btnOnclick,
                  ),
                  CalculatorButton(
                    text: '/',
                    fillcolor: 0xFFf4d160,
                    textcolor: 0xff000000,
                    textsize: 20,
                    callback: btnOnclick,
                  ),
                ],
              ), // AC, C, <, /
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  CalculatorButton(
                    text: '9',
                    fillcolor: 0xFF8ac4d0,
                    textcolor: 0xff000000,
                    textsize: 20,
                    callback: btnOnclick,
                  ),
                  CalculatorButton(
                    text: '8',
                    fillcolor: 0xFF8ac4d0,
                    textcolor: 0xff000000,
                    textsize: 20,
                    callback: btnOnclick,
                  ),
                  CalculatorButton(
                    text: '7',
                    fillcolor: 0xFF8ac4d0,
                    textcolor: 0xff000000,
                    textsize: 20,
                    callback: btnOnclick,
                  ),
                  CalculatorButton(
                    text: 'X',
                    fillcolor: 0xFFf4d160,
                    textcolor: 0xff000000,
                    textsize: 20,
                    callback: btnOnclick,
                  ),
                ],
              ), //9,8,7, X
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  CalculatorButton(
                    text: '6',
                    fillcolor: 0xFF8ac4d0,
                    textcolor: 0xff000000,
                    textsize: 20,
                    callback: btnOnclick,
                  ),
                  CalculatorButton(
                    text: '5',
                    fillcolor: 0xFF8ac4d0,
                    textcolor: 0xff000000,
                    textsize: 20,
                    callback: btnOnclick,
                  ),
                  CalculatorButton(
                    text: '4',
                    fillcolor: 0xFF8ac4d0,
                    textcolor: 0xff000000,
                    textsize: 20,
                    callback: btnOnclick,
                  ),
                  CalculatorButton(
                    text: '-',
                    fillcolor: 0xFFf4d160,
                    textcolor: 0xff000000,
                    textsize: 20,
                    callback: btnOnclick,
                  ),
                ],
              ), // 6,5,4,-
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  CalculatorButton(
                    text: '3',
                    fillcolor: 0xFF8ac4d0,
                    textcolor: 0xff000000,
                    textsize: 20,
                    callback: btnOnclick,
                  ),
                  CalculatorButton(
                    text: '2',
                    fillcolor: 0xFF8ac4d0,
                    textcolor: 0xff000000,
                    textsize: 20,
                    callback: btnOnclick,
                  ),
                  CalculatorButton(
                    text: '1',
                    fillcolor: 0xFF8ac4d0,
                    textcolor: 0xff000000,
                    textsize: 20,
                    callback: btnOnclick,
                  ),
                  CalculatorButton(
                    text: '+',
                    fillcolor: 0xFFf4d160,
                    textcolor: 0xff000000,
                    textsize: 20,
                    callback: btnOnclick,
                  ),
                ],
              ), //3,2,1,+
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  CalculatorButton(
                    text: '+/-',
                    fillcolor: 0xFF8ac4d0,
                    textcolor: 0xff000000,
                    textsize: 20,
                    callback: btnOnclick,
                  ),
                  CalculatorButton(
                    text: '0',
                    fillcolor: 0xFF8ac4d0,
                    textcolor: 0xff000000,
                    textsize: 20,
                    callback: btnOnclick,
                  ),
                  CalculatorButton(
                    text: '00',
                    fillcolor: 0xFF8ac4d0,
                    textcolor: 0xff000000,
                    textsize: 20,
                    callback: btnOnclick,
                  ),
                  CalculatorButton(
                    text: '=',
                    fillcolor: 0xFFf4d160,
                    textcolor: 0xff000000,
                    textsize: 20,
                    callback: btnOnclick,
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
