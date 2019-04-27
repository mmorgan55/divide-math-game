import 'package:flutter/material.dart';

class NumberTile extends StatefulWidget {
  final Offset initPos;
  final String label;

  NumberTile(this.initPos, this.label);

  @override
  _NumberTileState createState() => _NumberTileState();
}

class _NumberTileState extends State<NumberTile> {
  Offset position = Offset(0.0, 0.0);

  @override
  void initState() {
    super.initState();
    position = widget.initPos;
  }

  @override
  Widget build(BuildContext context) {
    return Positioned(
      left: position.dx,
      top: position.dy,
      child: Draggable(
        data: widget.label,
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
        onDraggableCanceled: (velocity, offset) {
          setState(() {
            position = offset;
          });
        },
        childWhenDragging: Container(),
        feedback: Container(
          height: 75.0,
          width: 75.0,
          color: Colors.red.withOpacity(0.5),
        ),
      ),
    );
  }
}
