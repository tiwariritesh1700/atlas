import 'dart:io';

import 'package:atlas/communication/database/dao/communication_dao.dart';
import 'package:atlas/communication/database/moor_model/communication_moor_model.dart';
import 'package:atlas/database/dao/master_dao.dart';
import 'package:atlas/language/database/moor_model/language_moor_model.dart';
import 'package:atlas/database/moor_model/master_moor_model.dart';
import 'package:atlas/language/database/dao/language_dao.dart';
import 'package:atlas/search_screen/database/dao/app_data_dao.dart';
import 'package:atlas/search_screen/database/dao/fault_code_dao.dart';
import 'package:atlas/search_screen/database/dao/tools_dao.dart';
import 'package:atlas/search_screen/database/dao/tools_docs_dao.dart';
import 'package:atlas/search_screen/database/moor_model/app_data_moor_model.dart';
import 'package:atlas/search_screen/database/moor_model/fault_codes_moor_model.dart';
import 'package:atlas/search_screen/database/moor_model/tools_docs_moor_model.dart';
import 'package:atlas/search_screen/database/moor_model/tools_moor_model.dart';
import 'package:moor/ffi.dart';
import 'package:path/path.dart' as p;

import 'package:moor/moor.dart';
import 'package:path_provider/path_provider.dart';
part 'app_database.g.dart';

@UseMoor(tables: [MasterMoorModel,LanguageMoorModel,CommunicationMoorModel,AppDataMoorModel,ToolsMoorModel,ToolsDocMoorModel,FaultCodesMoorModel],daos: [
MasterDAO,LanguageDAO,CommunicationDAO,AppDataDAO,ToolsDataDAO,ToolsDocDAO,FaultCodeDAO
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
