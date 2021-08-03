import 'package:bytebank_dashboard/screens/contacts_form.dart';
import 'package:bytebank_dashboard/screens/contacts_list.dart';
import 'package:bytebank_dashboard/screens/dashboard.dart';
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
          backgroundColor: Colors.indigo[900],
        )),
      ),
      home: ContactForm(),
    );
  }
}