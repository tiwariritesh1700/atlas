import 'package:atlas/common/app_database.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';

class LanguageModel{

  late String _id;
  late String _name;
  late String _icon;
  late String _modifiedBy;
  late String _status;

  LanguageModel.zero();
  //Constructor
  LanguageModel({
    required String id,
    required String name,
    required String icon,
    required String modifiedBy,
    required String status,
  })  : _id = id,
        _name = name,
        _icon = icon,
        _modifiedBy = modifiedBy,
        _status = status;


  Map<String, dynamic> toMap() {
    return {
      'id': this._id,
      'name': this._name,
      'icon': this._icon,
      'modified_by': this._modifiedBy,
      'status': this._status,
    };
  }

  factory LanguageModel.fromMap(Map<String, dynamic> map) {
    return LanguageModel(
      id: map['id'] as String,
      name: map['name'] as String,
      icon: map['icon'] as String,
      modifiedBy: map['modified_by'] as String,
      status: map['status'] as String,
    );
  }


  static List<LanguageModel> fromMapArrObject(List<dynamic> map){
    List<LanguageModel> listOfLanguageModel =[];
    try{
      map.map((item)
      {
        listOfLanguageModel.add( LanguageModel(
          id: item['id'] as String,
          name: item['name'] as String,
          icon: item['icon'] as String,
          modifiedBy: item['modified_by'] as String,
          status: item['status'] as String,
        ));
      }).toList();

      return listOfLanguageModel;
    }catch(e){
      print(e);
      return listOfLanguageModel;
    }

  }

  //Getters
  String get status => this._status;

  String get modifiedBy => this._modifiedBy;

  String get icon => this._icon;

  String get name => this._name;

  String get id => this._id;


  //Setters

  set status(String value) {
    this._status = value;
  }

  set modifiedBy(String value) {
    this._modifiedBy = value;
  }

  set icon(String value) {
    this.icon = value;
  }

  set name(String value) {
    this._name = value;
  }

  set id(String value) {
    this._id = value;
  }


 LanguageMoorModelData convertFromLanguageModelToLanguageMoorModelData(){

    try {
      return LanguageMoorModelData(status: this._status,name: this._name,icon: this._icon,modifiedBy: this._modifiedBy,id: this._id);
    } catch (e) {
      print(e);
      throw LanguageMoorModelData();
    }
}

 static LanguageModel convertFromLanguageMoorModelDataToLanguageModel(
      LanguageMoorModelData  languageMoorModelData) {
    return LanguageModel(
      status: languageMoorModelData.status ?? "",
      id: languageMoorModelData.id??"",
       name: languageMoorModelData.name??"",
      icon: languageMoorModelData.icon??"",
      modifiedBy: languageMoorModelData.modifiedBy??"",
    );
  }


}