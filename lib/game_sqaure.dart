import 'package:flutter/material.dart';

class GameSquare extends StatefulWidget {
  @override
  _GameSquareState createState() => _GameSquareState();
}

class _GameSquareState extends State<GameSquare> {
  String word = "";

  @override
  Widget build(BuildContext context) {
    return DragTarget(onAccept: (String data) {
      word = data;
    }, builder: (
      BuildContext context,
      List<dynamic> accepted,
      List<dynamic> rejected,
    ) {
      return Container(
        color: Colors.black,
        // height: 70.0,
        // width: 70.0,
        child: Center(
          child: Text(
            word,
            style: TextStyle(color: Colors.white, fontSize: 18.0),
          ),
        ),
      );
    });
  }
}
