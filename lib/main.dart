
import 'dart:async';

import 'package:atlas/common/constants.dart';
import 'package:atlas/common/local_storage.dart';
import 'package:atlas/common/service_locator.dart';
import 'package:atlas/communication/model/communication_model.dart';
import 'package:atlas/language/model/language_model.dart';
import 'package:atlas/language/ui/language_screen.dart';
import 'package:atlas/search_screen/ui/search_screen.dart';
import 'package:flutter/material.dart';
import 'package:rxdart/rxdart.dart';


StreamController<String> selectedLanguageModelController = BehaviorSubject<String>();
StreamController<String> selectedCommunicationTitleController = BehaviorSubject<String>();

StreamController<List<LanguageModel>> listOfGlobalLanguageModelController = BehaviorSubject<List<LanguageModel>>();
StreamController<List<CommunicationModel>> listOfGlobalCommunicationController = BehaviorSubject<List<CommunicationModel>>();


Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();

  await setupLocator().whenComplete((){
    print("complete");
  });
 await LocalStorageService.getInstance();

if(LocalStorageService.getStringValueInLocalStorageService(key: Constants.PREFS_LANGUAGE_ICON)!=null){
  selectedLanguageModelController.add(LocalStorageService.getStringValueInLocalStorageService(key: Constants.PREFS_LANGUAGE_ICON)??"");
}
  if(LocalStorageService.getStringValueInLocalStorageService(key: Constants.PREFS_COMMUNICATION_NAME)!=null){
    selectedCommunicationTitleController.add(LocalStorageService.getStringValueInLocalStorageService(key: Constants.PREFS_COMMUNICATION_NAME)??"");
  }
  runApp(AtlasApp());
}

class AtlasApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Atlas',
      debugShowCheckedModeBanner: false,
      home: LocalStorageService.getStringValueInLocalStorageService(key: Constants.PREFS_LANGUAGE)!=null?SearchScreen():LanguageScreen(),
    );
  }
}
