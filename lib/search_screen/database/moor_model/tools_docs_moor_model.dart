import 'package:moor/moor.dart';

class ToolsDocMoorModel extends Table{

  TextColumn get id => text().nullable()();
  TextColumn get image => text().nullable()();
  TextColumn get imageName => text().nullable()();
  TextColumn get toolsDataID => text().customConstraint(
      'NULL REFERENCES tools_moor_model (id) ON DELETE RESTRICT')();

  @override
  Set<Column>? get primaryKey => {id};

}