import 'package:path/path.dart';
import 'package:sqflite/sqflite.dart';
import 'db_utils.dart';
import 'model/db_competition_model.dart';
import 'model/db_record_model.dart';

class DbManager{
  static bool isDebug = true;

  Future<Database>? db;
  List DB_MODEL_CREATION_QUERY = [
    DbRecordModel.TABLE_CREATION_QUERY,
    DbCompetitionModel.TABLE_CREATION_QUERY,

  ];

  List DB_MODEL_DELETE_QUERY = [
    DbRecordModel.NAME,
    DbCompetitionModel.NAME
  ];

  // region Component Function
  init() async {
    db = openDatabase(
      // DB Path
      join(await getDatabasesPath(), DbUtils.NAME),

      // Create table
      onCreate: (db, version) {
        String createQuery = "";

        for(var i = 0 ; i < DB_MODEL_CREATION_QUERY.length ; i++)
          createQuery += DB_MODEL_CREATION_QUERY[i]+"\n";

        if(isDebug==true){
          print(DbRecordModel.TABLE_CREATION_QUERY);
          print(DbCompetitionModel.TABLE_CREATION_QUERY);
        }
        // return db.execute(DbRecordModel.TABLE_CREATION_QUERY);
        return db.execute(createQuery);
      },
      onOpen: (db) async {
        await db.execute("DROP TABLE IF EXISTS ${DbRecordModel.NAME}");
        await db.execute("DROP TABLE IF EXISTS ${DbCompetitionModel.NAME}");

        print(DbRecordModel.TABLE_CREATION_QUERY);
        print(DbCompetitionModel.TABLE_CREATION_QUERY);

        await db.execute(DbCompetitionModel.TABLE_CREATION_QUERY);
        await db.execute(DbRecordModel.TABLE_CREATION_QUERY);

      },

      // Version Control
      version: DbUtils.VERSION,
    );

    return isConnect();
  }

  drop(String tableName) async {
    final Database? _db = await db;
    await _db!.execute("DROP TABLE IF EXISTS $tableName");

  }

  isConnect(){
    if(db == null)  return false;

    return true;
  }

  checkDebugMode() async{
    if(DbUtils.DEBUG_MODE == true){
      final Database? _db = await db;

      for(var i = 0 ; i < DB_MODEL_DELETE_QUERY.length ; i++)
        _db!.execute('Delete from ' + DB_MODEL_DELETE_QUERY[i]);
    }
  }
  // endregion

  // region Action Function
  Future<List> defaultSelect(String tableName, dynamic INFO) async {
    final Database? _db = await db;

    final List<Map<String, dynamic>> maps = await _db!.query(
      tableName,
    );

    return List.generate(maps.length, (i) {
      return INFO(maps[i]).toMap();
    });
  }

  Future<List> select(String tableName, dynamic INFO, var FILTER) async {
    final Database? _db = await db;

    final List<Map<String, dynamic>> maps = await _db!.query(
      tableName,
      where: FILTER['where'],
      whereArgs: FILTER['whereArg'],
      orderBy: FILTER['orderBy'],
      limit: FILTER['limit']
    );

    return List.generate(maps.length, (i) {
      return INFO(maps[i]).toMap();
    });
  }

  void insert(String tableName, dynamic data) async{
    // insert
    final Database? _db = await db;

    await _db!.insert(tableName, data.toMap());
  }

  void update(String tableName, dynamic data, String where, List whereArgs) async{
    // update
    final Database? _db = await db;

    await _db!.update(
        tableName,
        data.toMap(),
        where: where,
        whereArgs: whereArgs
    );

  }

  void delete(String tableName, String where, List whereArgs) async{
    // delete
    final Database? _db = await db;

    await _db!.delete(
        tableName,
        where: where,
        whereArgs: whereArgs
    );
  }

// endregion
}