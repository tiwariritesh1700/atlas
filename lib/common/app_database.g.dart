// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'app_database.dart';

// **************************************************************************
// MoorGenerator
// **************************************************************************

// ignore_for_file: unnecessary_brace_in_string_interps, unnecessary_this
class MasterMoorModelData extends DataClass
    implements Insertable<MasterMoorModelData> {
  final int id;
  final String? status;
  final String? message;
  final String? privacyPolicyLink;
  final String? termsAndConditionLink;
  final String? faqLink;
  MasterMoorModelData(
      {required this.id,
      this.status,
      this.message,
      this.privacyPolicyLink,
      this.termsAndConditionLink,
      this.faqLink});
  factory MasterMoorModelData.fromData(
      Map<String, dynamic> data, GeneratedDatabase db,
      {String? prefix}) {
    final effectivePrefix = prefix ?? '';
    return MasterMoorModelData(
      id: const IntType()
          .mapFromDatabaseResponse(data['${effectivePrefix}id'])!,
      status: const StringType()
          .mapFromDatabaseResponse(data['${effectivePrefix}status']),
      message: const StringType()
          .mapFromDatabaseResponse(data['${effectivePrefix}message']),
      privacyPolicyLink: const StringType().mapFromDatabaseResponse(
          data['${effectivePrefix}privacy_policy_link']),
      termsAndConditionLink: const StringType().mapFromDatabaseResponse(
          data['${effectivePrefix}terms_and_condition_link']),
      faqLink: const StringType()
          .mapFromDatabaseResponse(data['${effectivePrefix}faq_link']),
    );
  }
  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    map['id'] = Variable<int>(id);
    if (!nullToAbsent || status != null) {
      map['status'] = Variable<String?>(status);
    }
    if (!nullToAbsent || message != null) {
      map['message'] = Variable<String?>(message);
    }
    if (!nullToAbsent || privacyPolicyLink != null) {
      map['privacy_policy_link'] = Variable<String?>(privacyPolicyLink);
    }
    if (!nullToAbsent || termsAndConditionLink != null) {
      map['terms_and_condition_link'] =
          Variable<String?>(termsAndConditionLink);
    }
    if (!nullToAbsent || faqLink != null) {
      map['faq_link'] = Variable<String?>(faqLink);
    }
    return map;
  }

  MasterMoorModelCompanion toCompanion(bool nullToAbsent) {
    return MasterMoorModelCompanion(
      id: Value(id),
      status:
          status == null && nullToAbsent ? const Value.absent() : Value(status),
      message: message == null && nullToAbsent
          ? const Value.absent()
          : Value(message),
      privacyPolicyLink: privacyPolicyLink == null && nullToAbsent
          ? const Value.absent()
          : Value(privacyPolicyLink),
      termsAndConditionLink: termsAndConditionLink == null && nullToAbsent
          ? const Value.absent()
          : Value(termsAndConditionLink),
      faqLink: faqLink == null && nullToAbsent
          ? const Value.absent()
          : Value(faqLink),
    );
  }

  factory MasterMoorModelData.fromJson(Map<String, dynamic> json,
      {ValueSerializer? serializer}) {
    serializer ??= moorRuntimeOptions.defaultSerializer;
    return MasterMoorModelData(
      id: serializer.fromJson<int>(json['id']),
      status: serializer.fromJson<String?>(json['status']),
      message: serializer.fromJson<String?>(json['message']),
      privacyPolicyLink:
          serializer.fromJson<String?>(json['privacyPolicyLink']),
      termsAndConditionLink:
          serializer.fromJson<String?>(json['termsAndConditionLink']),
      faqLink: serializer.fromJson<String?>(json['faqLink']),
    );
  }
  @override
  Map<String, dynamic> toJson({ValueSerializer? serializer}) {
    serializer ??= moorRuntimeOptions.defaultSerializer;
    return <String, dynamic>{
      'id': serializer.toJson<int>(id),
      'status': serializer.toJson<String?>(status),
      'message': serializer.toJson<String?>(message),
      'privacyPolicyLink': serializer.toJson<String?>(privacyPolicyLink),
      'termsAndConditionLink':
          serializer.toJson<String?>(termsAndConditionLink),
      'faqLink': serializer.toJson<String?>(faqLink),
    };
  }

  MasterMoorModelData copyWith(
          {int? id,
          String? status,
          String? message,
          String? privacyPolicyLink,
          String? termsAndConditionLink,
          String? faqLink}) =>
      MasterMoorModelData(
        id: id ?? this.id,
        status: status ?? this.status,
        message: message ?? this.message,
        privacyPolicyLink: privacyPolicyLink ?? this.privacyPolicyLink,
        termsAndConditionLink:
            termsAndConditionLink ?? this.termsAndConditionLink,
        faqLink: faqLink ?? this.faqLink,
      );
  @override
  String toString() {
    return (StringBuffer('MasterMoorModelData(')
          ..write('id: $id, ')
          ..write('status: $status, ')
          ..write('message: $message, ')
          ..write('privacyPolicyLink: $privacyPolicyLink, ')
          ..write('termsAndConditionLink: $termsAndConditionLink, ')
          ..write('faqLink: $faqLink')
          ..write(')'))
        .toString();
  }

  @override
  int get hashCode => $mrjf($mrjc(
      id.hashCode,
      $mrjc(
          status.hashCode,
          $mrjc(
              message.hashCode,
              $mrjc(privacyPolicyLink.hashCode,
                  $mrjc(termsAndConditionLink.hashCode, faqLink.hashCode))))));
  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      (other is MasterMoorModelData &&
          other.id == this.id &&
          other.status == this.status &&
          other.message == this.message &&
          other.privacyPolicyLink == this.privacyPolicyLink &&
          other.termsAndConditionLink == this.termsAndConditionLink &&
          other.faqLink == this.faqLink);
}

class MasterMoorModelCompanion extends UpdateCompanion<MasterMoorModelData> {
  final Value<int> id;
  final Value<String?> status;
  final Value<String?> message;
  final Value<String?> privacyPolicyLink;
  final Value<String?> termsAndConditionLink;
  final Value<String?> faqLink;
  const MasterMoorModelCompanion({
    this.id = const Value.absent(),
    this.status = const Value.absent(),
    this.message = const Value.absent(),
    this.privacyPolicyLink = const Value.absent(),
    this.termsAndConditionLink = const Value.absent(),
    this.faqLink = const Value.absent(),
  });
  MasterMoorModelCompanion.insert({
    this.id = const Value.absent(),
    this.status = const Value.absent(),
    this.message = const Value.absent(),
    this.privacyPolicyLink = const Value.absent(),
    this.termsAndConditionLink = const Value.absent(),
    this.faqLink = const Value.absent(),
  });
  static Insertable<MasterMoorModelData> custom({
    Expression<int>? id,
    Expression<String?>? status,
    Expression<String?>? message,
    Expression<String?>? privacyPolicyLink,
    Expression<String?>? termsAndConditionLink,
    Expression<String?>? faqLink,
  }) {
    return RawValuesInsertable({
      if (id != null) 'id': id,
      if (status != null) 'status': status,
      if (message != null) 'message': message,
      if (privacyPolicyLink != null) 'privacy_policy_link': privacyPolicyLink,
      if (termsAndConditionLink != null)
        'terms_and_condition_link': termsAndConditionLink,
      if (faqLink != null) 'faq_link': faqLink,
    });
  }

  MasterMoorModelCompanion copyWith(
      {Value<int>? id,
      Value<String?>? status,
      Value<String?>? message,
      Value<String?>? privacyPolicyLink,
      Value<String?>? termsAndConditionLink,
      Value<String?>? faqLink}) {
    return MasterMoorModelCompanion(
      id: id ?? this.id,
      status: status ?? this.status,
      message: message ?? this.message,
      privacyPolicyLink: privacyPolicyLink ?? this.privacyPolicyLink,
      termsAndConditionLink:
          termsAndConditionLink ?? this.termsAndConditionLink,
      faqLink: faqLink ?? this.faqLink,
    );
  }

  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    if (id.present) {
      map['id'] = Variable<int>(id.value);
    }
    if (status.present) {
      map['status'] = Variable<String?>(status.value);
    }
    if (message.present) {
      map['message'] = Variable<String?>(message.value);
    }
    if (privacyPolicyLink.present) {
      map['privacy_policy_link'] = Variable<String?>(privacyPolicyLink.value);
    }
    if (termsAndConditionLink.present) {
      map['terms_and_condition_link'] =
          Variable<String?>(termsAndConditionLink.value);
    }
    if (faqLink.present) {
      map['faq_link'] = Variable<String?>(faqLink.value);
    }
    return map;
  }

  @override
  String toString() {
    return (StringBuffer('MasterMoorModelCompanion(')
          ..write('id: $id, ')
          ..write('status: $status, ')
          ..write('message: $message, ')
          ..write('privacyPolicyLink: $privacyPolicyLink, ')
          ..write('termsAndConditionLink: $termsAndConditionLink, ')
          ..write('faqLink: $faqLink')
          ..write(')'))
        .toString();
  }
}

class $MasterMoorModelTable extends MasterMoorModel
    with TableInfo<$MasterMoorModelTable, MasterMoorModelData> {
  final GeneratedDatabase _db;
  final String? _alias;
  $MasterMoorModelTable(this._db, [this._alias]);
  final VerificationMeta _idMeta = const VerificationMeta('id');
  late final GeneratedColumn<int?> id = GeneratedColumn<int?>(
      'id', aliasedName, false,
      typeName: 'INTEGER',
      requiredDuringInsert: false,
      defaultConstraints: 'PRIMARY KEY AUTOINCREMENT');
  final VerificationMeta _statusMeta = const VerificationMeta('status');
  late final GeneratedColumn<String?> status = GeneratedColumn<String?>(
      'status', aliasedName, true,
      typeName: 'TEXT', requiredDuringInsert: false);
  final VerificationMeta _messageMeta = const VerificationMeta('message');
  late final GeneratedColumn<String?> message = GeneratedColumn<String?>(
      'message', aliasedName, true,
      typeName: 'TEXT', requiredDuringInsert: false);
  final VerificationMeta _privacyPolicyLinkMeta =
      const VerificationMeta('privacyPolicyLink');
  late final GeneratedColumn<String?> privacyPolicyLink =
      GeneratedColumn<String?>('privacy_policy_link', aliasedName, true,
          typeName: 'TEXT', requiredDuringInsert: false);
  final VerificationMeta _termsAndConditionLinkMeta =
      const VerificationMeta('termsAndConditionLink');
  late final GeneratedColumn<String?> termsAndConditionLink =
      GeneratedColumn<String?>('terms_and_condition_link', aliasedName, true,
          typeName: 'TEXT', requiredDuringInsert: false);
  final VerificationMeta _faqLinkMeta = const VerificationMeta('faqLink');
  late final GeneratedColumn<String?> faqLink = GeneratedColumn<String?>(
      'faq_link', aliasedName, true,
      typeName: 'TEXT', requiredDuringInsert: false);
  @override
  List<GeneratedColumn> get $columns =>
      [id, status, message, privacyPolicyLink, termsAndConditionLink, faqLink];
  @override
  String get aliasedName => _alias ?? 'master_moor_model';
  @override
  String get actualTableName => 'master_moor_model';
  @override
  VerificationContext validateIntegrity(
      Insertable<MasterMoorModelData> instance,
      {bool isInserting = false}) {
    final context = VerificationContext();
    final data = instance.toColumns(true);
    if (data.containsKey('id')) {
      context.handle(_idMeta, id.isAcceptableOrUnknown(data['id']!, _idMeta));
    }
    if (data.containsKey('status')) {
      context.handle(_statusMeta,
          status.isAcceptableOrUnknown(data['status']!, _statusMeta));
    }
    if (data.containsKey('message')) {
      context.handle(_messageMeta,
          message.isAcceptableOrUnknown(data['message']!, _messageMeta));
    }
    if (data.containsKey('privacy_policy_link')) {
      context.handle(
          _privacyPolicyLinkMeta,
          privacyPolicyLink.isAcceptableOrUnknown(
              data['privacy_policy_link']!, _privacyPolicyLinkMeta));
    }
    if (data.containsKey('terms_and_condition_link')) {
      context.handle(
          _termsAndConditionLinkMeta,
          termsAndConditionLink.isAcceptableOrUnknown(
              data['terms_and_condition_link']!, _termsAndConditionLinkMeta));
    }
    if (data.containsKey('faq_link')) {
      context.handle(_faqLinkMeta,
          faqLink.isAcceptableOrUnknown(data['faq_link']!, _faqLinkMeta));
    }
    return context;
  }

  @override
  Set<GeneratedColumn> get $primaryKey => {id};
  @override
  MasterMoorModelData map(Map<String, dynamic> data, {String? tablePrefix}) {
    return MasterMoorModelData.fromData(data, _db,
        prefix: tablePrefix != null ? '$tablePrefix.' : null);
  }

  @override
  $MasterMoorModelTable createAlias(String alias) {
    return $MasterMoorModelTable(_db, alias);
  }
}

class LanguageMoorModelData extends DataClass
    implements Insertable<LanguageMoorModelData> {
  final String? status;
  final String? name;
  final String? icon;
  final String? modifiedBy;
  final String? id;
  LanguageMoorModelData(
      {this.status, this.name, this.icon, this.modifiedBy, this.id});
  factory LanguageMoorModelData.fromData(
      Map<String, dynamic> data, GeneratedDatabase db,
      {String? prefix}) {
    final effectivePrefix = prefix ?? '';
    return LanguageMoorModelData(
      status: const StringType()
          .mapFromDatabaseResponse(data['${effectivePrefix}status']),
      name: const StringType()
          .mapFromDatabaseResponse(data['${effectivePrefix}name']),
      icon: const StringType()
          .mapFromDatabaseResponse(data['${effectivePrefix}icon']),
      modifiedBy: const StringType()
          .mapFromDatabaseResponse(data['${effectivePrefix}modified_by']),
      id: const StringType()
          .mapFromDatabaseResponse(data['${effectivePrefix}id']),
    );
  }
  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    if (!nullToAbsent || status != null) {
      map['status'] = Variable<String?>(status);
    }
    if (!nullToAbsent || name != null) {
      map['name'] = Variable<String?>(name);
    }
    if (!nullToAbsent || icon != null) {
      map['icon'] = Variable<String?>(icon);
    }
    if (!nullToAbsent || modifiedBy != null) {
      map['modified_by'] = Variable<String?>(modifiedBy);
    }
    if (!nullToAbsent || id != null) {
      map['id'] = Variable<String?>(id);
    }
    return map;
  }

  LanguageMoorModelCompanion toCompanion(bool nullToAbsent) {
    return LanguageMoorModelCompanion(
      status:
          status == null && nullToAbsent ? const Value.absent() : Value(status),
      name: name == null && nullToAbsent ? const Value.absent() : Value(name),
      icon: icon == null && nullToAbsent ? const Value.absent() : Value(icon),
      modifiedBy: modifiedBy == null && nullToAbsent
          ? const Value.absent()
          : Value(modifiedBy),
      id: id == null && nullToAbsent ? const Value.absent() : Value(id),
    );
  }

  factory LanguageMoorModelData.fromJson(Map<String, dynamic> json,
      {ValueSerializer? serializer}) {
    serializer ??= moorRuntimeOptions.defaultSerializer;
    return LanguageMoorModelData(
      status: serializer.fromJson<String?>(json['status']),
      name: serializer.fromJson<String?>(json['name']),
      icon: serializer.fromJson<String?>(json['icon']),
      modifiedBy: serializer.fromJson<String?>(json['modifiedBy']),
      id: serializer.fromJson<String?>(json['id']),
    );
  }
  @override
  Map<String, dynamic> toJson({ValueSerializer? serializer}) {
    serializer ??= moorRuntimeOptions.defaultSerializer;
    return <String, dynamic>{
      'status': serializer.toJson<String?>(status),
      'name': serializer.toJson<String?>(name),
      'icon': serializer.toJson<String?>(icon),
      'modifiedBy': serializer.toJson<String?>(modifiedBy),
      'id': serializer.toJson<String?>(id),
    };
  }

  LanguageMoorModelData copyWith(
          {String? status,
          String? name,
          String? icon,
          String? modifiedBy,
          String? id}) =>
      LanguageMoorModelData(
        status: status ?? this.status,
        name: name ?? this.name,
        icon: icon ?? this.icon,
        modifiedBy: modifiedBy ?? this.modifiedBy,
        id: id ?? this.id,
      );
  @override
  String toString() {
    return (StringBuffer('LanguageMoorModelData(')
          ..write('status: $status, ')
          ..write('name: $name, ')
          ..write('icon: $icon, ')
          ..write('modifiedBy: $modifiedBy, ')
          ..write('id: $id')
          ..write(')'))
        .toString();
  }

  @override
  int get hashCode => $mrjf($mrjc(
      status.hashCode,
      $mrjc(name.hashCode,
          $mrjc(icon.hashCode, $mrjc(modifiedBy.hashCode, id.hashCode)))));
  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      (other is LanguageMoorModelData &&
          other.status == this.status &&
          other.name == this.name &&
          other.icon == this.icon &&
          other.modifiedBy == this.modifiedBy &&
          other.id == this.id);
}

class LanguageMoorModelCompanion
    extends UpdateCompanion<LanguageMoorModelData> {
  final Value<String?> status;
  final Value<String?> name;
  final Value<String?> icon;
  final Value<String?> modifiedBy;
  final Value<String?> id;
  const LanguageMoorModelCompanion({
    this.status = const Value.absent(),
    this.name = const Value.absent(),
    this.icon = const Value.absent(),
    this.modifiedBy = const Value.absent(),
    this.id = const Value.absent(),
  });
  LanguageMoorModelCompanion.insert({
    this.status = const Value.absent(),
    this.name = const Value.absent(),
    this.icon = const Value.absent(),
    this.modifiedBy = const Value.absent(),
    this.id = const Value.absent(),
  });
  static Insertable<LanguageMoorModelData> custom({
    Expression<String?>? status,
    Expression<String?>? name,
    Expression<String?>? icon,
    Expression<String?>? modifiedBy,
    Expression<String?>? id,
  }) {
    return RawValuesInsertable({
      if (status != null) 'status': status,
      if (name != null) 'name': name,
      if (icon != null) 'icon': icon,
      if (modifiedBy != null) 'modified_by': modifiedBy,
      if (id != null) 'id': id,
    });
  }

  LanguageMoorModelCompanion copyWith(
      {Value<String?>? status,
      Value<String?>? name,
      Value<String?>? icon,
      Value<String?>? modifiedBy,
      Value<String?>? id}) {
    return LanguageMoorModelCompanion(
      status: status ?? this.status,
      name: name ?? this.name,
      icon: icon ?? this.icon,
      modifiedBy: modifiedBy ?? this.modifiedBy,
      id: id ?? this.id,
    );
  }

  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    if (status.present) {
      map['status'] = Variable<String?>(status.value);
    }
    if (name.present) {
      map['name'] = Variable<String?>(name.value);
    }
    if (icon.present) {
      map['icon'] = Variable<String?>(icon.value);
    }
    if (modifiedBy.present) {
      map['modified_by'] = Variable<String?>(modifiedBy.value);
    }
    if (id.present) {
      map['id'] = Variable<String?>(id.value);
    }
    return map;
  }

  @override
  String toString() {
    return (StringBuffer('LanguageMoorModelCompanion(')
          ..write('status: $status, ')
          ..write('name: $name, ')
          ..write('icon: $icon, ')
          ..write('modifiedBy: $modifiedBy, ')
          ..write('id: $id')
          ..write(')'))
        .toString();
  }
}

class $LanguageMoorModelTable extends LanguageMoorModel
    with TableInfo<$LanguageMoorModelTable, LanguageMoorModelData> {
  final GeneratedDatabase _db;
  final String? _alias;
  $LanguageMoorModelTable(this._db, [this._alias]);
  final VerificationMeta _statusMeta = const VerificationMeta('status');
  late final GeneratedColumn<String?> status = GeneratedColumn<String?>(
      'status', aliasedName, true,
      typeName: 'TEXT', requiredDuringInsert: false);
  final VerificationMeta _nameMeta = const VerificationMeta('name');
  late final GeneratedColumn<String?> name = GeneratedColumn<String?>(
      'name', aliasedName, true,
      typeName: 'TEXT', requiredDuringInsert: false);
  final VerificationMeta _iconMeta = const VerificationMeta('icon');
  late final GeneratedColumn<String?> icon = GeneratedColumn<String?>(
      'icon', aliasedName, true,
      typeName: 'TEXT', requiredDuringInsert: false);
  final VerificationMeta _modifiedByMeta = const VerificationMeta('modifiedBy');
  late final GeneratedColumn<String?> modifiedBy = GeneratedColumn<String?>(
      'modified_by', aliasedName, true,
      typeName: 'TEXT', requiredDuringInsert: false);
  final VerificationMeta _idMeta = const VerificationMeta('id');
  late final GeneratedColumn<String?> id = GeneratedColumn<String?>(
      'id', aliasedName, true,
      typeName: 'TEXT', requiredDuringInsert: false);
  @override
  List<GeneratedColumn> get $columns => [status, name, icon, modifiedBy, id];
  @override
  String get aliasedName => _alias ?? 'language_moor_model';
  @override
  String get actualTableName => 'language_moor_model';
  @override
  VerificationContext validateIntegrity(
      Insertable<LanguageMoorModelData> instance,
      {bool isInserting = false}) {
    final context = VerificationContext();
    final data = instance.toColumns(true);
    if (data.containsKey('status')) {
      context.handle(_statusMeta,
          status.isAcceptableOrUnknown(data['status']!, _statusMeta));
    }
    if (data.containsKey('name')) {
      context.handle(
          _nameMeta, name.isAcceptableOrUnknown(data['name']!, _nameMeta));
    }
    if (data.containsKey('icon')) {
      context.handle(
          _iconMeta, icon.isAcceptableOrUnknown(data['icon']!, _iconMeta));
    }
    if (data.containsKey('modified_by')) {
      context.handle(
          _modifiedByMeta,
          modifiedBy.isAcceptableOrUnknown(
              data['modified_by']!, _modifiedByMeta));
    }
    if (data.containsKey('id')) {
      context.handle(_idMeta, id.isAcceptableOrUnknown(data['id']!, _idMeta));
    }
    return context;
  }

  @override
  Set<GeneratedColumn> get $primaryKey => {id};
  @override
  LanguageMoorModelData map(Map<String, dynamic> data, {String? tablePrefix}) {
    return LanguageMoorModelData.fromData(data, _db,
        prefix: tablePrefix != null ? '$tablePrefix.' : null);
  }

  @override
  $LanguageMoorModelTable createAlias(String alias) {
    return $LanguageMoorModelTable(_db, alias);
  }
}

class CommunicationMoorModelData extends DataClass
    implements Insertable<CommunicationMoorModelData> {
  final String? id;
  final String? tittle;
  final String? createdBy;
  final int? modifiedBy;
  CommunicationMoorModelData(
      {this.id, this.tittle, this.createdBy, this.modifiedBy});
  factory CommunicationMoorModelData.fromData(
      Map<String, dynamic> data, GeneratedDatabase db,
      {String? prefix}) {
    final effectivePrefix = prefix ?? '';
    return CommunicationMoorModelData(
      id: const StringType()
          .mapFromDatabaseResponse(data['${effectivePrefix}id']),
      tittle: const StringType()
          .mapFromDatabaseResponse(data['${effectivePrefix}tittle']),
      createdBy: const StringType()
          .mapFromDatabaseResponse(data['${effectivePrefix}created_by']),
      modifiedBy: const IntType()
          .mapFromDatabaseResponse(data['${effectivePrefix}modified_by']),
    );
  }
  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    if (!nullToAbsent || id != null) {
      map['id'] = Variable<String?>(id);
    }
    if (!nullToAbsent || tittle != null) {
      map['tittle'] = Variable<String?>(tittle);
    }
    if (!nullToAbsent || createdBy != null) {
      map['created_by'] = Variable<String?>(createdBy);
    }
    if (!nullToAbsent || modifiedBy != null) {
      map['modified_by'] = Variable<int?>(modifiedBy);
    }
    return map;
  }

  CommunicationMoorModelCompanion toCompanion(bool nullToAbsent) {
    return CommunicationMoorModelCompanion(
      id: id == null && nullToAbsent ? const Value.absent() : Value(id),
      tittle:
          tittle == null && nullToAbsent ? const Value.absent() : Value(tittle),
      createdBy: createdBy == null && nullToAbsent
          ? const Value.absent()
          : Value(createdBy),
      modifiedBy: modifiedBy == null && nullToAbsent
          ? const Value.absent()
          : Value(modifiedBy),
    );
  }

  factory CommunicationMoorModelData.fromJson(Map<String, dynamic> json,
      {ValueSerializer? serializer}) {
    serializer ??= moorRuntimeOptions.defaultSerializer;
    return CommunicationMoorModelData(
      id: serializer.fromJson<String?>(json['id']),
      tittle: serializer.fromJson<String?>(json['tittle']),
      createdBy: serializer.fromJson<String?>(json['createdBy']),
      modifiedBy: serializer.fromJson<int?>(json['modifiedBy']),
    );
  }
  @override
  Map<String, dynamic> toJson({ValueSerializer? serializer}) {
    serializer ??= moorRuntimeOptions.defaultSerializer;
    return <String, dynamic>{
      'id': serializer.toJson<String?>(id),
      'tittle': serializer.toJson<String?>(tittle),
      'createdBy': serializer.toJson<String?>(createdBy),
      'modifiedBy': serializer.toJson<int?>(modifiedBy),
    };
  }

  CommunicationMoorModelData copyWith(
          {String? id, String? tittle, String? createdBy, int? modifiedBy}) =>
      CommunicationMoorModelData(
        id: id ?? this.id,
        tittle: tittle ?? this.tittle,
        createdBy: createdBy ?? this.createdBy,
        modifiedBy: modifiedBy ?? this.modifiedBy,
      );
  @override
  String toString() {
    return (StringBuffer('CommunicationMoorModelData(')
          ..write('id: $id, ')
          ..write('tittle: $tittle, ')
          ..write('createdBy: $createdBy, ')
          ..write('modifiedBy: $modifiedBy')
          ..write(')'))
        .toString();
  }

  @override
  int get hashCode => $mrjf($mrjc(id.hashCode,
      $mrjc(tittle.hashCode, $mrjc(createdBy.hashCode, modifiedBy.hashCode))));
  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      (other is CommunicationMoorModelData &&
          other.id == this.id &&
          other.tittle == this.tittle &&
          other.createdBy == this.createdBy &&
          other.modifiedBy == this.modifiedBy);
}

class CommunicationMoorModelCompanion
    extends UpdateCompanion<CommunicationMoorModelData> {
  final Value<String?> id;
  final Value<String?> tittle;
  final Value<String?> createdBy;
  final Value<int?> modifiedBy;
  const CommunicationMoorModelCompanion({
    this.id = const Value.absent(),
    this.tittle = const Value.absent(),
    this.createdBy = const Value.absent(),
    this.modifiedBy = const Value.absent(),
  });
  CommunicationMoorModelCompanion.insert({
    this.id = const Value.absent(),
    this.tittle = const Value.absent(),
    this.createdBy = const Value.absent(),
    this.modifiedBy = const Value.absent(),
  });
  static Insertable<CommunicationMoorModelData> custom({
    Expression<String?>? id,
    Expression<String?>? tittle,
    Expression<String?>? createdBy,
    Expression<int?>? modifiedBy,
  }) {
    return RawValuesInsertable({
      if (id != null) 'id': id,
      if (tittle != null) 'tittle': tittle,
      if (createdBy != null) 'created_by': createdBy,
      if (modifiedBy != null) 'modified_by': modifiedBy,
    });
  }

  CommunicationMoorModelCompanion copyWith(
      {Value<String?>? id,
      Value<String?>? tittle,
      Value<String?>? createdBy,
      Value<int?>? modifiedBy}) {
    return CommunicationMoorModelCompanion(
      id: id ?? this.id,
      tittle: tittle ?? this.tittle,
      createdBy: createdBy ?? this.createdBy,
      modifiedBy: modifiedBy ?? this.modifiedBy,
    );
  }

  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    if (id.present) {
      map['id'] = Variable<String?>(id.value);
    }
    if (tittle.present) {
      map['tittle'] = Variable<String?>(tittle.value);
    }
    if (createdBy.present) {
      map['created_by'] = Variable<String?>(createdBy.value);
    }
    if (modifiedBy.present) {
      map['modified_by'] = Variable<int?>(modifiedBy.value);
    }
    return map;
  }

  @override
  String toString() {
    return (StringBuffer('CommunicationMoorModelCompanion(')
          ..write('id: $id, ')
          ..write('tittle: $tittle, ')
          ..write('createdBy: $createdBy, ')
          ..write('modifiedBy: $modifiedBy')
          ..write(')'))
        .toString();
  }
}

class $CommunicationMoorModelTable extends CommunicationMoorModel
    with TableInfo<$CommunicationMoorModelTable, CommunicationMoorModelData> {
  final GeneratedDatabase _db;
  final String? _alias;
  $CommunicationMoorModelTable(this._db, [this._alias]);
  final VerificationMeta _idMeta = const VerificationMeta('id');
  late final GeneratedColumn<String?> id = GeneratedColumn<String?>(
      'id', aliasedName, true,
      typeName: 'TEXT', requiredDuringInsert: false);
  final VerificationMeta _tittleMeta = const VerificationMeta('tittle');
  late final GeneratedColumn<String?> tittle = GeneratedColumn<String?>(
      'tittle', aliasedName, true,
      typeName: 'TEXT', requiredDuringInsert: false);
  final VerificationMeta _createdByMeta = const VerificationMeta('createdBy');
  late final GeneratedColumn<String?> createdBy = GeneratedColumn<String?>(
      'created_by', aliasedName, true,
      typeName: 'TEXT', requiredDuringInsert: false);
  final VerificationMeta _modifiedByMeta = const VerificationMeta('modifiedBy');
  late final GeneratedColumn<int?> modifiedBy = GeneratedColumn<int?>(
      'modified_by', aliasedName, true,
      typeName: 'INTEGER', requiredDuringInsert: false);
  @override
  List<GeneratedColumn> get $columns => [id, tittle, createdBy, modifiedBy];
  @override
  String get aliasedName => _alias ?? 'communication_moor_model';
  @override
  String get actualTableName => 'communication_moor_model';
  @override
  VerificationContext validateIntegrity(
      Insertable<CommunicationMoorModelData> instance,
      {bool isInserting = false}) {
    final context = VerificationContext();
    final data = instance.toColumns(true);
    if (data.containsKey('id')) {
      context.handle(_idMeta, id.isAcceptableOrUnknown(data['id']!, _idMeta));
    }
    if (data.containsKey('tittle')) {
      context.handle(_tittleMeta,
          tittle.isAcceptableOrUnknown(data['tittle']!, _tittleMeta));
    }
    if (data.containsKey('created_by')) {
      context.handle(_createdByMeta,
          createdBy.isAcceptableOrUnknown(data['created_by']!, _createdByMeta));
    }
    if (data.containsKey('modified_by')) {
      context.handle(
          _modifiedByMeta,
          modifiedBy.isAcceptableOrUnknown(
              data['modified_by']!, _modifiedByMeta));
    }
    return context;
  }

  @override
  Set<GeneratedColumn> get $primaryKey => {id};
  @override
  CommunicationMoorModelData map(Map<String, dynamic> data,
      {String? tablePrefix}) {
    return CommunicationMoorModelData.fromData(data, _db,
        prefix: tablePrefix != null ? '$tablePrefix.' : null);
  }

  @override
  $CommunicationMoorModelTable createAlias(String alias) {
    return $CommunicationMoorModelTable(_db, alias);
  }
}

abstract class _$AppDatabase extends GeneratedDatabase {
  _$AppDatabase(QueryExecutor e) : super(SqlTypeSystem.defaultInstance, e);
  late final $MasterMoorModelTable masterMoorModel =
      $MasterMoorModelTable(this);
  late final $LanguageMoorModelTable languageMoorModel =
      $LanguageMoorModelTable(this);
  late final $CommunicationMoorModelTable communicationMoorModel =
      $CommunicationMoorModelTable(this);
  late final MasterDAO masterDAO = MasterDAO(this as AppDatabase);
  late final LanguageDAO languageDAO = LanguageDAO(this as AppDatabase);
  late final CommunicationDAO communicationDAO =
      CommunicationDAO(this as AppDatabase);
  @override
  Iterable<TableInfo> get allTables => allSchemaEntities.whereType<TableInfo>();
  @override
  List<DatabaseSchemaEntity> get allSchemaEntities =>
      [masterMoorModel, languageMoorModel, communicationMoorModel];
}
