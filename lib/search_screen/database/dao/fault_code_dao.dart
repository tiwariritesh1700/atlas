import 'package:atlas/common/app_database.dart';
import 'package:atlas/search_screen/database/moor_model/fault_codes_moor_model.dart';
import 'package:moor/moor.dart';

part 'fault_code_dao.g.dart';

@UseDao(tables: [FaultCodesMoorModel])
class FaultCodeDAO extends DatabaseAccessor<AppDatabase> with _$FaultCodeDAOMixin{

  final AppDatabase db;

  FaultCodeDAO(this.db) : super(db);




  //INSERT

  Future insertFaultCodesData(FaultCodesMoorModelData faultCodesMoorModelData) async {
    try {
      int id = await into(db.faultCodesMoorModel).insert(faultCodesMoorModelData);
      return id;
    } catch (e) {
      updateFaultCodesData(faultCodesMoorModelData);
      print(e);
    }
  }

//UPDATE
  Future updateFaultCodesData(FaultCodesMoorModelData faultCodesMoorModelData) async {
    try {
      var id = await update(db.faultCodesMoorModel).replace(faultCodesMoorModelData);
      return id;
    } catch (e) {
      print(e);
    }
  }

//GET ALL MASTER DATA

  Future getAllFaultCodeData() async {
    try {
      return await select(db.faultCodesMoorModel).get();
    } catch (e) {
      print(e);
    }
  }

  //GET ALL MASTER DATA

  Future getAllFaultCodeByLanguageID(String codeID) async {
    try {
   var list  =  await select(db.faultCodesMoorModel).get();
      return await (select(db.faultCodesMoorModel)..where((tbl) => tbl.code.equals(codeID))).get();
    } catch (e) {
      print(e);
    }
  }

//GET SINGLE MASTER DATA
  Future getSingleFaultCodeData() async {
    try {
      return await select(db.faultCodesMoorModel).getSingleOrNull();
    } catch (e) {
      print(e);
    }
  }

  //DELETE MASTER DATA

  Future deleteFaultCodeData(FaultCodesMoorModelData faultCodesMoorModelData) async {
    try {
      return await delete(db.faultCodesMoorModel).delete(faultCodesMoorModelData);
    } catch (e) {
      print(e);
    }
  }


}