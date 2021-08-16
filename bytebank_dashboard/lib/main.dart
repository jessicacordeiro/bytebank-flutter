import 'package:bytebank_dashboard/http/webclient.dart';
import 'package:bytebank_dashboard/screens/dashboard.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(BytebankDashboardApp());
  findAll().then((transactions) => print('new transactions $transactions'));
}

class BytebankDashboardApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        primaryColor: Colors.orange[800],
        elevatedButtonTheme: ElevatedButtonThemeData(
            style: TextButton.styleFrom(
          backgroundColor: Colors.indigo[900],
        )),
      ),
      home: Dashboard(),
    );
  }
}
