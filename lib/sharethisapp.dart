import 'package:flutter/material.dart';

void main() {
  runApp(Sharethisapp());
}

class Sharethisapp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text("Share This App"),
          backgroundColor: Colors.indigo[900],
        ),
        backgroundColor: Colors.indigo[900],
        body: SafeArea(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[],
          ),
        ),
      ),
    );
  }
}
