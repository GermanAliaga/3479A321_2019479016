import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int _counter = 0;
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
    });
  }

  @override
  Widget build(BuildContext context) {
    String svg = "assets/icons/211668_controller_b_game_icon.svg";

    return Scaffold(
        appBar: AppBar(
          backgroundColor: Theme.of(context).colorScheme.inversePrimary,
          title: Text(widget.title),
        ),
        body: Center(
          child: Padding(
            padding: const EdgeInsets.all(10.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Text(
                  message1,
                ),
                SvgPicture.asset(
                  svg,
                  semanticsLabel: 'Joystick logo',
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
        ),
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
