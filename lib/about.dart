import 'package:flutter/material.dart';

void main() {
  runApp(About());
}

class About extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text("About Sanduk"),
          backgroundColor: Colors.indigo[900],
        ),
        backgroundColor: Colors.indigo[900],
        body: SafeArea(
          child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 20),
              child: Column(
                children: [
                  GestureDetector(
                      onTap: () {
                        // Navigator.push(
                        //   context,
                        //   MaterialPageRoute(builder: (context) => AccountM()),
                        // );
                      },
                      child: _rowElement("Facebook", Icons.person)),
                  Divider(
                    color: Colors.white,
                  ),
                  _rowElement("Instagram", Icons.check_box),
                  Divider(
                    color: Colors.white,
                  ),
                ],
              )),
        ),
      ),
    );
  }

  Widget _rowElement(String rowName, IconData icon) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Icon(icon),
            SizedBox(width: 10),
            Text(
              rowName,
              style: TextStyle(color: Colors.white),
            ),
          ],
        ),
        Icon(Icons.arrow_right),
      ],
    );
  }
}
