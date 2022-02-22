import 'dart:async';

import 'package:atlas/communication/model/communication_model.dart';
import 'package:atlas/communication/repo/communication_repo.dart';
import 'package:atlas/main.dart';

class CommunicationBloc{

  static late CommunicationRepo  communicationRepository ;
  CommunicationBloc(){
    communicationRepository =CommunicationRepo();
    loadCommunicationData();
  }
  StreamController <List<CommunicationModel>> listOfCommunicationModelController = StreamController<List<CommunicationModel>>();

  void loadCommunicationData() async{

    List<CommunicationModel> listCommunicationModel = await communicationRepository.getListOfCommunicationModels();
    if(listCommunicationModel.isNotEmpty){
      listOfCommunicationModelController.sink.add(listCommunicationModel);
      listOfGlobalCommunicationController.sink.add(listCommunicationModel);
    }

  }

  static void loadCommunicationDataLatest() async{
    communicationRepository = CommunicationRepo();

    List<CommunicationModel> listCommunicationModel = await communicationRepository.getListOfCommunicationModels();
    if(listCommunicationModel.isNotEmpty){
      listOfGlobalCommunicationController.sink.add(listCommunicationModel);
    }

  }

  void dispose(){
    listOfCommunicationModelController.close();
  }


}