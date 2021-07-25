import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

void main() => runApp(BytebankApp());

class BytebankApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: FormularioTransferencia(),
      ),
    );
  }
}


class FormularioTransferencia extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
       appBar: AppBar(title: Text('Criando Transferência'),),
        body: Column(
          children: <Widget> [
            Padding(
                padding: const EdgeInsets.all(8.0),
                child: TextField(
                  style: TextStyle(
                      fontSize: 24.0
                  ),
                  decoration: InputDecoration(
                      labelText: 'Número da conta',
                      hintText: '0000'
                  ),
                  keyboardType: TextInputType.number,
                ),
            ),
            Padding(
                padding: const EdgeInsets.all(6.0),
                child: TextField(
                  style: TextStyle(
                      fontSize: 24.0
                  ),
                  decoration: InputDecoration(
                      icon: Icon(Icons.monetization_on),
                      labelText: 'Valor',
                      hintText: '0.00'
                  ),
                  keyboardType: TextInputType.number,
                ),
            ),
            RaisedButton(
              onPressed: () {  },
              child: Text('Confirmar'),
            )
          ],
        ));
  }
}

class ListaTransferencias extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Tranferências'),
      ),
      body: Column(
        children: <Widget> [
          ItemTransferencia(Transferencia(600.0, 0065)),
          ItemTransferencia(Transferencia(100.0, 0665)),
          ItemTransferencia(Transferencia(5690.0, 0069)),
        ],
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {  },
        child: Icon(Icons.add),
      ),
    );
  }
}

class ItemTransferencia extends StatelessWidget {

  final Transferencia _transferencia;

  ItemTransferencia(this._transferencia);

  @override
  Widget build(BuildContext context) {
    return Card(
      child: ListTile(
        leading: Icon(Icons.monetization_on),
        title: Text(_transferencia.valor.toString()),
        subtitle: Text(_transferencia.numeroConta.toString()),
      ),
    );
  }
}

class Transferencia {
  final double valor;
  final int numeroConta;

  Transferencia(this.valor, this.numeroConta);
}