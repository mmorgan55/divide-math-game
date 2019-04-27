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
      List<dynamic> candidateData,
      List<dynamic> rejected,
    ) {
      return ClipRRect(
        borderRadius: BorderRadius.circular(15.0),
        child: Container(
          color: candidateData.isEmpty ? Colors.black : Colors.black45,
          child: Center(
            child: Text(
              word,
              style: TextStyle(color: Colors.white, fontSize: 18.0),
            ),
          ),
        ),
      );
    });
  }
}
