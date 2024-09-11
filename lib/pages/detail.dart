import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:auto_size_text/auto_size_text.dart';

class Detail extends StatelessWidget {
  const Detail({
    super.key,
    this.color = const Color.fromARGB(255, 231, 241, 223),
    this.child,
  });

  final Color color;
  final Widget? child;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
          child: Card(
        elevation: 20,
        color: Color.fromRGBO(237, 243, 233, 1),
        child: SizedBox(
            width: 300,
            height: 300,
            child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      SvgPicture.asset(
                        "assets/icons/controller_game_icon.svg",
                        semanticsLabel: 'Game logo',
                        width: 70,
                      ),
                      //ElevatedButton(onPressed: onPressed, child: 'Volver'),
                      //ElevatedButton(onPressed: onPressed, child: 'Pag 2'),
                    ],
                  ),
                ])),
      )),
    );
    //floatingActionButton: FloatingActionButton(onPressed: , child: Icon(Icons.icecream));
  }
}
