import 'package:flutter/material.dart';
import 'package:flutter_application_1/about.dart';
import 'package:flutter_application_1/fellow.dart';
import 'package:flutter_application_1/helpsupport.dart';
import 'package:flutter_application_1/logout.dart';
import 'package:flutter_application_1/myreferal.dart';
import 'package:flutter_application_1/sharethisapp.dart';
import 'AccountM.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatelessWidget {
  const MyHomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Settings"),
        backgroundColor: Colors.indigo[900],
      ),
      backgroundColor: Colors.indigo[900],
      body: SafeArea(
        child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 10),
            child: Column(
              children: [
                GestureDetector(
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => AccountM()),
                      );
                    },
                    child: _rowElement("Account Management", Icons.person)),
                Divider(
                  color: Colors.white,
                ),
                GestureDetector(
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => Myreferal()),
                      );
                    },
                    child: _rowElement("My Referal", Icons.check_box)),
                Divider(
                  color: Colors.white,
                ),
                GestureDetector(
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => Fellow()),
                      );
                    },
                    child: _rowElement(
                        "My information", Icons.watch_later_outlined)),
                Divider(
                  color: Colors.white,
                ),
                _rowElement("My information", Icons.watch_later_rounded),
                Divider(
                  color: Colors.white,
                ),
                GestureDetector(
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => About()),
                      );
                    },
                    child: _rowElement("About", Icons.mic)),
                Divider(
                  color: Colors.white,
                ),
                GestureDetector(
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => Helpsupport()),
                      );
                    },
                    child: _rowElement("Help & Support", Icons.message)),
                Divider(
                  color: Colors.white,
                ),
                GestureDetector(
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => Sharethisapp()),
                      );
                    },
                    child: _rowElement("Share This App", Icons.share)),
                Divider(
                  color: Colors.white,
                ),
                GestureDetector(
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => Logout()),
                      );
                    },
                    child: _rowElement("logout", Icons.logout)),
              ],
            )),
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
