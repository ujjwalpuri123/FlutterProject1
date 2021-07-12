import 'package:flutter/material.dart';

void main() {
  runApp(Helpsupport());
}

class Helpsupport extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text("Help & Support"),
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
                        //     context,
                        //     MaterialPageRoute(
                        //         builder: (context) => AccountM()));
                      },
                      child: _rowElement(
                          rowName: "Brokerage Account",
                          icon: Icons.person,
                          subtitle: "1234567890123456")),
                  Divider(
                    color: Colors.white,
                  ),
                  _rowElement(
                      rowName: "Email",
                      icon: Icons.check_box,
                      subtitle: "hakulee@hotmail.com"),
                  Divider(
                    color: Colors.white,
                  ),
                  _rowElement(
                      rowName: "Mobile Number",
                      icon: Icons.watch_later_rounded,
                      subtitle: "7373737379"),
                  Divider(
                    color: Colors.white,
                  ),
                  _rowElement(
                      rowName: "Two-Factor Authentication",
                      icon: Icons.watch_later_rounded),
                  Divider(
                    color: Colors.white,
                  ),
                  _rowElement(rowName: "Trading Password", icon: Icons.mic),
                  Divider(
                    color: Colors.white,
                  ),
                  _rowElement(rowName: "Change Password", icon: Icons.message),
                  Divider(
                    color: Colors.white,
                  ),
                  _rowElement(rowName: "Delete Account", icon: Icons.share),
                  Divider(
                    color: Colors.white,
                  ),
                ],
              )),
        ),
      ),
    );
  }

  Widget _rowElement(
      {required String rowName, required IconData icon, String? subtitle}) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Icon(icon),
            SizedBox(width: 10),
            Column(
              children: [
                Text(
                  rowName,
                  style: TextStyle(color: Colors.white),
                ),
                subtitle == null
                    ? Container()
                    : Column(
                        children: [
                          SizedBox(height: 4),
                          Text(
                            "$subtitle",
                            style: TextStyle(color: Colors.white30),
                          ),
                        ],
                      ),
              ],
            ),
          ],
        ),
        Icon(Icons.arrow_right),
      ],
    );
  }
}
