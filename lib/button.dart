import 'package:flutter/material.dart';

class MyButton extends StatefulWidget {
  @override
  _MyButtonState createState() => _MyButtonState();
}

class _MyButtonState extends State<MyButton> {
  bool _pressAttention = true;

  void _pressButton() {
    setState(() {
      _pressAttention = !_pressAttention;
    });
  }

  @override
  Widget build(BuildContext context) {
    return ButtonTheme(
        minWidth: 100.0,
        height: 100.0,
        child: RaisedButton(
          onPressed: _pressButton,
          child: _pressAttention
              ? Text(
                  'Start',
                  style: TextStyle(color: Colors.white),
                )
              : Text(
                  'Stop',
                  style: TextStyle(
                    color: Colors.white,
                  ),
                ),
          color: _pressAttention ? Colors.blue : Colors.red,
          shape: CircleBorder(
            side: BorderSide(
              color: Colors.white,
              width: 1.0,
            ),
          ),
        ));
  }
}
