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

  Contact.fromJson(Map<String, dynamic> json)
      : id = json['id'] ?? 0,
        nome = json['name'],
        numeroConta = json['accountNumber'];

  Map<String, dynamic> toJson() => {
        'name': nome,
        'accountNumber': numeroConta,
      };
}
