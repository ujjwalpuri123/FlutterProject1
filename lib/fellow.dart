import 'package:flutter/material.dart';

void main() {
  runApp(Fellow());
}

class Fellow extends StatelessWidget {
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
              padding:
                  const EdgeInsets.symmetric(horizontal: 10, vertical: 200),
              child: Column(
                children: [
                  GestureDetector(
                      onTap: () {
                        // Navigator.push(
                        //   context,
                        //   MaterialPageRoute(builder: (context) => AccountM()),
                        // );
                      },
                      child: _rowElement("Privacy Policy", Icons.person)),
                  Divider(
                    color: Colors.white,
                  ),
                  _rowElement("Terms of Service", Icons.check_box),
                  Divider(
                    color: Colors.white,
                  ),
                  _rowElement("Data Disclaimer", Icons.check_box),
                  Divider(
                    color: Colors.white,
                  ),
                  _rowElement("Rate Us", Icons.check_box),
                  Divider(
                    color: Colors.white,
                  ),
                  _rowElement("Follow Us", Icons.check_box),
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
