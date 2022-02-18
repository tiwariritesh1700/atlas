import 'package:atlas/common/app_database.dart';
import 'package:atlas/common/service_locator.dart';
import 'package:atlas/communication/model/communication_model.dart';

class CommunicationRepo{
  Future<List<CommunicationModel>> getListOfCommunicationModels() async {
    List<CommunicationModel> listOfCommunicationModel = [];
    List<CommunicationMoorModelData> listOfCommunicationMoorModelData =
    await locator<AppDatabase>().communicationDAO.getAllCommunicationData() ;

    if (listOfCommunicationMoorModelData.isNotEmpty &&
        listOfCommunicationMoorModelData.length > 0) {
      listOfCommunicationMoorModelData.forEach((element) {
        listOfCommunicationModel.add(
            CommunicationModel.convertFromCommunicationMoorModelDataToCommunicationModel(
                element));
      });

      return listOfCommunicationModel;
    }
    return listOfCommunicationModel;
  }

}