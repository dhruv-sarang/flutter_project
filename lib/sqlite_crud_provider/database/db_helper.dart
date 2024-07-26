import 'package:path/path.dart';
import 'package:sqflite/sqflite.dart';

import '../model/task.dart';

class DbHelper {
  static const DB_NAME = 'task.db';
  static const DB_VERSION = 1;

  // table
  static const TBL_TASK = 'tasks';

  // Columns
  static final COL_ID = 'id';
  static final COL_TITLE = 'title';
  static final COL_DESC = 'description';

  static DbHelper _instance = DbHelper._internal();

  // factory constructor
  factory DbHelper() {
    return _instance;
  }

  static Database? _database;

  DbHelper._internal();

  Future<Database?> getDatabase() async {
    _database ??= await createDatabase();
    return _database;
  }

  Future<Database?> createDatabase() async {
    var dbPath = await getDatabasesPath();

    var path = join(dbPath, DB_NAME);

    return await openDatabase(
      path,
      version: 1,
      onCreate: (db, version) async {
        return await db.execute('CREATE TABLE $TBL_TASK('
            '$COL_ID INTEGER PRIMARY KEY AUTOINCREMENT, '
            '$COL_TITLE TEXT NOT NULL, '
            '$COL_DESC TEXT NOT NULL)');
      },
    );
  }

  Future<int> insertTask(Task task) async {
    Database? db = await getDatabase();
    if (db != null) {
      return db.insert(TBL_TASK, task.toMap());
    }
    return -1;
  }

  Future<int> updateTask(Task task) async {
    Database? db = await getDatabase();

    if (db != null) {
      return db.update(TBL_TASK, task.toMap(),
          where: "$COL_ID = ?", whereArgs: [task.id]);
    }
    return 0;
  }

  Future<List<Task>> getAllRecords() async {
    Database? db = await getDatabase();

    List<Map<String, dynamic>> mapList =
    await db!.query(TBL_TASK, orderBy: "$COL_ID");

    /*List<Map<String, dynamic>> mapList = await db!
        .rawQuery('SELECT * FROM $TBL_USER ORDER BY $COL_CREATED_AT DESC');*/

    return List.generate(
        mapList.length, (index) => Task.fromMap(mapList[index]))
        .toList(); // converting map object into dart object
  }

  Future<int> deleteRecord(int id) async {
    Database? db = await getDatabase();
    return db!.delete(TBL_TASK, where: '$COL_ID = ?', whereArgs: [id]);
  }
}
