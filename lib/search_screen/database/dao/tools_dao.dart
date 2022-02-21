import 'package:atlas/common/app_database.dart';
import 'package:atlas/search_screen/database/moor_model/tools_moor_model.dart';
import 'package:moor/moor.dart';

part 'tools_dao.g.dart';

@UseDao(tables: [ToolsMoorModel])
class ToolsDataDAO extends DatabaseAccessor<AppDatabase> with _$ToolsDataDAOMixin{

  final AppDatabase db;

  ToolsDataDAO(this.db) : super(db);



  //INSERT

  Future insertToolsData(ToolsMoorModelData toolsMoorModelData) async {
    try {
      int id = await into(db.toolsMoorModel).insert(toolsMoorModelData);
      return id;
    } catch (e) {
      updateToolsData(toolsMoorModelData);
      print(e);
    }
  }

//UPDATE
  Future updateToolsData(ToolsMoorModelData toolsMoorModelData) async {
    try {
      var id = await update(db.toolsMoorModel).replace(toolsMoorModelData);
      return id;
    } catch (e) {
      print(e);
    }
  }

//GET ALL MASTER DATA

  Future getAllToolsData() async {
    try {
      return await select(db.toolsMoorModel).get();
    } catch (e) {
      print(e);
    }
  }

  //GET ALL MASTER DATA

  Future getAllToolsDataByLanguageID(String languageID) async {
    try {
      return await (select(db.toolsMoorModel)..where((tbl) => tbl.appDataID.equals(languageID))).get();
    } catch (e) {
      print(e);
    }
  }

//GET SINGLE MASTER DATA
  Future getSingleToolsData() async {
    try {
      return await select(db.toolsMoorModel).getSingleOrNull();
    } catch (e) {
      print(e);
    }
  }

  //DELETE MASTER DATA

  Future deleteToolsData(ToolsMoorModelData toolsMoorModelData) async {
    try {
      return await delete(db.toolsMoorModel).delete(toolsMoorModelData);
    } catch (e) {
      print(e);
    }
  }




}