import 'dart:async';

import 'package:atlas/communication/model/communication_model.dart';
import 'package:atlas/communication/repo/communication_repo.dart';

class CommunicationBloc{

  late CommunicationRepo  communicationRepository ;
  CommunicationBloc(){
    communicationRepository =CommunicationRepo();
    loadCommunicationData();
  }
  StreamController <List<CommunicationModel>> listOfCommunicationModelController = StreamController<List<CommunicationModel>>();

  void loadCommunicationData() async{

    List<CommunicationModel> listCommunicationModel = await communicationRepository.getListOfCommunicationModels();
    if(listCommunicationModel.isNotEmpty){
      listOfCommunicationModelController.sink.add(listCommunicationModel);
    }

  }

  void dispose(){
    listOfCommunicationModelController.close();
  }


}