import 'package:moor/moor.dart';

class FaultCodesMoorModel extends Table{


  TextColumn get id => text().nullable()();
  TextColumn get code => text().nullable()();
  TextColumn get codeID => text().nullable()();
  TextColumn get languageID => text().nullable()();
  TextColumn get title => text().nullable()();
  TextColumn get description => text().nullable()();
  TextColumn get faultEqImage => text().nullable()();
  TextColumn get videoType => text().nullable()();
  TextColumn get videoLink => text().nullable()();
  TextColumn get equipmentID => text().nullable()();
  TextColumn get causes => text().nullable()();
  TextColumn get solutions => text().nullable()();
  TextColumn get fixes => text().nullable()();


  @override
  Set<Column>? get primaryKey => {id};
}