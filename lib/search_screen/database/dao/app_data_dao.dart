

import 'package:atlas/common/app_database.dart';
import 'package:atlas/search_screen/database/moor_model/app_data_moor_model.dart';
import 'package:atlas/search_screen/model/app_data_model.dart';
import 'package:moor/moor.dart';

part 'app_data_dao.g.dart';

@UseDao(tables: [AppDataMoorModel])
class AppDataDAO extends DatabaseAccessor<AppDatabase> with _$AppDataDAOMixin{
final AppDatabase db;

AppDataDAO(this.db) : super(db);



//INSERT

Future insertAppData(AppDataMoorModelData appDataMoorModelData) async {
  try {
    int id = await into(db.appDataMoorModel).insert(appDataMoorModelData);
    return id;
  } catch (e) {
    updateAppData(appDataMoorModelData);
    print(e);
  }
}

//UPDATE
  Future updateAppData(AppDataMoorModelData appDataMoorModelData) async {
    try {
      var id = await update(db.appDataMoorModel).replace(appDataMoorModelData);
      return id;
    } catch (e) {
      print(e);
    }
  }

//GET ALL MASTER DATA

  Future getAllAppData() async {
    try {
      return await select(db.appDataMoorModel).get();
    } catch (e) {
      print(e);
    }
  }

//GET SINGLE MASTER DATA
  Future getSingleAppData() async {
    try {
      return await select(db.appDataMoorModel).getSingleOrNull();
    } catch (e) {
      print(e);
    }
  }

  //DELETE MASTER DATA

  Future deleteAppData(AppDataMoorModelData appDataMoorModelData) async {
    try {
      return await delete(db.appDataMoorModel).delete(appDataMoorModelData);
    } catch (e) {
      print(e);
    }
  }



}