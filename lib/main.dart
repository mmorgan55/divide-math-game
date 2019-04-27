import 'package:flutter/material.dart';
import 'number_tile.dart';
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
  List<List<GameSquare>> gameBoard = List.generate(4, (i) {
    return List.generate(4, (j) {
      GameSquare();
    });
  });

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
              child: GridView.builder(
                physics: NeverScrollableScrollPhysics(),
                padding: EdgeInsets.all(5.0),
                gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 4,
                    mainAxisSpacing: 5.0,
                    crossAxisSpacing: 5.0),
                itemBuilder: (context, position) {
                  return Container(
                    child: GameSquare(),
                  );
                },
                itemCount: 16,
              )),
        ),
      ],
    );
  }
}
