import 'dart:async';

import 'package:atlas/common/api_endpoint.dart';
import 'package:atlas/language/model/language_model.dart';
import 'package:atlas/language/repo/language_repositiory.dart';
import 'package:atlas/main.dart';
import 'package:rxdart/rxdart.dart';

class LanguageBloc {
  static late LanguageRepository languageRepository ;
  LanguageBloc(){
    languageRepository =LanguageRepository();
      loadLanguageData();
  }
  StreamController <List<LanguageModel>> listOfLanguageModelController = BehaviorSubject<List<LanguageModel>>();

  void loadLanguageData() async{

    await languageRepository.callMasterApi(ApiEndPoint.APP_BASE_URL+ApiEndPoint.GET_MASTER_DATA_API);

    List<LanguageModel> listOfLanguageModel = await languageRepository.getListOfLanguageModels();
    if(listOfLanguageModel.isNotEmpty){
      listOfLanguageModelController.sink.add(listOfLanguageModel);
      listOfGlobalLanguageModelController.sink.add(listOfLanguageModel);
    }

  }
  static void loadLanguageDataLatest() async{

    languageRepository =LanguageRepository();

    List<LanguageModel> listOfLanguageModel = await languageRepository.getListOfLanguageModels();
    if(listOfLanguageModel.isNotEmpty){
      listOfGlobalLanguageModelController.sink.add(listOfLanguageModel);
    }

  }

  void dispose(){
    listOfLanguageModelController.close();
  }

}

