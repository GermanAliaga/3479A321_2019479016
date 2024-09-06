import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:auto_size_text/auto_size_text.dart';

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int _counter = 0;
  String svg = "assets/icons/controller_game_icon.svg";
  String message1 = 'Juega';
  String message2 = 'Cantidad de cliks';

  void _incrementCounter() {
    setState(() {
      _counter++;
    });
  }

  void _drecreaseCounter() {
    setState(() {
      _counter--;
    });
  }

  void _restartCounter() {
    setState(() {
      _counter = 0;
      message1 = 'Vuelve a jugar';
      svg = "assets/icons/restart_icon.svg";
    });
  }

  void _messageChange() {
    if (_counter < 0) {
      message1 = 'Derrota';
      svg = "assets/icons/game_over_icon.svg";
    } else if (_counter > 10) {
      message1 = 'Victoria';
      svg = "assets/icons/victory_icon.svg";
    }
  }

  @override
  Widget build(BuildContext context) {
    _messageChange();

    return Scaffold(
        appBar: AppBar(
          backgroundColor: Theme.of(context).colorScheme.inversePrimary,
          title: Text(widget.title),
        ),
        body: Center(
            child: Card(
          elevation: 10,
          color: const Color.fromARGB(255, 244, 248, 238),
          child: Padding(
            padding: const EdgeInsets.all(16.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                AutoSizeText(
                  message1,
                  style: const TextStyle(fontSize: 50),
                  maxLines: 2,
                ),
                SvgPicture.asset(
                  svg,
                  semanticsLabel: 'Game logo',
                  width: 70,
                ),
                Text(
                  message2,
                ),
                Text(
                  '$_counter',
                  style: Theme.of(context).textTheme.headlineMedium,
                )
              ],
            ),
          ),
        )),
        floatingActionButton: FloatingActionButton(
          onPressed: _restartCounter,
          tooltip: 'Increment',
          child: const Icon(Icons.restart_alt),
        ),
        persistentFooterButtons: [
          ElevatedButton(
              onPressed: _drecreaseCounter, child: const Icon(Icons.remove)),
          ElevatedButton(
              onPressed: _incrementCounter, child: const Icon(Icons.add))
        ]);
  }
}
