import 'package:flutter/material.dart';

void main() {
  runApp(Logout());
}

class Logout extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text("Logout"),
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
