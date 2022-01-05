import 'package:flutter/material.dart';

class CalculatorButton extends StatelessWidget {
  final String text;
  final int fillcolor;
  final int textcolor;
  final double textsize;
  final Function callback;
  const CalculatorButton(
      {required this.text,
      required this.fillcolor,
      required this.textcolor,
      required this.textsize,
      required this.callback});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.all(10.0),
      child: SizedBox(
        width: 70,
        height: 70,
        child: FlatButton(
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(5.0),
          ),
          child: Text(
            text,
            style: TextStyle(fontSize: textsize),
          ),
          onPressed: () => callback(text),
          color: Color(fillcolor),
          textColor: Color(textcolor),
        ),
      ),
    );
  }
}
