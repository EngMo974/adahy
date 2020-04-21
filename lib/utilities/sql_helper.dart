import 'package:flutter/material.dart';
import 'package:sqflite/sqflite.dart';
import 'dart:async';
import 'package:path_provider/path_provider.dart';
import 'dart:io';
import 'package:adahy/models/scarfi_model.dart';

class SQL_Helper {
  static SQL_Helper dbHelper;
  static Database _database;

  SQL_Helper._createInstant();

  factory SQL_Helper() {
    if (dbHelper == null) {
      dbHelper = SQL_Helper._createInstant();
    }
    return dbHelper;
  }

  String tableName = 'Scarfi_table';

  String _id = 'id';

  String _img = 'img';

  double _wieght = 0;

  String _store = 'store';

  String _desc = 'desc';

  String _dateTime = 'dateTime';

  Future<Database> get database async {
    if (_database == null) {
      _database = await initializedDatabase();
    }
  }

  Future<Database> initializedDatabase() async {
    Directory directory = await getApplicationDocumentsDirectory();
    String path = directory.path + "scarfis.db";
    var scarfiDB =
        await openDatabase(path, version: 1, onCreate: createDatabase);
    return scarfiDB;
  }

  void createDatabase(Database db, int version) async {
    await db.execute(
        "CREATE TABLE $tableName($_id INTEGER PRIMARY KEY AUTOINCREMENT, $_img TEXT,$_wieght REAL,$_store TEXT, $_desc TEXT,$_dateTime NUMERIC ");
  }

  Future<List<Map<String, dynamic>>> getScarfiMapList() async {
    Database db = await this.database;
    var result = await db.query(tableName, orderBy: "$_id ASC");
    return result;
  }

  Future<int> insertScarfi(Scarfi scarfi) async {
    Database db = await this.database;
    var result = await db.insert(tableName, scarfi.toMap());
    return result;
  }

  Future<int> getCount() async {
    Database db = await this.database;
    List<Map<String, dynamic>> all =
        await db.rawQuery("SELECT COUNT (*) from $tableName");
    int result = Sqflite.firstIntValue(all);
    return result;
  }
}
