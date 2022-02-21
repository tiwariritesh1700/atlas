import 'package:atlas/common/app_database.dart';
import 'package:atlas/search_screen/database/moor_model/tools_docs_moor_model.dart';
import 'package:moor/moor.dart';

part 'tools_docs_dao.g.dart';

@UseDao(tables: [ToolsDocMoorModel])
class ToolsDocDAO extends DatabaseAccessor<AppDatabase> with _$ToolsDocDAOMixin{

  final AppDatabase db;

  ToolsDocDAO(this.db) : super(db);



  //INSERT

  Future insertToolDocsData(ToolsDocMoorModelData toolsMoorModelData) async {
    try {
      int id = await into(db.toolsDocMoorModel).insert(toolsMoorModelData);
      return id;
    } catch (e) {
      updateToolDocData(toolsMoorModelData);
      print(e);
    }
  }

//UPDATE
  Future updateToolDocData(ToolsDocMoorModelData toolsDocMoorModelData) async {
    try {
      var id = await update(db.toolsDocMoorModel).replace(toolsDocMoorModelData);
      return id;
    } catch (e) {
      print(e);
    }
  }

//GET ALL MASTER DATA

  Future getAllToolDocData() async {
    try {
      return await select(db.toolsDocMoorModel).get();
    } catch (e) {
      print(e);
    }
  }


  Future getAllToolsDataByToolModelID(String toolsID) async {
    try {
      return await (select(db.toolsDocMoorModel)..where((tbl) => tbl.toolsDataID.equals(toolsID))).get();
    } catch (e) {
      print(e);
    }
  }

//GET SINGLE MASTER DATA
  Future getSingleToolDocData() async {
    try {
      return await select(db.toolsDocMoorModel).getSingleOrNull();
    } catch (e) {
      print(e);
    }
  }

  //DELETE MASTER DATA

  Future deleteToolDocData(ToolsDocMoorModelData toolDocMoorModelData) async {
    try {
      return await delete(db.toolsDocMoorModel).delete(toolDocMoorModelData);
    } catch (e) {
      print(e);
    }


  }



}