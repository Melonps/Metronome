import 'package:flutter/material.dart';
import 'dart:async';
import 'package:flutter/services.dart';

class NextPage extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _NextPage();
  }
}

class _NextPage extends State<NextPage> {
  final tempo_rc = TextEditingController();
  final beat_rc = TextEditingController();
  var _isStart = false;
  late Timer _timer;
  int _count = 0;

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      appBar: AppBar(
        title: Text('test'),
      ),
      body: Container(
          height: double.infinity,
          color: Colors.white,
          child: Column(
            children: <Widget>[
              TextField(
                keyboardType: TextInputType.number,
                inputFormatters: <TextInputFormatter>[
                  FilteringTextInputFormatter.digitsOnly
                ],
                decoration: InputDecoration(
                  hintText: 'テンポを入力してください',
                ),
                controller: tempo_rc,
              ),
              Text("item4"),
              TextField(
                keyboardType: TextInputType.number,
                inputFormatters: <TextInputFormatter>[
                  FilteringTextInputFormatter.digitsOnly
                ],
                decoration: InputDecoration(
                  hintText: '拍を入力してください',
                ),
                controller: beat_rc,
              ),
            ],
          )),
      floatingActionButton: FloatingActionButton(
          onPressed: _startTimer, child: Text(_isStart ? 'STOP' : 'START')),
      // This trailing comma makes auto-formatting nicer for build methods.
    );
  }

  void _startTimer() {
    String test = tempo_rc.text;
    int tempo = int.parse(test.isNotEmpty ? test : "0");
    int waitTime = 60000 ~/ tempo;
    Timer.periodic(Duration(milliseconds: waitTime), _onTimer);

    for (int i = 0; i < 4; i++) {
      print("count");
      Timer.periodic(Duration(milliseconds: waitTime), _onTimer);
    }
  }

  void _test() {
    print("start");
  }

  void _onTimer(Timer timer) {
    _count++;
    print(_count);
    setState(() => {_count = _count});
  }
}
