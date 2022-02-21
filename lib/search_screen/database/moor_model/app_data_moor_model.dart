
import 'package:moor/moor.dart';

class AppDataMoorModel extends Table{

  TextColumn get id => text().nullable()();
  TextColumn get languageName => text().nullable()();
  TextColumn get languageIcon => text().nullable()();
  TextColumn get privacyPolicy => text().nullable()();
  TextColumn get termsAndConditions => text().nullable()();


  @override
  Set<Column>? get primaryKey => {id};

}