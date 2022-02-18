import 'package:atlas/search_screen/model/tools_docs.dart';

class ToolsModel {
  ToolsModel({
    String? id,
    String? name,
    String? image,
    String? description,
    String? videoLink,
    String? insightImage,
    List<dynamic>? falutcodes,
    List<ToolsDocsModels>? toolsDocs,}){
    _id = id;
    _name = name;
    _image = image;
    _description = description;
    _videoLink = videoLink;
    _insightImage = insightImage;
    _falutcodes = falutcodes;
    _toolsDocs = toolsDocs;
  }

  ToolsModel.fromJson(dynamic json) {
    _id = json['id'];
    _name = json['name'];
    _image = json['image'];
    _description = json['description'];
    _videoLink = json['video_link'];
    _insightImage = json['insight_image'];
    if (json['falutcodes'] != null) {
      _falutcodes = [];
      json['falutcodes'].forEach((v) {
        _falutcodes?.add(json.fromJson(v));
      });
    }
    if (json['tools_docs'] != null) {
      _toolsDocs = [];
      json['tools_docs'].forEach((v) {
        _toolsDocs?.add(ToolsDocsModels.fromJson(v));
      });
    }
  }
  String? _id;
  String? _name;
  String? _image;
  String? _description;
  String? _videoLink;
  String? _insightImage;
  List<dynamic>? _falutcodes;
  List<ToolsDocsModels>? _toolsDocs;

  String? get id => _id;
  String? get name => _name;
  String? get image => _image;
  String? get description => _description;
  String? get videoLink => _videoLink;
  String? get insightImage => _insightImage;
  List<dynamic>? get falutcodes => _falutcodes;
  List<ToolsDocsModels>? get toolsDocs => _toolsDocs;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['id'] = _id;
    map['name'] = _name;
    map['image'] = _image;
    map['description'] = _description;
    map['video_link'] = _videoLink;
    map['insight_image'] = _insightImage;
    if (_falutcodes != null) {
      map['falutcodes'] = _falutcodes?.map((v) => v.toJson()).toList();
    }
    if (_toolsDocs != null) {
      map['tools_docs'] = _toolsDocs?.map((v) => v.toJson()).toList();
    }
    return map;
  }

}
