import 'package:atlas/common/app_database.dart';

class ToolsDocsModels {
  ToolsDocsModels({
    String? id,
    String? image,
    String? imageName,
  }) {
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

  ToolsDocMoorModelData convertFromToolsDocModelToToolsDocDataMoorModel() {
    try {
      return ToolsDocMoorModelData(
        id: this._id,
        imageName: this._imageName,
        image: this._image, toolsDataID: '',
      );
    } catch (e) {
      print(e);
      throw ToolsDocMoorModelData(id: this._id, toolsDataID: '');
    }
  }

  static ToolsDocsModels convertFromToolsDocDataMoorModelDataToToolsDocModel(
      ToolsDocMoorModelData toolsDocMoorModelData) {
    return ToolsDocsModels(
      id: toolsDocMoorModelData.id ?? "",
      imageName: toolsDocMoorModelData.imageName ?? "",
      image: toolsDocMoorModelData.image ?? "",
    );
  }
}
