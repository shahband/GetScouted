import 'package:untitled5/report.dart';
import 'package:path/path.dart';
import 'package:sqflite/sqflite.dart';

class DatabaseHelper {

  static final _databaseName = "report.db";
  static final _databaseVersion = 1;

  static final table = 'reports_table';

  static final columnId = 'id';
  static final columnName = 'name';
  static final columnAttribute1 = 'aerialability';
  static final columnAttribute2 = 'personalsense';
  static final columnAttribute3 = 'decisionmaking';
  static final columnAttribute4 = 'agility';
  static final columnAttribute5 = 'workrate';
  static final columnAttribute6 = 'tackling';
  static final columnAttribute7 = 'interception';
  static final columnAttribute8 = 'passing';
  static final columnAttribute9 = 'shooting';
  static final columnAttribute10 = 'dribbling';
  static final columnAttribute11 = 'killfinal';
  static final columnAttribute12 = 'finishing';
  static final columnAttribute13 = 'skills';
  static final columnPosition = 'position';
  static final columnNotes = 'notes';


  DatabaseHelper._privateConstructor();
  static final DatabaseHelper instance = DatabaseHelper._privateConstructor();


  static Database? _database;
  Future<Database> get database async =>
    _database ??=await _initDatabase();


  Future<Database> _initDatabase() async {
    String path = join(await getDatabasesPath(), _databaseName);
    return await openDatabase(path,
        version: _databaseVersion,
        onCreate: _onCreate);
  }


  Future _onCreate(Database db, int version) async {
    await db.execute('''
          CREATE TABLE $table (
            $columnId INTEGER PRIMARY KEY AUTOINCREMENT,
            $columnName TEXT NOT NULL,
            $columnAttribute1 INTEGER NOT NULL,
            $columnAttribute2 INTEGER NOT NULL,
            $columnAttribute3 INTEGER NOT NULL,
            $columnAttribute4 INTEGER NOT NULL,
            $columnAttribute5 INTEGER NOT NULL,
            $columnAttribute6 INTEGER NOT NULL,
            $columnAttribute7 INTEGER NOT NULL,
            $columnAttribute8 INTEGER NOT NULL,
            $columnAttribute9 INTEGER NOT NULL,
            $columnAttribute10 INTEGER NOT NULL,
            $columnAttribute11 INTEGER NOT NULL,
            $columnAttribute12 INTEGER NOT NULL,
            $columnAttribute13 INTEGER NOT NULL,
            $columnPosition TEXT NULL,
            $columnNotes TEXT NOT NULL,

          )
          ''');
  }



  Future<int> insert(Report report) async {
    Database db = await instance.database;
    return await db.insert(table, {'name': report.name, 'aerialability': report.attribute1, 'positionalsense': report.attribute2, 'decisionmaking': report.attribute3, 'agility': report.attribute4, 'workrate': report.attribute5, 'tackling': report.attribute6,  'interception': report.attribute7, 'passing': report.attribute8, 'shooting': report.attribute9, 'dribbling': report.attribute10, 'killfinal': report.attribute11, 'finishing': report.attribute12, 'skills': report.attribute13, 'position': report.position, 'notes': report.notes});
  }


  Future<List<Map<String, dynamic>>> queryAllRows() async {
    Database db = await instance.database;
    return await db.query(table);
  }


  Future<List<Map<String, dynamic>>> queryRows(name) async {
    Database db = await instance.database;
    return await db.query(table, where: "$columnName LIKE '%$name%'");
  }


  //Future<int> queryRowCount() async {
  //  Database db = await instance.database;
  //  return Sqflite.firstIntValue(await db.rawQuery('SELECT COUNT(*) FROM $table'));
  //}

  Future<int?> queryRowCount() async {
    Database db = await this.database;
    var x = await db.rawQuery('SELECT COUNT (*) from $table');
        int? count = Sqflite.firstIntValue(x);
    return count;
  }


  Future<int> update(Report report) async {
    Database db = await instance.database;
    int id = report.toMap()['id'];
    return await db.update(table, report.toMap(), where: '$columnId = ?', whereArgs: [id]);
  }


  Future<int> delete(int id) async {
    Database db = await instance.database;
    return await db.delete(table, where: '$columnId = ?', whereArgs: [id]);
  }
}