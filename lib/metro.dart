import 'package:flutter/material.dart';

class MyButton extends StatefulWidget {
  @override
  _MyButtonState createState() => _MyButtonState();
}

class _MyButtonState extends State<MyButton> {
  var _isStart = false;

  void _pressButton() {
    setState(() {
      _isStart = !_isStart;
    });
  }

  @override
  Widget build(BuildContext context) {
    return FloatingActionButton(
      onPressed: test,
      child: Icon(Icons.access_alarm),
    );
  }

  void test() {
    print("test");
  }
}
