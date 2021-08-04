import 'package:bytebank_dashboard/models/contact.dart';
import 'package:path/path.dart';
import 'package:sqflite/sqflite.dart';

Future<Database> getDatabase() async {
  final String path = join(await getDatabasesPath, 'bytebank.db');
  return openDatabase(
    path,
    onCreate: (db, version) {
      db.execute('CREATE TABLE contacts('
          'id INTEGER PRIMARY KEY, '
          'nome TEXT, '
          'numero_conta INTEGER)');
    },
    version: 1,
    onDowngrade: onDatabaseDowngradeDelete,
  );
}

/* return getDatabasesPath().then((dbPath) {
    final String path = join(dbPath, 'bytebank.db');
    return openDatabase(path, onCreate: (db, version) {
      db.execute('CREATE TABLE contacts('
          'id INTEGER PRIMARY KEY, '
          'nome TEXT, '
          'numero_conta INTEGER)');
    }, version: 1,
    onDowngrade: onDatabaseDowngradeDelete, 
    );
  });
}*/

Future<int> save(Contact contact) async {
  final Database db = await getDatabase();
  final Map<String, dynamic> contactMap = Map();
  contactMap['nome'] = contact.nome;
  contactMap['numero_conta'] = contact.numeroConta;
  return db.insert('contacts', contactMap);
}
/*  return createDatabase().then((db) {
    final Map<String, dynamic> contactMap = Map();
    contactMap['nome'] = contact.nome;
    contactMap['numero_conta'] = contact.numeroConta;
    return db.insert('contacts', contactMap);
  });*/

Future<List<Contact>> findAll() async {
  final Database db = await getDatabase();
  final List<Map<String, dynamic>> result = await db.query('contacts');
  final List<Contact> contacts = [];
  for (Map<String, dynamic> row in result) {
    final Contact contact = Contact(
      row['id'],
      row['nome'],
      row['numero_conta'],
    );
    contacts.add(contact);
  }
  return contacts;
}

/*  return createDatabase().then((db) {
    return db.query('contacts').then((maps) {
      final List<Contact> contacts = [];
      for (Map<String, dynamic> map in maps) {
        final Contact contact = Contact(
          map['id'],
          map['nome'],
          map['numero_conta'],
        );
        contacts.add(contact);
      }
      return contacts;
    });
  });*/
