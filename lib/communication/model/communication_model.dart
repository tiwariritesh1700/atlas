import 'package:atlas/common/app_database.dart';

class CommunicationModel{


  late String _id;
  late String _title;
  late String _createdBy;
  late int _modifiedBy;


  CommunicationModel.zero();
  CommunicationModel({
    required String id,
    required String title,
    required String createdBy,
    required int modifiedBy,
  })  : _id = id,
        _title = title,
        _createdBy = createdBy,
        _modifiedBy = modifiedBy;


  //Getters
  int get modifiedBy => this._modifiedBy;

  String get createdBy => this._createdBy;

  String get title => this._title;

  String get id => this._id;

  //Setters
  set modifiedBy(int value) {
    this._modifiedBy = value;
  }

  set createdBy(String value) {
    this._createdBy = value;
  }

  set title(String value) {
    this._title = value;
  }

  set id(String value) {
    this._id = value;
  }

  Map<String, dynamic> toMap() {
    return {
      'id': this._id,
      'title': this._title,
      'created_by': this._createdBy,
      'modified_by': this._modifiedBy,
    };
  }

  factory CommunicationModel.fromMap(Map<String, dynamic> map) {
    return CommunicationModel(
      id: map['id'] ,
      title: map['title'] ,
      createdBy: map['created_by'] ,
      modifiedBy: map['modified_by'] ,
    );


  }


  static List<CommunicationModel> fromMapArrObject(List<dynamic> map){
    List<CommunicationModel> listOfCommunicationModel =[];
    try{
      map.map((item)
      {
        listOfCommunicationModel.add( CommunicationModel(
          id: item['id']??"",
          title: item['title']??"",
          modifiedBy: item['modified_by']??0,
          createdBy: item['created_by']??"",
        ));
      }).toList();

      return listOfCommunicationModel;
    }catch(e){
      print(e);
      return listOfCommunicationModel;
    }

  }


  CommunicationMoorModelData convertFromCommunicationModelToCommunicationMoorModelData(){

    try {
      return CommunicationMoorModelData(id: this._id,tittle: this._title,createdBy: this._createdBy,modifiedBy: this._modifiedBy,);
    } catch (e) {
      print(e);
      throw LanguageMoorModelData();
    }
  }

  static CommunicationModel convertFromCommunicationMoorModelDataToCommunicationModel(
      CommunicationMoorModelData  communicationMoorModelData) {
    return CommunicationModel(
      id: communicationMoorModelData.id??"",
      title: communicationMoorModelData.tittle??"",
      createdBy: communicationMoorModelData.createdBy??"",
      modifiedBy: communicationMoorModelData.modifiedBy??0,
    );
  }
}