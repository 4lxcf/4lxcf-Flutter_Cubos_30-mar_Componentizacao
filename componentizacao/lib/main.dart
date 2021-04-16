import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Column(
        children: [
          Expanded(
            child: Column(
              children: [
                ColorfullContainer(),
                ColorfullContainer(),
                ColorfullContainer(),
              ],
            ),
          ),
          Container(
            color: Colors.blue,
            height: 100,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                MiniContainer(
                  selectedColor: Colors.green,
                ),
                MiniContainer(
                  selectedColor: Colors.yellow,
                ),
                MiniContainer(
                  selectedColor: Colors.red,
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

class ColorfullContainer extends StatelessWidget {
  const ColorfullContainer({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white,
      height: 100,
      width: 350,
      margin: EdgeInsets.all(30),
    );
  }
}

class MiniContainer extends StatelessWidget {
  final Color selectedColor;

  const MiniContainer({Key key, this.selectedColor = Colors.white})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      color: selectedColor,
      height: 50,
      width: 50,
    );
  }
}
