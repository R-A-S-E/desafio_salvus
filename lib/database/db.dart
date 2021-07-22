import 'package:path/path.dart';
import 'package:sqflite/sqflite.dart';

import 'package:salvus_site/model/contact.dart';

class DatabaseHandler {
  static final DatabaseHandler instance = DatabaseHandler._init();

  static Database? _database;

  DatabaseHandler._init();

  Future<Database> get database async {
    if (_database != null) return _database!;

    _database = await _initDB('contact.db');
    return _database!;
  }

  Future<Database> _initDB(String filePath) async {
    final dbPath = await getDatabasesPath();
    final path = join(dbPath, filePath);

    return await openDatabase(path, version: 1, onCreate: _createDB);
  }

  Future _createDB(Database db, int version) async {
    final idType = 'INTEGER PRIMARY KEY AUTOINCREMENT';
    final textType = 'TEXT';
    await db.execute('''
  CREATE TABLE $tableNotes (
    ${ContactFields.idC} $idType,
    ${ContactFields.nomeC}, $textType,
    ${ContactFields.emailC}, $textType,
    ${ContactFields.senhaC}, $textType,
    ${ContactFields.cpfC}, $textType,
    ${ContactFields.nascimentoC}, $textType,
    ${ContactFields.telefoneC}, $textType,
    ${ContactFields.generoC}, $textType,
    ${ContactFields.cepC}, $textType,
    ${ContactFields.estadoC}, $textType,
    ${ContactFields.cidadeC}, $textType,
    ${ContactFields.ruaC}, $textType,
    ${ContactFields.deslocamentoC}, $textType,
    ${ContactFields.profissaoC}, $textType,
    ${ContactFields.crmC}, $textType,
    ${ContactFields.especialidadeC}, $textType
  )
  ''');
  }

  Future<Contact> create(Contact note) async {
    final db = await instance.database;

    final id = await db.insert(tableNotes, note.toJson());
    return note.copy(id: id);
  }

  Future<Contact> readNote(int id) async {
    final db = await instance.database;

    final maps = await db.query(
      tableNotes,
      columns: ContactFields.values,
      where: '${ContactFields.idC} = ?',
      whereArgs: [id],
    );

    if (maps.isNotEmpty) {
      return Contact.fromJson(maps.first);
    } else {
      throw Exception('ID $id not found');
    }
  }

  Future<List<Contact>> readAllNotes() async {
    final db = await instance.database;

    final orderBy = '${ContactFields.idC} ASC';

    final result = await db.query(tableNotes, orderBy: orderBy);

    return result.map((json) => Contact.fromJson(json)).toList();
  }

  Future<int> update(Contact note) async {
    final db = await instance.database;

    return db.update(
      tableNotes,
      note.toJson(),
      where: '${ContactFields.idC} = ?',
      whereArgs: [note.id],
    );
  }

  Future<int> delete(int id) async {
    final db = await instance.database;

    return await db.delete(
      tableNotes,
      where: '${ContactFields.idC} = ?',
      whereArgs: [id],
    );
  }

  Future close() async {
    final db = await instance.database;

    db.close();
  }
}
