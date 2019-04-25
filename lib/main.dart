import 'package:flutter/material.dart';

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
    return Center(
      child: Container(
        padding: EdgeInsets.all(10.0),
        height: 350.0,
        width: 350.0,
        color: Colors.teal,
        child: Stack(
          children: <Widget>[
            Positioned(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: <Widget>[
                  Container(
                    color: Colors.black,
                    height: 75.0,
                    width: 75.0,
                  ),
                  Container(
                    color: Colors.black,
                    height: 75.0,
                    width: 75.0,
                  ),
                  Container(
                    color: Colors.black,
                    height: 75.0,
                    width: 75.0,
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
