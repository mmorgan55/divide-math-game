import 'package:flutter/material.dart';

class GameSquare extends StatefulWidget {
  @override
  _GameSquareState createState() => _GameSquareState();
}

class _GameSquareState extends State<GameSquare> {
  String word = "";
  Color caughtColor = Colors.black;
  bool hasData = false;

  @override
  Widget build(BuildContext context) {
    return DragTarget(onAccept: (List data) {
      word = data[0];
      caughtColor = data[1];
      hasData = true;
    }, builder: (
      BuildContext context,
      List<dynamic> candidateData,
      List<dynamic> rejected,
    ) {
      return ClipRRect(
        borderRadius: BorderRadius.circular(15.0),
        child: Container(
          color: checkData(hasData, candidateData),
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

Color checkData(bool hasData, List<dynamic> data) {
  if (hasData) {
    return Colors.red;
  } else {
    return data.isEmpty ? Colors.black : Colors.black45;
  }
}
