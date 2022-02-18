import 'package:atlas/common/app_database.dart';
import 'package:atlas/common/constants.dart';
import 'package:atlas/common/local_storage.dart';
import 'package:atlas/common/network_handler.dart';
import 'package:atlas/common/service_locator.dart';
import 'package:atlas/communication/model/communication_model.dart';
import 'package:atlas/language/model/language_model.dart';
import 'package:atlas/main.dart';
import 'package:atlas/models/master_model.dart';
import 'package:atlas/search_screen/model/app_data_model.dart';
import 'package:dio/dio.dart';

class BaseRepository{
static NetworkHandler  _networkHandler =NetworkHandler();


Future<void> callMasterApi(String url) async{
  try{
    //Called API
  Response response = await _networkHandler.getData(url: url);
  if(response.data!=null){
    print(response.data);

    //Converting JSON into MasterModel
   MasterModel master = MasterModel.fromMap(response.data);

   //Inserting in offline Database

if(master!=null){

  try {
    LocalStorageService.addStringValueInLocalStorageService(key: Constants.PREFS_FAQ, value: master.faqLink);
    LocalStorageService.addStringValueInLocalStorageService(key: Constants.PREFS_TERMS_AND_CONDITION, value: master.termsAndConditionLink);
    LocalStorageService.addStringValueInLocalStorageService(key: Constants.PREFS_PRIVACY_POLICY, value: master.privacyPolicyLink);
  } catch (e) {
    print(e);
  }

}

    await locator<AppDatabase>().masterDAO.insertMasterData(master.convertFromMasterModelToMasterMoorModel());
    MasterMoorModelData data  =  await locator<AppDatabase>().masterDAO.getSingleMasterData();
print(data.message);

print("Master Data");

    try {
      if(master.languages.length>0){
        LanguageModel languageModelLocal = LanguageModel.zero();
        Future.forEach<LanguageModel>(master.languages, (languageModel) async{
          try {
            languageModelLocal=languageModel;
            await locator<AppDatabase>().languageDAO.insertLanguageData(languageModelLocal.convertFromLanguageModelToLanguageMoorModelData());
          } catch (e) {
             print(e);
          }

        });
        print("Done of Language");
      }
    } catch (e) {
      print(e);
    }

    try {
      if(master.communications.length>0){
        CommunicationModel communicationModel = CommunicationModel.zero();
        Future.forEach<CommunicationModel>(master.communications, (communicationmodel) async{
          communicationModel=communicationModel;
          await locator<AppDatabase>().communicationDAO.insertCommunicationData(communicationmodel.convertFromCommunicationModelToCommunicationMoorModelData());

        });
        print("Done of Communication");
      }
    } catch (e) {
      print(e);
    }





  }

  }catch(e){
    print(e);
  }
  
}
static Future<void> callAppDataApi(String url) async{
  try{

    //Set Query Parameters

    Map<String,dynamic> queryParameters ={
      "language_id":1,
      "communication_style":1,
    };
    //Called API
    Response response = await _networkHandler.getDataWithQueryParameters(url: url,queryParameters: queryParameters);
    if(response.data!=null){
      print(response.data);

      //Converting JSON into AppDataModel
      if(response.data["data"]!=null){
        List<AppDataModel> listOfDataModel = [];
        try {
          response.data["data"].forEach((v) {
                    try {
                      AppDataModel appDataModel = AppDataModel.fromJson(v);
                      listOfDataModel.add(appDataModel);
                    } catch (e) {
                      print(e);
                    }
                  });
        } catch (e) {
          print(e);
        }

      Future.forEach(listOfDataModel, (element) {

      });
      }

      //Inserting in offline Database


    }

  }catch(e){
    print(e);
  }

}

}