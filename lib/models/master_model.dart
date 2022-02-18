import 'package:atlas/common/app_database.dart';
import 'package:atlas/communication/model/communication_model.dart';
import 'package:atlas/language/model/language_model.dart';

class MasterModel {
  late String _status;
  late String _message;
  late String _privacyPolicyLink;
  late String _termsAndConditionLink;
  late String _faqLink;
  late List<LanguageModel> _languages;
  late List<CommunicationModel> _communications;

  MasterModel.zero();

//Constructor

  MasterModel({
    required String status,
    required String message,
    required String privacyPolicyLink,
    required String termsAndConditionLink,
    required String faqLink,
    required List<LanguageModel> languages,
    required List<CommunicationModel> communications,

  })  : _status = status,
        _message = message,
        _privacyPolicyLink = privacyPolicyLink,
        _termsAndConditionLink = termsAndConditionLink,
        _faqLink = faqLink,
        _languages = languages,_communications = communications;

  //Getters

  String get status => this._status;

  String get message => this._message;

  String get faqLink => this._faqLink;

  String get termsAndConditionLink => this._termsAndConditionLink;

  String get privacyPolicyLink => this._privacyPolicyLink;

  List<LanguageModel> get languages => this._languages;
  List<CommunicationModel> get communications => this._communications;


  //Setters
  set faqLink(String value) {
    this._faqLink = value;
  }

  set termsAndConditionLink(String value) {
    this._termsAndConditionLink = value;
  }

  set privacyPolicyLink(String value) {
    this._privacyPolicyLink = value;
  }

  set message(String value) {
    this._message = value;
  }

  set status(String value) {
    this._status = value;
  }

  set language(List<LanguageModel> value) {
    this._languages = value;
  }
  set communication(List<CommunicationModel> value) {
    this._communications = value;
  }


  Map<String, dynamic> toMap() {
    return {
      'status': this._status,
      'message': this._message,
      'privacy_policy_link': this._privacyPolicyLink,
      'terms_n_conditions_link': this._termsAndConditionLink,
      'faq_link': this._faqLink,
    };
  }

  factory MasterModel.fromMap(Map<String, dynamic> map) {
    return MasterModel(
        status: map['status'] as String,
        message: map['message'] as String,
        privacyPolicyLink: map['data']['privacy_policy_link'] as String,
        termsAndConditionLink: map['data']['terms_n_conditions_link'] as String,
        faqLink: map['data']['faq_link'] as String,
        languages: LanguageModel.fromMapArrObject(map['data']['languages']),
      communications: CommunicationModel.fromMapArrObject(map['data']['communication_style']),

    );
  }

  MasterMoorModelData convertFromMasterModelToMasterMoorModel() {
    try {
      return MasterMoorModelData(
        id: 0,
          status: this._status,
          message: this._message,
          privacyPolicyLink: this._privacyPolicyLink,
          termsAndConditionLink: this._termsAndConditionLink,
          faqLink: this._faqLink);
    } catch (e) {
      print(e);
      throw MasterMoorModelData(id: 0);
    }
  }

  MasterModel convertFromMasterMoorModelDataToMasterModel(
      MasterMoorModelData masterMoorModelData) {
    return MasterModel(
      status: masterMoorModelData.status ?? "",
      message: masterMoorModelData.message ?? "",
      privacyPolicyLink: masterMoorModelData.privacyPolicyLink ?? "",
      termsAndConditionLink: masterMoorModelData.termsAndConditionLink ?? "",
      faqLink: masterMoorModelData.faqLink ?? "",
      languages: [LanguageModel.zero()],
      communications: [CommunicationModel.zero()],
    );
  }
}
