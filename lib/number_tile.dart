import 'package:flutter/material.dart';

class NumberTile extends StatefulWidget {
  final String label;
  static const Color color = Colors.red;

  NumberTile(this.label);

  @override
  _NumberTileState createState() => _NumberTileState();

  String getLabel() => label;
  Color getColor() => color;
}

class _NumberTileState extends State<NumberTile> {
  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Draggable(
      data: widget,
      child: ClipRRect(
        borderRadius: BorderRadius.circular(15.0),
        child: Container(
          height: 75.0,
          width: 75.0,
          color: Colors.red,
          child: Center(
            child: Text(
              widget.label,
              style: TextStyle(
                color: Colors.white,
                decoration: TextDecoration.none,
                fontSize: 15.0,
              ),
            ),
          ),
        ),
      ),
      childWhenDragging: Container(),
      feedback: ClipRRect(
        borderRadius: BorderRadius.circular(15.0),
        child: Container(
          height: 80.0,
          width: 80.0,
          color: Colors.red.withOpacity(0.5),
        ),
      ),
    );
  }
}
