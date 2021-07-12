import 'package:flutter/material.dart';

void main() {
  runApp(AccountM());
}

class AccountM extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text("Account Management"),
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
                          rowName: "BOID Number",
                          icon: Icons.person,
                          subtitle: "1234567890123456")),
                  Divider(
                    color: Colors.white,
                  ),
                  _rowElement(
                      rowName: "Email",
                      icon: Icons.check_box,
                      subtitle: "Ujjwalpuri123@gmail.com"),
                  Divider(
                    color: Colors.white,
                  ),
                  _rowElement(
                      rowName: "Mobile Number",
                      subtitle: "988766665",
                      icon: Icons.watch_later_rounded),
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
