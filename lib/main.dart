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
  String word = '';
  @override
  Widget build(BuildContext context) {
    return Stack(
      children: <Widget>[
        NumberTile(Offset(0.0, 0.0), "Tile"),
        Center(
          child: Container(
            padding: EdgeInsets.all(10.0),
            height: 350.0,
            width: 350.0,
            color: Colors.teal,
            child: Row(
              //TODO Move code into separate widget.
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: <Widget>[
                DragTarget(onAccept: (String string) {
                  word = string;
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
                        accepted.isEmpty ? word : '',
                      ),
                    ),
                  );
                }),
                DragTarget(builder: (
                  BuildContext context,
                  List<dynamic> accepted,
                  List<dynamic> rejected,
                ) {
                  return Container(
                    color: Colors.black,
                    height: 75.0,
                    width: 75.0,
                  );
                }),
                DragTarget(builder: (
                  BuildContext context,
                  List<dynamic> accepted,
                  List<dynamic> rejected,
                ) {
                  return Container(
                    color: Colors.black,
                    height: 75.0,
                    width: 75.0,
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
