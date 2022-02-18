import 'dart:io';

import 'package:atlas/communication/database/dao/communication_dao.dart';
import 'package:atlas/communication/database/moor_model/communication_moor_model.dart';
import 'package:atlas/database/dao/master_dao.dart';
import 'package:atlas/language/database/moor_model/language_moor_model.dart';
import 'package:atlas/database/moor_model/master_moor_model.dart';
import 'package:atlas/language/database/dao/language_dao.dart';
import 'package:moor/ffi.dart';
import 'package:path/path.dart' as p;

import 'package:moor/moor.dart';
import 'package:path_provider/path_provider.dart';
part 'app_database.g.dart';

@UseMoor(tables: [MasterMoorModel,LanguageMoorModel,CommunicationMoorModel],daos: [
MasterDAO,LanguageDAO,CommunicationDAO
])
class AppDatabase extends _$AppDatabase{
  AppDatabase(QueryExecutor e) : super(e);
  int get schemaVersion => 1;

}

LazyDatabase openConnection() {
  // the LazyDatabase util lets us find the right location for the file async.
  return LazyDatabase(() async {
    // put the database file, called db.sqlite here, into the documpuents folder
    // for your app.
    final dbFolder = await getApplicationDocumentsDirectory();
    final file = File(p.join(dbFolder.path, 'farriers_app.sqlite"'));
    return VmDatabase(file);
  });
}
