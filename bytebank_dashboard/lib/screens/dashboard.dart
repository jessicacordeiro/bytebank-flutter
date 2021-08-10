import 'package:bytebank_dashboard/screens/contacts_list.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Dashboard extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text(
            'ByteBank',
            style: TextStyle(
              fontSize: 30.0,
            ),
          ),
        ),
        body: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              Image.asset('images/logo-people.png'),
              Row(
                children: [
                  _FeatureItem(
                    'Transferir',
                    Icons.monetization_on,
                  ),
                  _FeatureItem(
                    'Tranferências Realizadas',
                    Icons.description,
                  ),
                ],
              ),
            ]));
  }
}

class _FeatureItem extends StatelessWidget {
  final String name;
  final IconData icon;

  _FeatureItem(this.name, this.icon);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Material(
        color: Colors.indigo[900],
        child: InkWell(
          onTap: () {
            Navigator.of(context).push(
              MaterialPageRoute(builder: (context) => ContactsList()),
            );
          },
          child: Container(
            padding: EdgeInsets.all(8.0),
            height: 120,
            width: 150,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: <Widget>[
                Icon(
                  icon,
                  color: Colors.white,
                  size: 30.0,
                ),
                Text(
                  name,
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 16.0,
                    letterSpacing: 2,
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
