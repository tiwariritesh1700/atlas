import 'package:moor/moor.dart';

class ToolsMoorModel extends Table{


  TextColumn get id => text().nullable()();
  TextColumn get appDataID => text().customConstraint(
      'NULL REFERENCES app_data_moor_model (id) ON DELETE RESTRICT')();
  TextColumn get name => text().nullable()();
  TextColumn get image => text().nullable()();
  TextColumn get description => text().nullable()();
  TextColumn get videoLink => text().nullable()();
  TextColumn get insightImages => text().nullable()();

}