import 'package:flutter/material.dart';
import 'package:audioplayers/audioplayers.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key, required this.title}) : super(key: key);

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class CustomButton extends StatelessWidget {
  const CustomButton({this.onTap, Key Key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 120,
      width: 76,
      decoration: BoxDecoration(
        color: Colors.blue,
        borderRadius: BorderRadius.circular(28),
      ),
      alignment: Alignment.center,
      child: Icon(
        Icons.add,
        color: Colors.black,
      ),
    );
  }
}

class _MyHomePageState extends State<MyHomePage> {
  int _counter = 0;
  final _audio = AudioCache();
  void _incrementCounter() {
    setState(() {
      _counter = _counter * 2 + 1;
    });
    _audio.play('wav_botton.mp3');
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
        actions: <Widget>[Icon(Icons.add), Icon(Icons.ac_unit)],
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            const Text(
              'You have pushed the',
            ),
            Text(
              'とてもわかる',
            ),
            Text(
              '$_counter',
              style: Theme.of(context).textTheme.headline4,
            ),
          ],
        ),
      ),
      floatingActionButton: CustomButton(
        onTap: () {
          _incrementCounter();
        },
      ),
    ); // This trailing comma makes auto-formatting nicer for build methods.
  }
}
