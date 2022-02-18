
import 'package:moor/moor.dart';

class MasterMoorModel extends Table{
  IntColumn get id => integer().autoIncrement()();
  TextColumn get status => text().nullable()();
  TextColumn get message => text().nullable()();
  TextColumn get privacyPolicyLink => text().nullable()();
  TextColumn get termsAndConditionLink => text().nullable()();
  TextColumn get faqLink => text().nullable()();
}