import 'dart:convert';

import 'package:atlas/common/app_database.dart';

class FaultCodesModels {
  FaultCodesModels({
    String? code,
    String? id,
    String? codeId,
    String? languageId,
    String? title,
    String? description,
    List<dynamic>? causes,
    List<dynamic>? solutions,
    String? faultEqImage,
    String? videoType,
    String? videoLink,
    String? equipmentId,
    List<dynamic>? fixes,}){
    _code = code;
    _id = id;
    _codeId = codeId;
    _languageId = languageId;
    _title = title;
    _description = description;
    _causes = causes!.cast<String>();
    _solutions = solutions!.cast<String>();
    _faultEqImage = faultEqImage;
    _videoType = videoType;
    _videoLink = videoLink;
    _equipmentId = equipmentId;
    _fixes = fixes;
  }

  FaultCodesModels.fromJson(dynamic json) {
    try {
      _code = json['code'];
      _id = json['id'];
      _codeId = json['code_id'];
      _languageId = json['language_id'];
      _title = json['title'];
      _description = json['description'];
      _causes = json['causes'] != null ? json['causes'].cast<String>() : [];
      _solutions = json['solutions'] != null ? json['solutions'].cast<String>() : [];
      _faultEqImage = json['fault_eq_image'];
      _videoType = json['video_type'];
      _videoLink = json['video_link'];
      _equipmentId = json['equipment_id'];
      if (json['fixes'] != null) {
            _fixes = [];
            json['fixes'].forEach((v) {
              _fixes?.add(json.fromJson(v));
            });
          }
    } catch (e) {
      print(e);
    }
  }
  String? _code;
  String? _id;
  String? _codeId;
  String? _languageId;
  String? _title;
  String? _description;
  List<String>? _causes;
  List<String>? _solutions;
  String? _faultEqImage;
  String? _videoType;
  String? _videoLink;
  String? _equipmentId;
  List<dynamic>? _fixes;

  String? get code => _code;
  String? get id => _id;
  String? get codeId => _codeId;
  String? get languageId => _languageId;
  String? get title => _title;
  String? get description => _description;
  List<String>? get causes => _causes;
  List<String>? get solutions => _solutions;
  String? get faultEqImage => _faultEqImage;
  String? get videoType => _videoType;
  String? get videoLink => _videoLink;
  String? get equipmentId => _equipmentId;
  List<dynamic>? get fixes => _fixes;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['code'] = _code;
    map['id'] = _id;
    map['code_id'] = _codeId;
    map['language_id'] = _languageId;
    map['title'] = _title;
    map['description'] = _description;
    map['causes'] = _causes;
    map['solutions'] = _solutions;
    map['fault_eq_image'] = _faultEqImage;
    map['video_type'] = _videoType;
    map['video_link'] = _videoLink;
    map['equipment_id'] = _equipmentId;
    if (_fixes != null) {
      map['fixes'] = _fixes?.map((v) => v.toJson()).toList();
    }
    return map;
  }



  FaultCodesMoorModelData convertFromFaultCodeModelToFaultCodeMoorModel() {
    try {
      return FaultCodesMoorModelData(
        id: this._id,
        code: this._code,
        codeID: this._codeId,
        languageID: this._languageId,
        title: this._title,
        faultEqImage: this._faultEqImage,
        videoLink: this._videoLink,
        videoType: this._videoType,
        equipmentID: this._equipmentId,
        causes: json.encode(this._causes),
        solutions: json.encode(this._solutions),
        fixes: json.encode(this._fixes),
        description: this._description,
        );
    } catch (e) {
      print(e);
      throw ToolsMoorModelData(id: this._id, appDataID: '');
    }
  }

  static FaultCodesModels convertFromFaultDataMoorModelDataToFaultModel(
      FaultCodesMoorModelData faultCodesMoorModelData) {
    return FaultCodesModels(
      id: faultCodesMoorModelData.id,
      codeId: faultCodesMoorModelData.codeID,
      code: faultCodesMoorModelData.code,
      languageId: faultCodesMoorModelData.languageID,
      title: faultCodesMoorModelData.title,
      description: faultCodesMoorModelData.description,
      faultEqImage: faultCodesMoorModelData.faultEqImage,
      videoType: faultCodesMoorModelData.videoType,
      videoLink: faultCodesMoorModelData.videoLink,
      equipmentId: faultCodesMoorModelData.equipmentID,
      causes: json.decode(faultCodesMoorModelData.causes??""),
      solutions: json.decode(faultCodesMoorModelData.solutions??""),
    fixes: json.decode(faultCodesMoorModelData.fixes??"")
    );
  }


}
