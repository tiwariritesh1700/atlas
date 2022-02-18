

import 'package:atlas/search_screen/model/fault_codes_model.dart';
import 'package:atlas/search_screen/model/tools_model.dart';

class AppDataModel {

  String? _languageId;
  String? _languageName;
  String? _languageIcon;
  List<FaultCodesModels>? _faultCodes;
  List<ToolsModel>? _tools;
  String? _privacyPolicy;
  String? _termsAndConditions;
  List<dynamic>? _faqs;

  String? get languageId => this._languageId;
  String? get languageName => this._languageName;
  String? get languageIcon => this._languageIcon;
  List<FaultCodesModels>? get faultCodes => this._faultCodes;
  List<ToolsModel>? get tools => this._tools;
  String? get privacyPolicy => this._privacyPolicy;
  String? get termsAndConditions => this._termsAndConditions;
  List<dynamic>? get faqs => this._faqs;


  set languageId(String? value) {
    this._languageId = value;
  }

  set languageName(String? value) {
    this._languageName = value;
  }

  set languageIcon(String? value) {
    this._languageIcon = value;
  }

  set faultCodes(List<FaultCodesModels>? value) {
    this._faultCodes = value;
  }

  set tools(List<ToolsModel>? value) {
    this._tools = value;
  }

  set privacyPolicy(String? value) {
    this._privacyPolicy = value;
  }

  set termsAndConditions(String? value) {
    this._termsAndConditions = value;
  }

  set faqs(List<dynamic>? value) {
    this._faqs = value;
  }

  AppDataModel({
      String? languageId, 
      String? languageName, 
      String? languageIcon, 
      List<FaultCodesModels>? faultCodes,
      List<ToolsModel>? tools,
      String? privacyPolicy, 
      String? termsAndConditions, 
      List<dynamic>? faqs,}){
    _languageId = languageId;
    _languageName = languageName;
    _languageIcon = languageIcon;
    _faultCodes = faultCodes;
    _tools = tools;
    _privacyPolicy = privacyPolicy;
    _termsAndConditions = termsAndConditions;
    _faqs = faqs;
}

  AppDataModel.fromJson(dynamic json) {
    _languageId = json['language_id'];
    _languageName = json['language_name'];
    _languageIcon = json['language_icon'];

    if (json['fault_codes'] != null) {
      _faultCodes = [];
      json['fault_codes'].forEach((v) {
        _faultCodes?.add(FaultCodesModels.fromJson(v));
      });
    }
    if (json['tools'] != null) {
      _tools = [];
      json['tools'].forEach((v) {
        _tools?.add(ToolsModel.fromJson(v));
      });
    }
    _privacyPolicy = json['privacy_policy'];
    _termsAndConditions = json['terms_and_conditions'];
    if (json['faqs'] != null) {
      _faqs = [];
      json['faqs'].forEach((v) {
        _faqs?.add(json.fromJson(v));
      });
    }
  }




  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['language_id'] = _languageId;
    map['language_name'] = _languageName;
    map['language_icon'] = _languageIcon;

    if (_faultCodes != null) {
      map['fault_codes'] = _faultCodes?.map((v) => v.toJson()).toList();
    }
    if (_tools != null) {
      map['tools'] = _tools?.map((v) => v.toJson()).toList();
    }
    map['privacy_policy'] = _privacyPolicy;
    map['terms_and_conditions'] = _termsAndConditions;
    if (_faqs != null) {
      map['faqs'] = _faqs?.map((v) => v.toJson()).toList();
    }
    return map;
  }

}







