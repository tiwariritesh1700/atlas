import 'dart:async';

import 'package:atlas/language/model/language_model.dart';
import 'package:atlas/language/repo/language_repositiory.dart';
import 'package:flutter/cupertino.dart';
import 'package:rxdart/rxdart.dart';

class LanguageBloc {
  late LanguageRepository languageRepository ;
  LanguageBloc(){
    languageRepository =LanguageRepository();
      loadLanguageData();
  }
  StreamController <List<LanguageModel>> listOfLanguageModelController = BehaviorSubject<List<LanguageModel>>();

  void loadLanguageData() async{

    List<LanguageModel> listOfLanguageModel = await languageRepository.getListOfLanguageModels();
    if(listOfLanguageModel.isNotEmpty){
      listOfLanguageModelController.sink.add(listOfLanguageModel);
    }

  }

  void dispose(){
    listOfLanguageModelController.close();
  }

}

