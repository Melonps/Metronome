import 'package:flutter/material.dart';

class NextPage extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _NextPage();
  }
}

class _NextPage extends State<NextPage> {
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
              ),
            ],
          ))),
    );
  }
}
