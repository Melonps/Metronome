import 'package:flutter/material.dart';
import 'clock.dart';
import 'dart:async';

class Clock extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _Clock();
  }
}

class _Clock extends State<Clock> {
  var _isStart = false;
  var _timer;
  int _count = 0;
  DateTime _startTime = DateTime.now();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('タイマーアプリ')),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Container(
            width: 100,
            height: 100,
            color: Colors.greenAccent,
            child: TextButton(
                onPressed: _startTimer,
                child: Text(_isStart ? 'STOP' : 'START')),
          ),
          Center(
            child: Text(_count.toString(), style: TextStyle(fontSize: 76)),
          ),
        ],
      ),
    );
  }

  void _startTimer() {
    setState(() {
      _isStart = !_isStart;
      if (_isStart) {
        _startTime = DateTime.now();
        _timer = Timer.periodic(Duration(seconds: 1), _onTimer);
        print(_timer);
      } else {
        _timer.cancel();
      }
    });
  }

  void _onTimer(Timer timer) {
    _count++;
    print(_count);
    setState(() => {_count = _count});
  }
}
