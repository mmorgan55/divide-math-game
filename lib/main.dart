import 'package:flutter/material.dart';
import 'numberTile.dart';

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
  String word1 = "";
  String word2 = "";
  String word3 = "";

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
              //TODO Move code into separate widget.
              //TODO Find way to change text of tile, or put tile in DragTarget.
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: <Widget>[
                DragTarget(onAccept: (String data) {
                  word1 = data;
                }, builder: (
                  BuildContext context,
                  List<dynamic> accepted,
                  List<dynamic> rejected,
                ) {
                  return Container(
                    color: Colors.black,
                    height: 75.0,
                    width: 75.0,
                    child: Center(
                      child: Text(
                        word1,
                        style: TextStyle(color: Colors.white, fontSize: 18.0),
                      ),
                    ),
                  );
                }),
                DragTarget(onAccept: (String data) {
                  word2 = data;
                }, builder: (
                  BuildContext context,
                  List<dynamic> accepted,
                  List<dynamic> rejected,
                ) {
                  return Container(
                    color: Colors.black,
                    height: 75.0,
                    width: 75.0,
                    child: Center(
                      child: Text(
                        word2,
                        style: TextStyle(color: Colors.white, fontSize: 18.0),
                      ),
                    ),
                  );
                }),
                DragTarget(onAccept: (String data) {
                  word3 = data;
                }, builder: (
                  BuildContext context,
                  List<dynamic> accepted,
                  List<dynamic> rejected,
                ) {
                  return Container(
                    color: Colors.black,
                    height: 75.0,
                    width: 75.0,
                    child: Center(
                      child: Text(
                        word3,
                        style: TextStyle(color: Colors.white, fontSize: 18.0),
                      ),
                    ),
                  );
                }),
              ],
            ),
          ),
        ),
      ],
    );
  }
}
