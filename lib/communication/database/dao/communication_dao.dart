import 'package:atlas/common/app_database.dart';
import 'package:atlas/communication/database/moor_model/communication_moor_model.dart';
import 'package:moor/moor.dart';

part 'communication_dao.g.dart';

@UseDao(tables: [CommunicationMoorModel])
class CommunicationDAO extends DatabaseAccessor<AppDatabase>
    with _$CommunicationDAOMixin {
  final AppDatabase db;

  CommunicationDAO(this.db) : super(db);

  //INSERT

  Future insertCommunicationData(
      CommunicationMoorModelData communicationMoorModelData) async {
    try {
      int id = await into(db.communicationMoorModel)
          .insert(communicationMoorModelData);
      return id;
    } catch (e) {
      updateCommunicationData(communicationMoorModelData);
      print(e);
    }
  }

//UPDATE
  Future updateCommunicationData(
      CommunicationMoorModelData communicationMoorModelData) async {
    try {
      var id = await update(db.communicationMoorModel)
          .replace(communicationMoorModelData);
      return id;
    } catch (e) {
      print(e);
    }
  }

//GET ALL MASTER DATA

  Future getAllCommunicationData() async {
    try {
      return await select(db.communicationMoorModel).get();
    } catch (e) {
      print(e);
    }
  }

//GET SINGLE MASTER DATA
  Future getSingleCommunicationDataBaseOnID(String id) async {
    try {
      return select(db.communicationMoorModel)
        ..where((tbl) => tbl.id.equals(id));
    } catch (e) {
      print(e);
    }
  }

  //DELETE MASTER DATA
  Future deleteCommunicationData(
      CommunicationMoorModelData communicationMoorModelData) async {
    try {
      return await delete(db.communicationMoorModel)
          .delete(communicationMoorModelData);
    } catch (e) {
      print(e);
    }
  }
}
