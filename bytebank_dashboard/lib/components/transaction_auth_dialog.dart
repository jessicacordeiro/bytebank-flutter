import 'package:flutter/material.dart';

class TransactionAuthDialog extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return AlertDialog(
      title: Text('Autenticação'),
      content: TextField(
        obscureText: true,
        maxLength: 4,
        decoration: InputDecoration(
          border: OutlineInputBorder(),
        ),
        textAlign: TextAlign.center,
        keyboardType: TextInputType.number,
        style: TextStyle(fontSize: 64, letterSpacing: 25),
      ),
      actions: <Widget>[
        TextButton(
          onPressed: () {
            print('Cancelar');
          },
          child: Text('Cancelar'),
        ),
        TextButton(
          onPressed: () {
            print('Confirmar');
          },
          child: Text('Confirme'),
        ),
      ],
    );
  }
}
