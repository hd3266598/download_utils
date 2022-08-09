import 'dart:io';

import 'package:flutter/foundation.dart';
import 'package:path/path.dart';
import 'package:sqflite/sqflite.dart';
// import 'package:sqflite_common_ffi/sqflite_ffi.dart';

class DbHelper {
  static const TABLE_COMMON_DATA = "shared_values_table";

  static const COLUMN_DATA_KEY = "key";

  static const COLUMN_DATA_VALUE = "value";

  static const CREATE_COMMON_DATA_TABLE = "CREATE TABLE IF NOT EXISTS $TABLE_COMMON_DATA ($COLUMN_DATA_KEY TEXT PRIMARY KEY NOT NULL, $COLUMN_DATA_VALUE TEXT NOT NULL);";

  Database? _db;

  DbHelper._();

  init() async {
    if (_db == null) {
      if (Platform.isWindows) {
        // sqfliteFfiInit();
        // var databaseFactory = databaseFactoryFfi;
        // _db = await databaseFactory.openDatabase(inMemoryDatabasePath,
        //     options: new OpenDatabaseOptions(
        //         version: 1,
        //         onCreate: (Database db, int version) async {
        //           // create the tables
        //           db.execute(CREATE_COMMON_DATA_TABLE);
        //         },
        //         onUpgrade: (Database db, int oldVersion, int newVersion) async {
        //           db.execute("DROP TABLE IF EXISTS " + TABLE_COMMON_DATA);
        //           db.execute(CREATE_COMMON_DATA_TABLE);
        //         }));
      } else {
        var path = await _createNewDb('kv_database.db');
        _db = await openDatabase(path, version: 1, onCreate: (Database db, int version) async {
          // create the tables
          db.execute(CREATE_COMMON_DATA_TABLE);
        }, onUpgrade: (Database db, int oldVersion, int newVersion) async {
          db.execute("DROP TABLE IF EXISTS $TABLE_COMMON_DATA");
          db.execute(CREATE_COMMON_DATA_TABLE);
        });
      }
    }
  }

  //创建数据库
  Future<String> _createNewDb(String dbName) async {
    //获取数据库文件路径
    var dbPath = await getDatabasesPath();

    String path = join(dbPath, dbName);

    if (!await Directory(dirname(path)).exists()) {
      try {
        await Directory(dirname(path)).create(recursive: true);
      } catch (e) {
        if (kDebugMode) {
          print(e);
        }
      }
    }
    return path;
  }

  static DbHelper? _instance;

  static DbHelper getInstance() {
    _instance ??= DbHelper._();
    return _instance!;
  }

  Future<int> _insert<V>(String key, V value) async {
    return await _db?.insert(
            TABLE_COMMON_DATA,
            {
              COLUMN_DATA_KEY: key,
              COLUMN_DATA_VALUE: value,
            },
            conflictAlgorithm: ConflictAlgorithm.replace) ??
        0;
  }

  Future<Object?> _query(String key) async {
    var list = await _db?.query(TABLE_COMMON_DATA, distinct: true, columns: [COLUMN_DATA_VALUE], where: '$COLUMN_DATA_KEY = ?', whereArgs: [key]);
    if (list != null && list.isNotEmpty) {
      return list.first[COLUMN_DATA_VALUE];
    } else {
      return null;
    }
  }

  Future<int> delete(String key) async {
    return await _db?.delete(TABLE_COMMON_DATA, where: '$COLUMN_DATA_KEY = ?', whereArgs: [key]) ?? 0;
  }

  Future<int> _update<V>(String key, V value) async {
    return await _db?.update(TABLE_COMMON_DATA, {COLUMN_DATA_VALUE: value}, where: '$COLUMN_DATA_KEY = ?', whereArgs: [key]) ?? 0;
  }

  //插入或更新数据
  Future<int> add<V>(String key, V value) async {
    var current = await _query(key);
    if (current == null) {
      return await _insert<V>(key, value);
    } else {
      return await _update<V>(key, value);
    }
  }

  //数据库中查询相关数据
  Future<T?> get<T>(String key, T? defaultValue) async {
    var value = await _query(key);
    if (value == null) {
      return defaultValue;
    } else {
      return value as T ?? defaultValue;
    }
  }

  Future close() async => _db?.close();
}
