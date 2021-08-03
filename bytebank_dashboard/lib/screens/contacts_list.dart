import 'package:flutter/material.dart';

class ContactsList extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Contatos',
          style: TextStyle(
            fontSize: 30.0,
          ),
        ),
      ),
      body: ListView(
        children: <Widget>[
          Card(
            child: ListTile(
              title: Text(
                'Jessica',
                style: TextStyle(
                  fontSize: 24.0,
                ),
              ),
              subtitle: Text(
                '0062',
                style: TextStyle(
                  fontSize: 20.0,
                ),
              ),
            ),
          )
        ],
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        child: Icon(
          Icons.add,
        ),
      ),
    );
  }
}
