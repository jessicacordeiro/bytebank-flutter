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
              Padding(
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
                            Icons.people,
                            color: Colors.white,
                            size: 60.0,
                          ),
                          Text(
                            'Contatos',
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 20.0,
                            ),
                          )
                        ],
                      ),
                    ),
                  ),
                ),
              )
            ]));
  }
}
