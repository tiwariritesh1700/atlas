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

class AppDataMoorModelData extends DataClass
    implements Insertable<AppDataMoorModelData> {
  final String? id;
  final String? languageName;
  final String? languageIcon;
  final String? privacyPolicy;
  final String? termsAndConditions;
  AppDataMoorModelData(
      {this.id,
      this.languageName,
      this.languageIcon,
      this.privacyPolicy,
      this.termsAndConditions});
  factory AppDataMoorModelData.fromData(
      Map<String, dynamic> data, GeneratedDatabase db,
      {String? prefix}) {
    final effectivePrefix = prefix ?? '';
    return AppDataMoorModelData(
      id: const StringType()
          .mapFromDatabaseResponse(data['${effectivePrefix}id']),
      languageName: const StringType()
          .mapFromDatabaseResponse(data['${effectivePrefix}language_name']),
      languageIcon: const StringType()
          .mapFromDatabaseResponse(data['${effectivePrefix}language_icon']),
      privacyPolicy: const StringType()
          .mapFromDatabaseResponse(data['${effectivePrefix}privacy_policy']),
      termsAndConditions: const StringType().mapFromDatabaseResponse(
          data['${effectivePrefix}terms_and_conditions']),
    );
  }
  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    if (!nullToAbsent || id != null) {
      map['id'] = Variable<String?>(id);
    }
    if (!nullToAbsent || languageName != null) {
      map['language_name'] = Variable<String?>(languageName);
    }
    if (!nullToAbsent || languageIcon != null) {
      map['language_icon'] = Variable<String?>(languageIcon);
    }
    if (!nullToAbsent || privacyPolicy != null) {
      map['privacy_policy'] = Variable<String?>(privacyPolicy);
    }
    if (!nullToAbsent || termsAndConditions != null) {
      map['terms_and_conditions'] = Variable<String?>(termsAndConditions);
    }
    return map;
  }

  AppDataMoorModelCompanion toCompanion(bool nullToAbsent) {
    return AppDataMoorModelCompanion(
      id: id == null && nullToAbsent ? const Value.absent() : Value(id),
      languageName: languageName == null && nullToAbsent
          ? const Value.absent()
          : Value(languageName),
      languageIcon: languageIcon == null && nullToAbsent
          ? const Value.absent()
          : Value(languageIcon),
      privacyPolicy: privacyPolicy == null && nullToAbsent
          ? const Value.absent()
          : Value(privacyPolicy),
      termsAndConditions: termsAndConditions == null && nullToAbsent
          ? const Value.absent()
          : Value(termsAndConditions),
    );
  }

  factory AppDataMoorModelData.fromJson(Map<String, dynamic> json,
      {ValueSerializer? serializer}) {
    serializer ??= moorRuntimeOptions.defaultSerializer;
    return AppDataMoorModelData(
      id: serializer.fromJson<String?>(json['id']),
      languageName: serializer.fromJson<String?>(json['languageName']),
      languageIcon: serializer.fromJson<String?>(json['languageIcon']),
      privacyPolicy: serializer.fromJson<String?>(json['privacyPolicy']),
      termsAndConditions:
          serializer.fromJson<String?>(json['termsAndConditions']),
    );
  }
  @override
  Map<String, dynamic> toJson({ValueSerializer? serializer}) {
    serializer ??= moorRuntimeOptions.defaultSerializer;
    return <String, dynamic>{
      'id': serializer.toJson<String?>(id),
      'languageName': serializer.toJson<String?>(languageName),
      'languageIcon': serializer.toJson<String?>(languageIcon),
      'privacyPolicy': serializer.toJson<String?>(privacyPolicy),
      'termsAndConditions': serializer.toJson<String?>(termsAndConditions),
    };
  }

  AppDataMoorModelData copyWith(
          {String? id,
          String? languageName,
          String? languageIcon,
          String? privacyPolicy,
          String? termsAndConditions}) =>
      AppDataMoorModelData(
        id: id ?? this.id,
        languageName: languageName ?? this.languageName,
        languageIcon: languageIcon ?? this.languageIcon,
        privacyPolicy: privacyPolicy ?? this.privacyPolicy,
        termsAndConditions: termsAndConditions ?? this.termsAndConditions,
      );
  @override
  String toString() {
    return (StringBuffer('AppDataMoorModelData(')
          ..write('id: $id, ')
          ..write('languageName: $languageName, ')
          ..write('languageIcon: $languageIcon, ')
          ..write('privacyPolicy: $privacyPolicy, ')
          ..write('termsAndConditions: $termsAndConditions')
          ..write(')'))
        .toString();
  }

  @override
  int get hashCode => $mrjf($mrjc(
      id.hashCode,
      $mrjc(
          languageName.hashCode,
          $mrjc(languageIcon.hashCode,
              $mrjc(privacyPolicy.hashCode, termsAndConditions.hashCode)))));
  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      (other is AppDataMoorModelData &&
          other.id == this.id &&
          other.languageName == this.languageName &&
          other.languageIcon == this.languageIcon &&
          other.privacyPolicy == this.privacyPolicy &&
          other.termsAndConditions == this.termsAndConditions);
}

class AppDataMoorModelCompanion extends UpdateCompanion<AppDataMoorModelData> {
  final Value<String?> id;
  final Value<String?> languageName;
  final Value<String?> languageIcon;
  final Value<String?> privacyPolicy;
  final Value<String?> termsAndConditions;
  const AppDataMoorModelCompanion({
    this.id = const Value.absent(),
    this.languageName = const Value.absent(),
    this.languageIcon = const Value.absent(),
    this.privacyPolicy = const Value.absent(),
    this.termsAndConditions = const Value.absent(),
  });
  AppDataMoorModelCompanion.insert({
    this.id = const Value.absent(),
    this.languageName = const Value.absent(),
    this.languageIcon = const Value.absent(),
    this.privacyPolicy = const Value.absent(),
    this.termsAndConditions = const Value.absent(),
  });
  static Insertable<AppDataMoorModelData> custom({
    Expression<String?>? id,
    Expression<String?>? languageName,
    Expression<String?>? languageIcon,
    Expression<String?>? privacyPolicy,
    Expression<String?>? termsAndConditions,
  }) {
    return RawValuesInsertable({
      if (id != null) 'id': id,
      if (languageName != null) 'language_name': languageName,
      if (languageIcon != null) 'language_icon': languageIcon,
      if (privacyPolicy != null) 'privacy_policy': privacyPolicy,
      if (termsAndConditions != null)
        'terms_and_conditions': termsAndConditions,
    });
  }

  AppDataMoorModelCompanion copyWith(
      {Value<String?>? id,
      Value<String?>? languageName,
      Value<String?>? languageIcon,
      Value<String?>? privacyPolicy,
      Value<String?>? termsAndConditions}) {
    return AppDataMoorModelCompanion(
      id: id ?? this.id,
      languageName: languageName ?? this.languageName,
      languageIcon: languageIcon ?? this.languageIcon,
      privacyPolicy: privacyPolicy ?? this.privacyPolicy,
      termsAndConditions: termsAndConditions ?? this.termsAndConditions,
    );
  }

  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    if (id.present) {
      map['id'] = Variable<String?>(id.value);
    }
    if (languageName.present) {
      map['language_name'] = Variable<String?>(languageName.value);
    }
    if (languageIcon.present) {
      map['language_icon'] = Variable<String?>(languageIcon.value);
    }
    if (privacyPolicy.present) {
      map['privacy_policy'] = Variable<String?>(privacyPolicy.value);
    }
    if (termsAndConditions.present) {
      map['terms_and_conditions'] = Variable<String?>(termsAndConditions.value);
    }
    return map;
  }

  @override
  String toString() {
    return (StringBuffer('AppDataMoorModelCompanion(')
          ..write('id: $id, ')
          ..write('languageName: $languageName, ')
          ..write('languageIcon: $languageIcon, ')
          ..write('privacyPolicy: $privacyPolicy, ')
          ..write('termsAndConditions: $termsAndConditions')
          ..write(')'))
        .toString();
  }
}

class $AppDataMoorModelTable extends AppDataMoorModel
    with TableInfo<$AppDataMoorModelTable, AppDataMoorModelData> {
  final GeneratedDatabase _db;
  final String? _alias;
  $AppDataMoorModelTable(this._db, [this._alias]);
  final VerificationMeta _idMeta = const VerificationMeta('id');
  late final GeneratedColumn<String?> id = GeneratedColumn<String?>(
      'id', aliasedName, true,
      typeName: 'TEXT', requiredDuringInsert: false);
  final VerificationMeta _languageNameMeta =
      const VerificationMeta('languageName');
  late final GeneratedColumn<String?> languageName = GeneratedColumn<String?>(
      'language_name', aliasedName, true,
      typeName: 'TEXT', requiredDuringInsert: false);
  final VerificationMeta _languageIconMeta =
      const VerificationMeta('languageIcon');
  late final GeneratedColumn<String?> languageIcon = GeneratedColumn<String?>(
      'language_icon', aliasedName, true,
      typeName: 'TEXT', requiredDuringInsert: false);
  final VerificationMeta _privacyPolicyMeta =
      const VerificationMeta('privacyPolicy');
  late final GeneratedColumn<String?> privacyPolicy = GeneratedColumn<String?>(
      'privacy_policy', aliasedName, true,
      typeName: 'TEXT', requiredDuringInsert: false);
  final VerificationMeta _termsAndConditionsMeta =
      const VerificationMeta('termsAndConditions');
  late final GeneratedColumn<String?> termsAndConditions =
      GeneratedColumn<String?>('terms_and_conditions', aliasedName, true,
          typeName: 'TEXT', requiredDuringInsert: false);
  @override
  List<GeneratedColumn> get $columns =>
      [id, languageName, languageIcon, privacyPolicy, termsAndConditions];
  @override
  String get aliasedName => _alias ?? 'app_data_moor_model';
  @override
  String get actualTableName => 'app_data_moor_model';
  @override
  VerificationContext validateIntegrity(
      Insertable<AppDataMoorModelData> instance,
      {bool isInserting = false}) {
    final context = VerificationContext();
    final data = instance.toColumns(true);
    if (data.containsKey('id')) {
      context.handle(_idMeta, id.isAcceptableOrUnknown(data['id']!, _idMeta));
    }
    if (data.containsKey('language_name')) {
      context.handle(
          _languageNameMeta,
          languageName.isAcceptableOrUnknown(
              data['language_name']!, _languageNameMeta));
    }
    if (data.containsKey('language_icon')) {
      context.handle(
          _languageIconMeta,
          languageIcon.isAcceptableOrUnknown(
              data['language_icon']!, _languageIconMeta));
    }
    if (data.containsKey('privacy_policy')) {
      context.handle(
          _privacyPolicyMeta,
          privacyPolicy.isAcceptableOrUnknown(
              data['privacy_policy']!, _privacyPolicyMeta));
    }
    if (data.containsKey('terms_and_conditions')) {
      context.handle(
          _termsAndConditionsMeta,
          termsAndConditions.isAcceptableOrUnknown(
              data['terms_and_conditions']!, _termsAndConditionsMeta));
    }
    return context;
  }

  @override
  Set<GeneratedColumn> get $primaryKey => {id};
  @override
  AppDataMoorModelData map(Map<String, dynamic> data, {String? tablePrefix}) {
    return AppDataMoorModelData.fromData(data, _db,
        prefix: tablePrefix != null ? '$tablePrefix.' : null);
  }

  @override
  $AppDataMoorModelTable createAlias(String alias) {
    return $AppDataMoorModelTable(_db, alias);
  }
}

class ToolsMoorModelData extends DataClass
    implements Insertable<ToolsMoorModelData> {
  final String? id;
  final String appDataID;
  final String? name;
  final String? image;
  final String? description;
  final String? videoLink;
  final String? insightImages;
  ToolsMoorModelData(
      {this.id,
      required this.appDataID,
      this.name,
      this.image,
      this.description,
      this.videoLink,
      this.insightImages});
  factory ToolsMoorModelData.fromData(
      Map<String, dynamic> data, GeneratedDatabase db,
      {String? prefix}) {
    final effectivePrefix = prefix ?? '';
    return ToolsMoorModelData(
      id: const StringType()
          .mapFromDatabaseResponse(data['${effectivePrefix}id']),
      appDataID: const StringType()
          .mapFromDatabaseResponse(data['${effectivePrefix}app_data_i_d'])!,
      name: const StringType()
          .mapFromDatabaseResponse(data['${effectivePrefix}name']),
      image: const StringType()
          .mapFromDatabaseResponse(data['${effectivePrefix}image']),
      description: const StringType()
          .mapFromDatabaseResponse(data['${effectivePrefix}description']),
      videoLink: const StringType()
          .mapFromDatabaseResponse(data['${effectivePrefix}video_link']),
      insightImages: const StringType()
          .mapFromDatabaseResponse(data['${effectivePrefix}insight_images']),
    );
  }
  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    if (!nullToAbsent || id != null) {
      map['id'] = Variable<String?>(id);
    }
    map['app_data_i_d'] = Variable<String>(appDataID);
    if (!nullToAbsent || name != null) {
      map['name'] = Variable<String?>(name);
    }
    if (!nullToAbsent || image != null) {
      map['image'] = Variable<String?>(image);
    }
    if (!nullToAbsent || description != null) {
      map['description'] = Variable<String?>(description);
    }
    if (!nullToAbsent || videoLink != null) {
      map['video_link'] = Variable<String?>(videoLink);
    }
    if (!nullToAbsent || insightImages != null) {
      map['insight_images'] = Variable<String?>(insightImages);
    }
    return map;
  }

  ToolsMoorModelCompanion toCompanion(bool nullToAbsent) {
    return ToolsMoorModelCompanion(
      id: id == null && nullToAbsent ? const Value.absent() : Value(id),
      appDataID: Value(appDataID),
      name: name == null && nullToAbsent ? const Value.absent() : Value(name),
      image:
          image == null && nullToAbsent ? const Value.absent() : Value(image),
      description: description == null && nullToAbsent
          ? const Value.absent()
          : Value(description),
      videoLink: videoLink == null && nullToAbsent
          ? const Value.absent()
          : Value(videoLink),
      insightImages: insightImages == null && nullToAbsent
          ? const Value.absent()
          : Value(insightImages),
    );
  }

  factory ToolsMoorModelData.fromJson(Map<String, dynamic> json,
      {ValueSerializer? serializer}) {
    serializer ??= moorRuntimeOptions.defaultSerializer;
    return ToolsMoorModelData(
      id: serializer.fromJson<String?>(json['id']),
      appDataID: serializer.fromJson<String>(json['appDataID']),
      name: serializer.fromJson<String?>(json['name']),
      image: serializer.fromJson<String?>(json['image']),
      description: serializer.fromJson<String?>(json['description']),
      videoLink: serializer.fromJson<String?>(json['videoLink']),
      insightImages: serializer.fromJson<String?>(json['insightImages']),
    );
  }
  @override
  Map<String, dynamic> toJson({ValueSerializer? serializer}) {
    serializer ??= moorRuntimeOptions.defaultSerializer;
    return <String, dynamic>{
      'id': serializer.toJson<String?>(id),
      'appDataID': serializer.toJson<String>(appDataID),
      'name': serializer.toJson<String?>(name),
      'image': serializer.toJson<String?>(image),
      'description': serializer.toJson<String?>(description),
      'videoLink': serializer.toJson<String?>(videoLink),
      'insightImages': serializer.toJson<String?>(insightImages),
    };
  }

  ToolsMoorModelData copyWith(
          {String? id,
          String? appDataID,
          String? name,
          String? image,
          String? description,
          String? videoLink,
          String? insightImages}) =>
      ToolsMoorModelData(
        id: id ?? this.id,
        appDataID: appDataID ?? this.appDataID,
        name: name ?? this.name,
        image: image ?? this.image,
        description: description ?? this.description,
        videoLink: videoLink ?? this.videoLink,
        insightImages: insightImages ?? this.insightImages,
      );
  @override
  String toString() {
    return (StringBuffer('ToolsMoorModelData(')
          ..write('id: $id, ')
          ..write('appDataID: $appDataID, ')
          ..write('name: $name, ')
          ..write('image: $image, ')
          ..write('description: $description, ')
          ..write('videoLink: $videoLink, ')
          ..write('insightImages: $insightImages')
          ..write(')'))
        .toString();
  }

  @override
  int get hashCode => $mrjf($mrjc(
      id.hashCode,
      $mrjc(
          appDataID.hashCode,
          $mrjc(
              name.hashCode,
              $mrjc(
                  image.hashCode,
                  $mrjc(description.hashCode,
                      $mrjc(videoLink.hashCode, insightImages.hashCode)))))));
  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      (other is ToolsMoorModelData &&
          other.id == this.id &&
          other.appDataID == this.appDataID &&
          other.name == this.name &&
          other.image == this.image &&
          other.description == this.description &&
          other.videoLink == this.videoLink &&
          other.insightImages == this.insightImages);
}

class ToolsMoorModelCompanion extends UpdateCompanion<ToolsMoorModelData> {
  final Value<String?> id;
  final Value<String> appDataID;
  final Value<String?> name;
  final Value<String?> image;
  final Value<String?> description;
  final Value<String?> videoLink;
  final Value<String?> insightImages;
  const ToolsMoorModelCompanion({
    this.id = const Value.absent(),
    this.appDataID = const Value.absent(),
    this.name = const Value.absent(),
    this.image = const Value.absent(),
    this.description = const Value.absent(),
    this.videoLink = const Value.absent(),
    this.insightImages = const Value.absent(),
  });
  ToolsMoorModelCompanion.insert({
    this.id = const Value.absent(),
    required String appDataID,
    this.name = const Value.absent(),
    this.image = const Value.absent(),
    this.description = const Value.absent(),
    this.videoLink = const Value.absent(),
    this.insightImages = const Value.absent(),
  }) : appDataID = Value(appDataID);
  static Insertable<ToolsMoorModelData> custom({
    Expression<String?>? id,
    Expression<String>? appDataID,
    Expression<String?>? name,
    Expression<String?>? image,
    Expression<String?>? description,
    Expression<String?>? videoLink,
    Expression<String?>? insightImages,
  }) {
    return RawValuesInsertable({
      if (id != null) 'id': id,
      if (appDataID != null) 'app_data_i_d': appDataID,
      if (name != null) 'name': name,
      if (image != null) 'image': image,
      if (description != null) 'description': description,
      if (videoLink != null) 'video_link': videoLink,
      if (insightImages != null) 'insight_images': insightImages,
    });
  }

  ToolsMoorModelCompanion copyWith(
      {Value<String?>? id,
      Value<String>? appDataID,
      Value<String?>? name,
      Value<String?>? image,
      Value<String?>? description,
      Value<String?>? videoLink,
      Value<String?>? insightImages}) {
    return ToolsMoorModelCompanion(
      id: id ?? this.id,
      appDataID: appDataID ?? this.appDataID,
      name: name ?? this.name,
      image: image ?? this.image,
      description: description ?? this.description,
      videoLink: videoLink ?? this.videoLink,
      insightImages: insightImages ?? this.insightImages,
    );
  }

  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    if (id.present) {
      map['id'] = Variable<String?>(id.value);
    }
    if (appDataID.present) {
      map['app_data_i_d'] = Variable<String>(appDataID.value);
    }
    if (name.present) {
      map['name'] = Variable<String?>(name.value);
    }
    if (image.present) {
      map['image'] = Variable<String?>(image.value);
    }
    if (description.present) {
      map['description'] = Variable<String?>(description.value);
    }
    if (videoLink.present) {
      map['video_link'] = Variable<String?>(videoLink.value);
    }
    if (insightImages.present) {
      map['insight_images'] = Variable<String?>(insightImages.value);
    }
    return map;
  }

  @override
  String toString() {
    return (StringBuffer('ToolsMoorModelCompanion(')
          ..write('id: $id, ')
          ..write('appDataID: $appDataID, ')
          ..write('name: $name, ')
          ..write('image: $image, ')
          ..write('description: $description, ')
          ..write('videoLink: $videoLink, ')
          ..write('insightImages: $insightImages')
          ..write(')'))
        .toString();
  }
}

class $ToolsMoorModelTable extends ToolsMoorModel
    with TableInfo<$ToolsMoorModelTable, ToolsMoorModelData> {
  final GeneratedDatabase _db;
  final String? _alias;
  $ToolsMoorModelTable(this._db, [this._alias]);
  final VerificationMeta _idMeta = const VerificationMeta('id');
  late final GeneratedColumn<String?> id = GeneratedColumn<String?>(
      'id', aliasedName, true,
      typeName: 'TEXT', requiredDuringInsert: false);
  final VerificationMeta _appDataIDMeta = const VerificationMeta('appDataID');
  late final GeneratedColumn<String?> appDataID = GeneratedColumn<String?>(
      'app_data_i_d', aliasedName, false,
      typeName: 'TEXT',
      requiredDuringInsert: true,
      $customConstraints:
          'NULL REFERENCES app_data_moor_model (id) ON DELETE RESTRICT');
  final VerificationMeta _nameMeta = const VerificationMeta('name');
  late final GeneratedColumn<String?> name = GeneratedColumn<String?>(
      'name', aliasedName, true,
      typeName: 'TEXT', requiredDuringInsert: false);
  final VerificationMeta _imageMeta = const VerificationMeta('image');
  late final GeneratedColumn<String?> image = GeneratedColumn<String?>(
      'image', aliasedName, true,
      typeName: 'TEXT', requiredDuringInsert: false);
  final VerificationMeta _descriptionMeta =
      const VerificationMeta('description');
  late final GeneratedColumn<String?> description = GeneratedColumn<String?>(
      'description', aliasedName, true,
      typeName: 'TEXT', requiredDuringInsert: false);
  final VerificationMeta _videoLinkMeta = const VerificationMeta('videoLink');
  late final GeneratedColumn<String?> videoLink = GeneratedColumn<String?>(
      'video_link', aliasedName, true,
      typeName: 'TEXT', requiredDuringInsert: false);
  final VerificationMeta _insightImagesMeta =
      const VerificationMeta('insightImages');
  late final GeneratedColumn<String?> insightImages = GeneratedColumn<String?>(
      'insight_images', aliasedName, true,
      typeName: 'TEXT', requiredDuringInsert: false);
  @override
  List<GeneratedColumn> get $columns =>
      [id, appDataID, name, image, description, videoLink, insightImages];
  @override
  String get aliasedName => _alias ?? 'tools_moor_model';
  @override
  String get actualTableName => 'tools_moor_model';
  @override
  VerificationContext validateIntegrity(Insertable<ToolsMoorModelData> instance,
      {bool isInserting = false}) {
    final context = VerificationContext();
    final data = instance.toColumns(true);
    if (data.containsKey('id')) {
      context.handle(_idMeta, id.isAcceptableOrUnknown(data['id']!, _idMeta));
    }
    if (data.containsKey('app_data_i_d')) {
      context.handle(
          _appDataIDMeta,
          appDataID.isAcceptableOrUnknown(
              data['app_data_i_d']!, _appDataIDMeta));
    } else if (isInserting) {
      context.missing(_appDataIDMeta);
    }
    if (data.containsKey('name')) {
      context.handle(
          _nameMeta, name.isAcceptableOrUnknown(data['name']!, _nameMeta));
    }
    if (data.containsKey('image')) {
      context.handle(
          _imageMeta, image.isAcceptableOrUnknown(data['image']!, _imageMeta));
    }
    if (data.containsKey('description')) {
      context.handle(
          _descriptionMeta,
          description.isAcceptableOrUnknown(
              data['description']!, _descriptionMeta));
    }
    if (data.containsKey('video_link')) {
      context.handle(_videoLinkMeta,
          videoLink.isAcceptableOrUnknown(data['video_link']!, _videoLinkMeta));
    }
    if (data.containsKey('insight_images')) {
      context.handle(
          _insightImagesMeta,
          insightImages.isAcceptableOrUnknown(
              data['insight_images']!, _insightImagesMeta));
    }
    return context;
  }

  @override
  Set<GeneratedColumn> get $primaryKey => {id};
  @override
  ToolsMoorModelData map(Map<String, dynamic> data, {String? tablePrefix}) {
    return ToolsMoorModelData.fromData(data, _db,
        prefix: tablePrefix != null ? '$tablePrefix.' : null);
  }

  @override
  $ToolsMoorModelTable createAlias(String alias) {
    return $ToolsMoorModelTable(_db, alias);
  }
}

class ToolsDocMoorModelData extends DataClass
    implements Insertable<ToolsDocMoorModelData> {
  final String? id;
  final String? image;
  final String? imageName;
  final String toolsDataID;
  ToolsDocMoorModelData(
      {this.id, this.image, this.imageName, required this.toolsDataID});
  factory ToolsDocMoorModelData.fromData(
      Map<String, dynamic> data, GeneratedDatabase db,
      {String? prefix}) {
    final effectivePrefix = prefix ?? '';
    return ToolsDocMoorModelData(
      id: const StringType()
          .mapFromDatabaseResponse(data['${effectivePrefix}id']),
      image: const StringType()
          .mapFromDatabaseResponse(data['${effectivePrefix}image']),
      imageName: const StringType()
          .mapFromDatabaseResponse(data['${effectivePrefix}image_name']),
      toolsDataID: const StringType()
          .mapFromDatabaseResponse(data['${effectivePrefix}tools_data_i_d'])!,
    );
  }
  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    if (!nullToAbsent || id != null) {
      map['id'] = Variable<String?>(id);
    }
    if (!nullToAbsent || image != null) {
      map['image'] = Variable<String?>(image);
    }
    if (!nullToAbsent || imageName != null) {
      map['image_name'] = Variable<String?>(imageName);
    }
    map['tools_data_i_d'] = Variable<String>(toolsDataID);
    return map;
  }

  ToolsDocMoorModelCompanion toCompanion(bool nullToAbsent) {
    return ToolsDocMoorModelCompanion(
      id: id == null && nullToAbsent ? const Value.absent() : Value(id),
      image:
          image == null && nullToAbsent ? const Value.absent() : Value(image),
      imageName: imageName == null && nullToAbsent
          ? const Value.absent()
          : Value(imageName),
      toolsDataID: Value(toolsDataID),
    );
  }

  factory ToolsDocMoorModelData.fromJson(Map<String, dynamic> json,
      {ValueSerializer? serializer}) {
    serializer ??= moorRuntimeOptions.defaultSerializer;
    return ToolsDocMoorModelData(
      id: serializer.fromJson<String?>(json['id']),
      image: serializer.fromJson<String?>(json['image']),
      imageName: serializer.fromJson<String?>(json['imageName']),
      toolsDataID: serializer.fromJson<String>(json['toolsDataID']),
    );
  }
  @override
  Map<String, dynamic> toJson({ValueSerializer? serializer}) {
    serializer ??= moorRuntimeOptions.defaultSerializer;
    return <String, dynamic>{
      'id': serializer.toJson<String?>(id),
      'image': serializer.toJson<String?>(image),
      'imageName': serializer.toJson<String?>(imageName),
      'toolsDataID': serializer.toJson<String>(toolsDataID),
    };
  }

  ToolsDocMoorModelData copyWith(
          {String? id,
          String? image,
          String? imageName,
          String? toolsDataID}) =>
      ToolsDocMoorModelData(
        id: id ?? this.id,
        image: image ?? this.image,
        imageName: imageName ?? this.imageName,
        toolsDataID: toolsDataID ?? this.toolsDataID,
      );
  @override
  String toString() {
    return (StringBuffer('ToolsDocMoorModelData(')
          ..write('id: $id, ')
          ..write('image: $image, ')
          ..write('imageName: $imageName, ')
          ..write('toolsDataID: $toolsDataID')
          ..write(')'))
        .toString();
  }

  @override
  int get hashCode => $mrjf($mrjc(id.hashCode,
      $mrjc(image.hashCode, $mrjc(imageName.hashCode, toolsDataID.hashCode))));
  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      (other is ToolsDocMoorModelData &&
          other.id == this.id &&
          other.image == this.image &&
          other.imageName == this.imageName &&
          other.toolsDataID == this.toolsDataID);
}

class ToolsDocMoorModelCompanion
    extends UpdateCompanion<ToolsDocMoorModelData> {
  final Value<String?> id;
  final Value<String?> image;
  final Value<String?> imageName;
  final Value<String> toolsDataID;
  const ToolsDocMoorModelCompanion({
    this.id = const Value.absent(),
    this.image = const Value.absent(),
    this.imageName = const Value.absent(),
    this.toolsDataID = const Value.absent(),
  });
  ToolsDocMoorModelCompanion.insert({
    this.id = const Value.absent(),
    this.image = const Value.absent(),
    this.imageName = const Value.absent(),
    required String toolsDataID,
  }) : toolsDataID = Value(toolsDataID);
  static Insertable<ToolsDocMoorModelData> custom({
    Expression<String?>? id,
    Expression<String?>? image,
    Expression<String?>? imageName,
    Expression<String>? toolsDataID,
  }) {
    return RawValuesInsertable({
      if (id != null) 'id': id,
      if (image != null) 'image': image,
      if (imageName != null) 'image_name': imageName,
      if (toolsDataID != null) 'tools_data_i_d': toolsDataID,
    });
  }

  ToolsDocMoorModelCompanion copyWith(
      {Value<String?>? id,
      Value<String?>? image,
      Value<String?>? imageName,
      Value<String>? toolsDataID}) {
    return ToolsDocMoorModelCompanion(
      id: id ?? this.id,
      image: image ?? this.image,
      imageName: imageName ?? this.imageName,
      toolsDataID: toolsDataID ?? this.toolsDataID,
    );
  }

  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    if (id.present) {
      map['id'] = Variable<String?>(id.value);
    }
    if (image.present) {
      map['image'] = Variable<String?>(image.value);
    }
    if (imageName.present) {
      map['image_name'] = Variable<String?>(imageName.value);
    }
    if (toolsDataID.present) {
      map['tools_data_i_d'] = Variable<String>(toolsDataID.value);
    }
    return map;
  }

  @override
  String toString() {
    return (StringBuffer('ToolsDocMoorModelCompanion(')
          ..write('id: $id, ')
          ..write('image: $image, ')
          ..write('imageName: $imageName, ')
          ..write('toolsDataID: $toolsDataID')
          ..write(')'))
        .toString();
  }
}

class $ToolsDocMoorModelTable extends ToolsDocMoorModel
    with TableInfo<$ToolsDocMoorModelTable, ToolsDocMoorModelData> {
  final GeneratedDatabase _db;
  final String? _alias;
  $ToolsDocMoorModelTable(this._db, [this._alias]);
  final VerificationMeta _idMeta = const VerificationMeta('id');
  late final GeneratedColumn<String?> id = GeneratedColumn<String?>(
      'id', aliasedName, true,
      typeName: 'TEXT', requiredDuringInsert: false);
  final VerificationMeta _imageMeta = const VerificationMeta('image');
  late final GeneratedColumn<String?> image = GeneratedColumn<String?>(
      'image', aliasedName, true,
      typeName: 'TEXT', requiredDuringInsert: false);
  final VerificationMeta _imageNameMeta = const VerificationMeta('imageName');
  late final GeneratedColumn<String?> imageName = GeneratedColumn<String?>(
      'image_name', aliasedName, true,
      typeName: 'TEXT', requiredDuringInsert: false);
  final VerificationMeta _toolsDataIDMeta =
      const VerificationMeta('toolsDataID');
  late final GeneratedColumn<String?> toolsDataID = GeneratedColumn<String?>(
      'tools_data_i_d', aliasedName, false,
      typeName: 'TEXT',
      requiredDuringInsert: true,
      $customConstraints:
          'NULL REFERENCES tools_moor_model (id) ON DELETE RESTRICT');
  @override
  List<GeneratedColumn> get $columns => [id, image, imageName, toolsDataID];
  @override
  String get aliasedName => _alias ?? 'tools_doc_moor_model';
  @override
  String get actualTableName => 'tools_doc_moor_model';
  @override
  VerificationContext validateIntegrity(
      Insertable<ToolsDocMoorModelData> instance,
      {bool isInserting = false}) {
    final context = VerificationContext();
    final data = instance.toColumns(true);
    if (data.containsKey('id')) {
      context.handle(_idMeta, id.isAcceptableOrUnknown(data['id']!, _idMeta));
    }
    if (data.containsKey('image')) {
      context.handle(
          _imageMeta, image.isAcceptableOrUnknown(data['image']!, _imageMeta));
    }
    if (data.containsKey('image_name')) {
      context.handle(_imageNameMeta,
          imageName.isAcceptableOrUnknown(data['image_name']!, _imageNameMeta));
    }
    if (data.containsKey('tools_data_i_d')) {
      context.handle(
          _toolsDataIDMeta,
          toolsDataID.isAcceptableOrUnknown(
              data['tools_data_i_d']!, _toolsDataIDMeta));
    } else if (isInserting) {
      context.missing(_toolsDataIDMeta);
    }
    return context;
  }

  @override
  Set<GeneratedColumn> get $primaryKey => {id};
  @override
  ToolsDocMoorModelData map(Map<String, dynamic> data, {String? tablePrefix}) {
    return ToolsDocMoorModelData.fromData(data, _db,
        prefix: tablePrefix != null ? '$tablePrefix.' : null);
  }

  @override
  $ToolsDocMoorModelTable createAlias(String alias) {
    return $ToolsDocMoorModelTable(_db, alias);
  }
}

class FaultCodesMoorModelData extends DataClass
    implements Insertable<FaultCodesMoorModelData> {
  final String? id;
  final String? code;
  final String? codeID;
  final String? languageID;
  final String? title;
  final String? description;
  final String? faultEqImage;
  final String? videoType;
  final String? videoLink;
  final String? equipmentID;
  final String? causes;
  final String? solutions;
  final String? fixes;
  FaultCodesMoorModelData(
      {this.id,
      this.code,
      this.codeID,
      this.languageID,
      this.title,
      this.description,
      this.faultEqImage,
      this.videoType,
      this.videoLink,
      this.equipmentID,
      this.causes,
      this.solutions,
      this.fixes});
  factory FaultCodesMoorModelData.fromData(
      Map<String, dynamic> data, GeneratedDatabase db,
      {String? prefix}) {
    final effectivePrefix = prefix ?? '';
    return FaultCodesMoorModelData(
      id: const StringType()
          .mapFromDatabaseResponse(data['${effectivePrefix}id']),
      code: const StringType()
          .mapFromDatabaseResponse(data['${effectivePrefix}code']),
      codeID: const StringType()
          .mapFromDatabaseResponse(data['${effectivePrefix}code_i_d']),
      languageID: const StringType()
          .mapFromDatabaseResponse(data['${effectivePrefix}language_i_d']),
      title: const StringType()
          .mapFromDatabaseResponse(data['${effectivePrefix}title']),
      description: const StringType()
          .mapFromDatabaseResponse(data['${effectivePrefix}description']),
      faultEqImage: const StringType()
          .mapFromDatabaseResponse(data['${effectivePrefix}fault_eq_image']),
      videoType: const StringType()
          .mapFromDatabaseResponse(data['${effectivePrefix}video_type']),
      videoLink: const StringType()
          .mapFromDatabaseResponse(data['${effectivePrefix}video_link']),
      equipmentID: const StringType()
          .mapFromDatabaseResponse(data['${effectivePrefix}equipment_i_d']),
      causes: const StringType()
          .mapFromDatabaseResponse(data['${effectivePrefix}causes']),
      solutions: const StringType()
          .mapFromDatabaseResponse(data['${effectivePrefix}solutions']),
      fixes: const StringType()
          .mapFromDatabaseResponse(data['${effectivePrefix}fixes']),
    );
  }
  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    if (!nullToAbsent || id != null) {
      map['id'] = Variable<String?>(id);
    }
    if (!nullToAbsent || code != null) {
      map['code'] = Variable<String?>(code);
    }
    if (!nullToAbsent || codeID != null) {
      map['code_i_d'] = Variable<String?>(codeID);
    }
    if (!nullToAbsent || languageID != null) {
      map['language_i_d'] = Variable<String?>(languageID);
    }
    if (!nullToAbsent || title != null) {
      map['title'] = Variable<String?>(title);
    }
    if (!nullToAbsent || description != null) {
      map['description'] = Variable<String?>(description);
    }
    if (!nullToAbsent || faultEqImage != null) {
      map['fault_eq_image'] = Variable<String?>(faultEqImage);
    }
    if (!nullToAbsent || videoType != null) {
      map['video_type'] = Variable<String?>(videoType);
    }
    if (!nullToAbsent || videoLink != null) {
      map['video_link'] = Variable<String?>(videoLink);
    }
    if (!nullToAbsent || equipmentID != null) {
      map['equipment_i_d'] = Variable<String?>(equipmentID);
    }
    if (!nullToAbsent || causes != null) {
      map['causes'] = Variable<String?>(causes);
    }
    if (!nullToAbsent || solutions != null) {
      map['solutions'] = Variable<String?>(solutions);
    }
    if (!nullToAbsent || fixes != null) {
      map['fixes'] = Variable<String?>(fixes);
    }
    return map;
  }

  FaultCodesMoorModelCompanion toCompanion(bool nullToAbsent) {
    return FaultCodesMoorModelCompanion(
      id: id == null && nullToAbsent ? const Value.absent() : Value(id),
      code: code == null && nullToAbsent ? const Value.absent() : Value(code),
      codeID:
          codeID == null && nullToAbsent ? const Value.absent() : Value(codeID),
      languageID: languageID == null && nullToAbsent
          ? const Value.absent()
          : Value(languageID),
      title:
          title == null && nullToAbsent ? const Value.absent() : Value(title),
      description: description == null && nullToAbsent
          ? const Value.absent()
          : Value(description),
      faultEqImage: faultEqImage == null && nullToAbsent
          ? const Value.absent()
          : Value(faultEqImage),
      videoType: videoType == null && nullToAbsent
          ? const Value.absent()
          : Value(videoType),
      videoLink: videoLink == null && nullToAbsent
          ? const Value.absent()
          : Value(videoLink),
      equipmentID: equipmentID == null && nullToAbsent
          ? const Value.absent()
          : Value(equipmentID),
      causes:
          causes == null && nullToAbsent ? const Value.absent() : Value(causes),
      solutions: solutions == null && nullToAbsent
          ? const Value.absent()
          : Value(solutions),
      fixes:
          fixes == null && nullToAbsent ? const Value.absent() : Value(fixes),
    );
  }

  factory FaultCodesMoorModelData.fromJson(Map<String, dynamic> json,
      {ValueSerializer? serializer}) {
    serializer ??= moorRuntimeOptions.defaultSerializer;
    return FaultCodesMoorModelData(
      id: serializer.fromJson<String?>(json['id']),
      code: serializer.fromJson<String?>(json['code']),
      codeID: serializer.fromJson<String?>(json['codeID']),
      languageID: serializer.fromJson<String?>(json['languageID']),
      title: serializer.fromJson<String?>(json['title']),
      description: serializer.fromJson<String?>(json['description']),
      faultEqImage: serializer.fromJson<String?>(json['faultEqImage']),
      videoType: serializer.fromJson<String?>(json['videoType']),
      videoLink: serializer.fromJson<String?>(json['videoLink']),
      equipmentID: serializer.fromJson<String?>(json['equipmentID']),
      causes: serializer.fromJson<String?>(json['causes']),
      solutions: serializer.fromJson<String?>(json['solutions']),
      fixes: serializer.fromJson<String?>(json['fixes']),
    );
  }
  @override
  Map<String, dynamic> toJson({ValueSerializer? serializer}) {
    serializer ??= moorRuntimeOptions.defaultSerializer;
    return <String, dynamic>{
      'id': serializer.toJson<String?>(id),
      'code': serializer.toJson<String?>(code),
      'codeID': serializer.toJson<String?>(codeID),
      'languageID': serializer.toJson<String?>(languageID),
      'title': serializer.toJson<String?>(title),
      'description': serializer.toJson<String?>(description),
      'faultEqImage': serializer.toJson<String?>(faultEqImage),
      'videoType': serializer.toJson<String?>(videoType),
      'videoLink': serializer.toJson<String?>(videoLink),
      'equipmentID': serializer.toJson<String?>(equipmentID),
      'causes': serializer.toJson<String?>(causes),
      'solutions': serializer.toJson<String?>(solutions),
      'fixes': serializer.toJson<String?>(fixes),
    };
  }

  FaultCodesMoorModelData copyWith(
          {String? id,
          String? code,
          String? codeID,
          String? languageID,
          String? title,
          String? description,
          String? faultEqImage,
          String? videoType,
          String? videoLink,
          String? equipmentID,
          String? causes,
          String? solutions,
          String? fixes}) =>
      FaultCodesMoorModelData(
        id: id ?? this.id,
        code: code ?? this.code,
        codeID: codeID ?? this.codeID,
        languageID: languageID ?? this.languageID,
        title: title ?? this.title,
        description: description ?? this.description,
        faultEqImage: faultEqImage ?? this.faultEqImage,
        videoType: videoType ?? this.videoType,
        videoLink: videoLink ?? this.videoLink,
        equipmentID: equipmentID ?? this.equipmentID,
        causes: causes ?? this.causes,
        solutions: solutions ?? this.solutions,
        fixes: fixes ?? this.fixes,
      );
  @override
  String toString() {
    return (StringBuffer('FaultCodesMoorModelData(')
          ..write('id: $id, ')
          ..write('code: $code, ')
          ..write('codeID: $codeID, ')
          ..write('languageID: $languageID, ')
          ..write('title: $title, ')
          ..write('description: $description, ')
          ..write('faultEqImage: $faultEqImage, ')
          ..write('videoType: $videoType, ')
          ..write('videoLink: $videoLink, ')
          ..write('equipmentID: $equipmentID, ')
          ..write('causes: $causes, ')
          ..write('solutions: $solutions, ')
          ..write('fixes: $fixes')
          ..write(')'))
        .toString();
  }

  @override
  int get hashCode => $mrjf($mrjc(
      id.hashCode,
      $mrjc(
          code.hashCode,
          $mrjc(
              codeID.hashCode,
              $mrjc(
                  languageID.hashCode,
                  $mrjc(
                      title.hashCode,
                      $mrjc(
                          description.hashCode,
                          $mrjc(
                              faultEqImage.hashCode,
                              $mrjc(
                                  videoType.hashCode,
                                  $mrjc(
                                      videoLink.hashCode,
                                      $mrjc(
                                          equipmentID.hashCode,
                                          $mrjc(
                                              causes.hashCode,
                                              $mrjc(solutions.hashCode,
                                                  fixes.hashCode)))))))))))));
  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      (other is FaultCodesMoorModelData &&
          other.id == this.id &&
          other.code == this.code &&
          other.codeID == this.codeID &&
          other.languageID == this.languageID &&
          other.title == this.title &&
          other.description == this.description &&
          other.faultEqImage == this.faultEqImage &&
          other.videoType == this.videoType &&
          other.videoLink == this.videoLink &&
          other.equipmentID == this.equipmentID &&
          other.causes == this.causes &&
          other.solutions == this.solutions &&
          other.fixes == this.fixes);
}

class FaultCodesMoorModelCompanion
    extends UpdateCompanion<FaultCodesMoorModelData> {
  final Value<String?> id;
  final Value<String?> code;
  final Value<String?> codeID;
  final Value<String?> languageID;
  final Value<String?> title;
  final Value<String?> description;
  final Value<String?> faultEqImage;
  final Value<String?> videoType;
  final Value<String?> videoLink;
  final Value<String?> equipmentID;
  final Value<String?> causes;
  final Value<String?> solutions;
  final Value<String?> fixes;
  const FaultCodesMoorModelCompanion({
    this.id = const Value.absent(),
    this.code = const Value.absent(),
    this.codeID = const Value.absent(),
    this.languageID = const Value.absent(),
    this.title = const Value.absent(),
    this.description = const Value.absent(),
    this.faultEqImage = const Value.absent(),
    this.videoType = const Value.absent(),
    this.videoLink = const Value.absent(),
    this.equipmentID = const Value.absent(),
    this.causes = const Value.absent(),
    this.solutions = const Value.absent(),
    this.fixes = const Value.absent(),
  });
  FaultCodesMoorModelCompanion.insert({
    this.id = const Value.absent(),
    this.code = const Value.absent(),
    this.codeID = const Value.absent(),
    this.languageID = const Value.absent(),
    this.title = const Value.absent(),
    this.description = const Value.absent(),
    this.faultEqImage = const Value.absent(),
    this.videoType = const Value.absent(),
    this.videoLink = const Value.absent(),
    this.equipmentID = const Value.absent(),
    this.causes = const Value.absent(),
    this.solutions = const Value.absent(),
    this.fixes = const Value.absent(),
  });
  static Insertable<FaultCodesMoorModelData> custom({
    Expression<String?>? id,
    Expression<String?>? code,
    Expression<String?>? codeID,
    Expression<String?>? languageID,
    Expression<String?>? title,
    Expression<String?>? description,
    Expression<String?>? faultEqImage,
    Expression<String?>? videoType,
    Expression<String?>? videoLink,
    Expression<String?>? equipmentID,
    Expression<String?>? causes,
    Expression<String?>? solutions,
    Expression<String?>? fixes,
  }) {
    return RawValuesInsertable({
      if (id != null) 'id': id,
      if (code != null) 'code': code,
      if (codeID != null) 'code_i_d': codeID,
      if (languageID != null) 'language_i_d': languageID,
      if (title != null) 'title': title,
      if (description != null) 'description': description,
      if (faultEqImage != null) 'fault_eq_image': faultEqImage,
      if (videoType != null) 'video_type': videoType,
      if (videoLink != null) 'video_link': videoLink,
      if (equipmentID != null) 'equipment_i_d': equipmentID,
      if (causes != null) 'causes': causes,
      if (solutions != null) 'solutions': solutions,
      if (fixes != null) 'fixes': fixes,
    });
  }

  FaultCodesMoorModelCompanion copyWith(
      {Value<String?>? id,
      Value<String?>? code,
      Value<String?>? codeID,
      Value<String?>? languageID,
      Value<String?>? title,
      Value<String?>? description,
      Value<String?>? faultEqImage,
      Value<String?>? videoType,
      Value<String?>? videoLink,
      Value<String?>? equipmentID,
      Value<String?>? causes,
      Value<String?>? solutions,
      Value<String?>? fixes}) {
    return FaultCodesMoorModelCompanion(
      id: id ?? this.id,
      code: code ?? this.code,
      codeID: codeID ?? this.codeID,
      languageID: languageID ?? this.languageID,
      title: title ?? this.title,
      description: description ?? this.description,
      faultEqImage: faultEqImage ?? this.faultEqImage,
      videoType: videoType ?? this.videoType,
      videoLink: videoLink ?? this.videoLink,
      equipmentID: equipmentID ?? this.equipmentID,
      causes: causes ?? this.causes,
      solutions: solutions ?? this.solutions,
      fixes: fixes ?? this.fixes,
    );
  }

  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    if (id.present) {
      map['id'] = Variable<String?>(id.value);
    }
    if (code.present) {
      map['code'] = Variable<String?>(code.value);
    }
    if (codeID.present) {
      map['code_i_d'] = Variable<String?>(codeID.value);
    }
    if (languageID.present) {
      map['language_i_d'] = Variable<String?>(languageID.value);
    }
    if (title.present) {
      map['title'] = Variable<String?>(title.value);
    }
    if (description.present) {
      map['description'] = Variable<String?>(description.value);
    }
    if (faultEqImage.present) {
      map['fault_eq_image'] = Variable<String?>(faultEqImage.value);
    }
    if (videoType.present) {
      map['video_type'] = Variable<String?>(videoType.value);
    }
    if (videoLink.present) {
      map['video_link'] = Variable<String?>(videoLink.value);
    }
    if (equipmentID.present) {
      map['equipment_i_d'] = Variable<String?>(equipmentID.value);
    }
    if (causes.present) {
      map['causes'] = Variable<String?>(causes.value);
    }
    if (solutions.present) {
      map['solutions'] = Variable<String?>(solutions.value);
    }
    if (fixes.present) {
      map['fixes'] = Variable<String?>(fixes.value);
    }
    return map;
  }

  @override
  String toString() {
    return (StringBuffer('FaultCodesMoorModelCompanion(')
          ..write('id: $id, ')
          ..write('code: $code, ')
          ..write('codeID: $codeID, ')
          ..write('languageID: $languageID, ')
          ..write('title: $title, ')
          ..write('description: $description, ')
          ..write('faultEqImage: $faultEqImage, ')
          ..write('videoType: $videoType, ')
          ..write('videoLink: $videoLink, ')
          ..write('equipmentID: $equipmentID, ')
          ..write('causes: $causes, ')
          ..write('solutions: $solutions, ')
          ..write('fixes: $fixes')
          ..write(')'))
        .toString();
  }
}

class $FaultCodesMoorModelTable extends FaultCodesMoorModel
    with TableInfo<$FaultCodesMoorModelTable, FaultCodesMoorModelData> {
  final GeneratedDatabase _db;
  final String? _alias;
  $FaultCodesMoorModelTable(this._db, [this._alias]);
  final VerificationMeta _idMeta = const VerificationMeta('id');
  late final GeneratedColumn<String?> id = GeneratedColumn<String?>(
      'id', aliasedName, true,
      typeName: 'TEXT', requiredDuringInsert: false);
  final VerificationMeta _codeMeta = const VerificationMeta('code');
  late final GeneratedColumn<String?> code = GeneratedColumn<String?>(
      'code', aliasedName, true,
      typeName: 'TEXT', requiredDuringInsert: false);
  final VerificationMeta _codeIDMeta = const VerificationMeta('codeID');
  late final GeneratedColumn<String?> codeID = GeneratedColumn<String?>(
      'code_i_d', aliasedName, true,
      typeName: 'TEXT', requiredDuringInsert: false);
  final VerificationMeta _languageIDMeta = const VerificationMeta('languageID');
  late final GeneratedColumn<String?> languageID = GeneratedColumn<String?>(
      'language_i_d', aliasedName, true,
      typeName: 'TEXT', requiredDuringInsert: false);
  final VerificationMeta _titleMeta = const VerificationMeta('title');
  late final GeneratedColumn<String?> title = GeneratedColumn<String?>(
      'title', aliasedName, true,
      typeName: 'TEXT', requiredDuringInsert: false);
  final VerificationMeta _descriptionMeta =
      const VerificationMeta('description');
  late final GeneratedColumn<String?> description = GeneratedColumn<String?>(
      'description', aliasedName, true,
      typeName: 'TEXT', requiredDuringInsert: false);
  final VerificationMeta _faultEqImageMeta =
      const VerificationMeta('faultEqImage');
  late final GeneratedColumn<String?> faultEqImage = GeneratedColumn<String?>(
      'fault_eq_image', aliasedName, true,
      typeName: 'TEXT', requiredDuringInsert: false);
  final VerificationMeta _videoTypeMeta = const VerificationMeta('videoType');
  late final GeneratedColumn<String?> videoType = GeneratedColumn<String?>(
      'video_type', aliasedName, true,
      typeName: 'TEXT', requiredDuringInsert: false);
  final VerificationMeta _videoLinkMeta = const VerificationMeta('videoLink');
  late final GeneratedColumn<String?> videoLink = GeneratedColumn<String?>(
      'video_link', aliasedName, true,
      typeName: 'TEXT', requiredDuringInsert: false);
  final VerificationMeta _equipmentIDMeta =
      const VerificationMeta('equipmentID');
  late final GeneratedColumn<String?> equipmentID = GeneratedColumn<String?>(
      'equipment_i_d', aliasedName, true,
      typeName: 'TEXT', requiredDuringInsert: false);
  final VerificationMeta _causesMeta = const VerificationMeta('causes');
  late final GeneratedColumn<String?> causes = GeneratedColumn<String?>(
      'causes', aliasedName, true,
      typeName: 'TEXT', requiredDuringInsert: false);
  final VerificationMeta _solutionsMeta = const VerificationMeta('solutions');
  late final GeneratedColumn<String?> solutions = GeneratedColumn<String?>(
      'solutions', aliasedName, true,
      typeName: 'TEXT', requiredDuringInsert: false);
  final VerificationMeta _fixesMeta = const VerificationMeta('fixes');
  late final GeneratedColumn<String?> fixes = GeneratedColumn<String?>(
      'fixes', aliasedName, true,
      typeName: 'TEXT', requiredDuringInsert: false);
  @override
  List<GeneratedColumn> get $columns => [
        id,
        code,
        codeID,
        languageID,
        title,
        description,
        faultEqImage,
        videoType,
        videoLink,
        equipmentID,
        causes,
        solutions,
        fixes
      ];
  @override
  String get aliasedName => _alias ?? 'fault_codes_moor_model';
  @override
  String get actualTableName => 'fault_codes_moor_model';
  @override
  VerificationContext validateIntegrity(
      Insertable<FaultCodesMoorModelData> instance,
      {bool isInserting = false}) {
    final context = VerificationContext();
    final data = instance.toColumns(true);
    if (data.containsKey('id')) {
      context.handle(_idMeta, id.isAcceptableOrUnknown(data['id']!, _idMeta));
    }
    if (data.containsKey('code')) {
      context.handle(
          _codeMeta, code.isAcceptableOrUnknown(data['code']!, _codeMeta));
    }
    if (data.containsKey('code_i_d')) {
      context.handle(_codeIDMeta,
          codeID.isAcceptableOrUnknown(data['code_i_d']!, _codeIDMeta));
    }
    if (data.containsKey('language_i_d')) {
      context.handle(
          _languageIDMeta,
          languageID.isAcceptableOrUnknown(
              data['language_i_d']!, _languageIDMeta));
    }
    if (data.containsKey('title')) {
      context.handle(
          _titleMeta, title.isAcceptableOrUnknown(data['title']!, _titleMeta));
    }
    if (data.containsKey('description')) {
      context.handle(
          _descriptionMeta,
          description.isAcceptableOrUnknown(
              data['description']!, _descriptionMeta));
    }
    if (data.containsKey('fault_eq_image')) {
      context.handle(
          _faultEqImageMeta,
          faultEqImage.isAcceptableOrUnknown(
              data['fault_eq_image']!, _faultEqImageMeta));
    }
    if (data.containsKey('video_type')) {
      context.handle(_videoTypeMeta,
          videoType.isAcceptableOrUnknown(data['video_type']!, _videoTypeMeta));
    }
    if (data.containsKey('video_link')) {
      context.handle(_videoLinkMeta,
          videoLink.isAcceptableOrUnknown(data['video_link']!, _videoLinkMeta));
    }
    if (data.containsKey('equipment_i_d')) {
      context.handle(
          _equipmentIDMeta,
          equipmentID.isAcceptableOrUnknown(
              data['equipment_i_d']!, _equipmentIDMeta));
    }
    if (data.containsKey('causes')) {
      context.handle(_causesMeta,
          causes.isAcceptableOrUnknown(data['causes']!, _causesMeta));
    }
    if (data.containsKey('solutions')) {
      context.handle(_solutionsMeta,
          solutions.isAcceptableOrUnknown(data['solutions']!, _solutionsMeta));
    }
    if (data.containsKey('fixes')) {
      context.handle(
          _fixesMeta, fixes.isAcceptableOrUnknown(data['fixes']!, _fixesMeta));
    }
    return context;
  }

  @override
  Set<GeneratedColumn> get $primaryKey => <GeneratedColumn>{};
  @override
  FaultCodesMoorModelData map(Map<String, dynamic> data,
      {String? tablePrefix}) {
    return FaultCodesMoorModelData.fromData(data, _db,
        prefix: tablePrefix != null ? '$tablePrefix.' : null);
  }

  @override
  $FaultCodesMoorModelTable createAlias(String alias) {
    return $FaultCodesMoorModelTable(_db, alias);
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
  late final $AppDataMoorModelTable appDataMoorModel =
      $AppDataMoorModelTable(this);
  late final $ToolsMoorModelTable toolsMoorModel = $ToolsMoorModelTable(this);
  late final $ToolsDocMoorModelTable toolsDocMoorModel =
      $ToolsDocMoorModelTable(this);
  late final $FaultCodesMoorModelTable faultCodesMoorModel =
      $FaultCodesMoorModelTable(this);
  late final MasterDAO masterDAO = MasterDAO(this as AppDatabase);
  late final LanguageDAO languageDAO = LanguageDAO(this as AppDatabase);
  late final CommunicationDAO communicationDAO =
      CommunicationDAO(this as AppDatabase);
  late final AppDataDAO appDataDAO = AppDataDAO(this as AppDatabase);
  late final ToolsDataDAO toolsDataDAO = ToolsDataDAO(this as AppDatabase);
  late final ToolsDocDAO toolsDocDAO = ToolsDocDAO(this as AppDatabase);
  late final FaultCodeDAO faultCodeDAO = FaultCodeDAO(this as AppDatabase);
  @override
  Iterable<TableInfo> get allTables => allSchemaEntities.whereType<TableInfo>();
  @override
  List<DatabaseSchemaEntity> get allSchemaEntities => [
        masterMoorModel,
        languageMoorModel,
        communicationMoorModel,
        appDataMoorModel,
        toolsMoorModel,
        toolsDocMoorModel,
        faultCodesMoorModel
      ];
}
