
import 'dart:async';

import 'package:atlas/common/constants.dart';
import 'package:atlas/common/local_storage.dart';
import 'package:atlas/common/service_locator.dart';
import 'package:atlas/communication/model/communication_model.dart';
import 'package:atlas/language/model/language_model.dart';
import 'package:atlas/language/ui/language_screen.dart';
import 'package:flutter/material.dart';
import 'package:rxdart/rxdart.dart';


StreamController<String> selectedLanguageModelController = BehaviorSubject<String>();
StreamController<CommunicationModel> communicationModelController = StreamController<CommunicationModel>();

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();

  await setupLocator().whenComplete((){
    print("complete");
  });
 await LocalStorageService.getInstance();

if(LocalStorageService.getStringValueInLocalStorageService(key: Constants.PREFS_LANGUAGE)!=null){
  selectedLanguageModelController.add(LocalStorageService.getStringValueInLocalStorageService(key: Constants.PREFS_LANGUAGE)??"");
}
  runApp(AtlasApp());
}

class AtlasApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Atlas',
      debugShowCheckedModeBanner: false,
      home: LanguageScreen(),
    );
  }
}
