import 'package:flutter/material.dart';

void main() => runApp(BytebankDashboardApp());

class BytebankDashboardApp extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold (
        appBar: AppBar(title: Text('Dashboard'),
        ),
        body: Column(
          children: <Widget> [
            Image.network('https://i.imgur.com/HMo3p2t.png')
          ]
        )
      ),
    );
  }
}