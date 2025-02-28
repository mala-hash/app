import 'package:path/path.dart';
import 'package:sqflite/sqflite.dart';

class Sqldb {
  initialDb() async {
    String databasePath = await getDatabasesPath();
    String path = join(databasePath, 'app.db'); //path/app
    Database mydb = await openDatabase(path, onCreate: _oncreate);
    return mydb;
  }
}

_oncreate(Database db, int versioin) async {
  //create tables
  await db.execute('''
create table "lessons"(
    id integer autoincrement not null primary key,
    name text not null,
    stde
 )
  ''');
}




// class DatabaseHelper {
//   static final DatabaseHelper _instance = DatabaseHelper._internal();
//   static Database? _database;

//   factory DatabaseHelper() {
//     return _instance;
//   }

//   DatabaseHelper._internal();

//   Future<Database> get database async {
//     if (_database != null) return _database!;
//     _database = await _initDatabase();
//     return _database!;
//   }

//   Future<Database> _initDatabase() async {
//     String path = join(await getDatabasesPath(), 'students.db');
//     return await openDatabase(path, version: 1, onCreate: _onCreate);
//   }

//   Future<void> _onCreate(Database db, int version) async {
//     await db.execute('''
//       CREATE TABLE students(
//         id INTEGER PRIMARY KEY AUTOINCREMENT,
//         name TEXT,
//         phone TEXT
//       )
//     ''');
//   }

//   Future<void> insertStudent(Student student) async {
//     final db = await database;
//     await db.insert('students', student.toMap());
//   }
// }
