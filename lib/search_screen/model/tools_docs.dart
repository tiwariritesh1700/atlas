class ToolsDocsModels {
  ToolsDocsModels({
    String? id,
    String? image,
    String? imageName,}){
    _id = id;
    _image = image;
    _imageName = imageName;
  }

  ToolsDocsModels.fromJson(dynamic json) {
    _id = json['id'];
    _image = json['image'];
    _imageName = json['image_name'];
  }
  String? _id;
  String? _image;
  String? _imageName;

  String? get id => _id;
  String? get image => _image;
  String? get imageName => _imageName;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['id'] = _id;
    map['image'] = _image;
    map['image_name'] = _imageName;
    return map;
  }

}
