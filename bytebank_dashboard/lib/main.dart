import 'package:flutter/material.dart';

void main() => runApp(BytebankDashboardApp());

class BytebankDashboardApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        primaryColor: Colors.orange[800],
        elevatedButtonTheme: ElevatedButtonThemeData(
            style: TextButton.styleFrom(
          backgroundColor: Colors.blue[900],
        )),
      ),
      home: Scaffold(
          appBar: AppBar(
            title: Text('ByteBank'),
          ),
          body: Column(children: <Widget>[
            Image.asset('images/logo-people.png'),
            Container(
              height: 120,
              width: 100,
              color: Colors.blue[900],
              child: Column(
                children: <Widget>[
                  Icon(Icons.people), 
                  Text('Contatos')
                ],
              ),
            )
          ])),
    );
  }
}
