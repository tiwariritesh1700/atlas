import 'package:atlas/common/app_database.dart';
import 'package:atlas/database/moor_model/master_moor_model.dart';
import 'package:moor/moor.dart';

part 'master_dao.g.dart';

@UseDao(tables: [MasterMoorModel])
class MasterDAO extends DatabaseAccessor<AppDatabase> with _$MasterDAOMixin {
  final AppDatabase db;

  MasterDAO(this.db) : super(db);

  //INSERT

  Future insertMasterData(MasterMoorModelData masterMoorModelData) async {
    try {
    await  deleteMasterData(masterMoorModelData);
      int id = await into(db.masterMoorModel).insert(masterMoorModelData);
       return id;
    } catch (e) {
      updateMasterData(masterMoorModelData);
      print(e);
    }
  }

//UPDATE
  Future updateMasterData(MasterMoorModelData masterMoorModelData) async {
    try {
      var id = await update(db.masterMoorModel).replace(masterMoorModelData);
      return id;
    } catch (e) {
      print(e);
    }
  }

//GET ALL MASTER DATA

  Future getAllMasterData() async {
    try {
      return await select(db.masterMoorModel).get();
    } catch (e) {
      print(e);
    }
  }

//GET SINGLE MASTER DATA
  Future getSingleMasterData() async {
    try {
      return await select(db.masterMoorModel).getSingleOrNull();
    } catch (e) {
      print(e);
    }
  }

  //DELETE MASTER DATA

  Future deleteMasterData(MasterMoorModelData masterMoorModelData) async {
    try {
      return await delete(db.masterMoorModel).delete(masterMoorModelData);
    } catch (e) {
      print(e);
    }
  }


}
