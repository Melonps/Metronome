import 'package:flutter/material.dart';
import 'package:audioplayers/audioplayers.dart';
import 'button.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'タイトルですよ',
      home: Scaffold(
          appBar: AppBar(
            title: Text('appBarですよ'),
          ),
          body: Center(
              child: Column(
            mainAxisSize: MainAxisSize.min,
            children: <Widget>[
              Padding(
                padding: EdgeInsets.all(50.0),
                //child: Clock(),
              ),
              MyButton(),
            ],
          ))),
    );
  }
}
