import 'package:moor/moor.dart';

class LanguageMoorModel extends Table{

  TextColumn get status => text().nullable()();
  TextColumn get name => text().nullable()();
  TextColumn get icon => text().nullable()();
  TextColumn get modifiedBy => text().nullable()();
  TextColumn get id => text().nullable()();

  @override
  Set<Column>? get primaryKey => {id};
}