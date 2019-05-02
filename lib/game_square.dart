import 'package:flutter/material.dart';
import 'number_tile.dart';

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
    return DragTarget<NumberTile>(
      onAccept: (data) {
        word = data.getLabel();
        caughtColor = data.getColor();
        hasData = true;
      },
      builder: (
        BuildContext context,
        List<dynamic> candidateData,
        List<dynamic> rejected,
      ) {
        return ClipRRect(
          borderRadius: BorderRadius.circular(15.0),
          child: Container(
            height: 100.0,
            width: 100.0,
            color: _checkData(hasData, candidateData),
            child: Center(
              child: Text(
                word,
                style: TextStyle(color: Colors.white, fontSize: 18.0),
              ),
            ),
          ),
        );
      },
    );
  }
}

class HoldSquare extends StatefulWidget {
  @override
  _HoldSquareState createState() => _HoldSquareState();
}

class _HoldSquareState extends State<HoldSquare> {
  @override
  Widget build(BuildContext context) {
    NumberTile heldTile;
    String word = "";
    bool hasTile = false;

    return DragTarget<NumberTile>(onAccept: (data) {
      heldTile = data;
    }, builder: (
      BuildContext context,
      List<dynamic> candidateData,
      List<dynamic> rejected,
    ) {
      return ClipRRect(
        borderRadius: BorderRadius.circular(15.0),
        child: Container(
          height: 100.0,
          width: 100.0,
          color: _checkData(hasTile, candidateData),
          child: Center(
            child: heldTile,
          ),
        ),
      );
    });
  }
}

Color _checkData(bool hasData, List<dynamic> data) {
  if (hasData) {
    return Colors.red;
  } else {
    return data.isEmpty ? Colors.black : Colors.black45;
  }
}
