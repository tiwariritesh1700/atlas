
import 'package:atlas/common/app_database.dart';
import 'package:atlas/language/database/moor_model/language_moor_model.dart';
import 'package:moor/moor.dart';

part 'language_dao.g.dart';

@UseDao(tables: [LanguageMoorModel])
class LanguageDAO extends DatabaseAccessor<AppDatabase> with _$LanguageDAOMixin{
  final AppDatabase db;
  LanguageDAO(this.db) : super(db);


  //INSERT

  Future insertLanguageData(LanguageMoorModelData languageMoorModelData) async {
    try {
      int id = await into(db.languageMoorModel).insert(languageMoorModelData);
      return id;
    } catch (e) {
      updateLanguageData(languageMoorModelData);
      print(e);
    }
  }

//UPDATE
  Future updateLanguageData(LanguageMoorModelData languageMoorModelData) async {
    try {
      var id = await update(db.languageMoorModel).replace(languageMoorModelData);
      return id;
    } catch (e) {
      print(e);
    }
  }

//GET ALL MASTER DATA

  Future getAllLanguageData() async {
    try {
      return await select(db.languageMoorModel).get();
    } catch (e) {
      print(e);
    }
  }

//GET SINGLE MASTER DATA
  Future getSingleLanguageDataBaseOnID(String id) async {
    try {
      return select(db.languageMoorModel)
        ..where((tbl) => tbl.id.equals(id));
    } catch (e) {
      print(e);
    }
  }

  //DELETE MASTER DATA

  Future deleteLanguageData(LanguageMoorModelData languageMoorModelData) async {
    try {
      return await delete(db.languageMoorModel).delete(languageMoorModelData);
    } catch (e) {
      print(e);
    }
  }
}