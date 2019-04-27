import 'package:flutter/material.dart';
import 'numberTile.dart';
import 'game_sqaure.dart';

void main() => runApp(DivideGame());

class DivideGame extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "MathDivide!",
      home: Scaffold(
        body: App(),
      ),
    );
  }
}

class App extends StatefulWidget {
  AppState createState() => AppState();
}

class AppState extends State<App> {
  @override
  Widget build(BuildContext context) {
    return Stack(
      children: <Widget>[
        NumberTile(Offset(0.0, 0.0), "Tile"),
        Center(
          child: Container(
            height: 350.0,
            width: 350.0,
            color: Colors.teal,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: <Widget>[
                GameSquare(),
                GameSquare(),
                GameSquare(),
              ],
            ),
          ),
        ),
      ],
    );
  }
}
