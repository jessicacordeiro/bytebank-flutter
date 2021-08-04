class Contact {
  final int id;
  final String nome;
  final int numeroConta;

  Contact(
    this.id,
    this.nome,
    this.numeroConta,
  );

  @override
  String toString() {
    return 'Contact{id: $id, nome: $nome, numeroConta: $numeroConta}';
  }
}
