class Contact {
  final String nome;
  final int numeroConta;

  Contact(
    this.nome,
    this.numeroConta,
  );

  @override
  String toString() {
    return 'Contact{nome: $nome, numeroConta: $numeroConta}';
  }
}
