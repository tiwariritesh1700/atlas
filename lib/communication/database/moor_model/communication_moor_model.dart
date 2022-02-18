
import 'package:moor/moor.dart';

class CommunicationMoorModel extends Table{


  TextColumn get id => text().nullable()();
  TextColumn get tittle => text().nullable()();
  TextColumn get createdBy => text().nullable()();
  IntColumn get modifiedBy => integer().nullable()();


  @override
  Set<Column>? get primaryKey => {id};

}