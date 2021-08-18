import 'package:bytebank_dashboard/http/webclient.dart';
import 'package:bytebank_dashboard/models/transaction.dart';
import 'package:bytebank_dashboard/screens/dashboard.dart';
import 'package:flutter/material.dart';

import 'models/contact.dart';

void main() {
  runApp(BytebankDashboardApp());
  save(Transaction(3890.00, Contact(0, 'Rosalia', 3567)))
      .then((transaction) => print(transaction));
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
