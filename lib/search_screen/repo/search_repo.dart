import 'package:atlas/common/app_database.dart';
import 'package:atlas/common/service_locator.dart';
import 'package:atlas/repo/base_repositiory.dart';
import 'package:atlas/search_screen/model/fault_codes_model.dart';
import 'package:atlas/search_screen/model/tools_docs.dart';
import 'package:atlas/search_screen/model/tools_model.dart';

class SearchRepository extends BaseRepository{

  Future<List<ToolsModel>> getListOfToolsModels(String languageID) async {
    List<ToolsModel> listOfToolsModel = [];
    List<ToolsMoorModelData> listOfToolsMoorModelData = await locator<AppDatabase>().toolsDataDAO.getAllToolsDataByLanguageID(languageID);
    if (listOfToolsMoorModelData.isNotEmpty &&
        listOfToolsMoorModelData.length > 0) {
      listOfToolsMoorModelData.forEach((element) {
        listOfToolsModel.add(
            ToolsModel.convertFromToolsDataMoorModelDataToToolsModel(
                element));
      });

      return listOfToolsModel;
    }
    return listOfToolsModel;
  }

  Future<List<ToolsDocsModels>> getListOfToolDocModels(String toolDocID) async {
    List<ToolsDocsModels> listOfToolsDocModel = [];

    List<ToolsDocMoorModelData> listOfToolsDocMoorModelData =
    await locator<AppDatabase>().toolsDocDAO.getAllToolsDataByToolModelID(toolDocID);

    if (listOfToolsDocMoorModelData.isNotEmpty &&
        listOfToolsDocMoorModelData.length > 0) {
      listOfToolsDocMoorModelData.forEach((element) {
        listOfToolsDocModel.add(
            ToolsDocsModels.convertFromToolsDocDataMoorModelDataToToolsDocModel(
                element));
      });

      return listOfToolsDocModel;
    }
    return listOfToolsDocModel;
  }

  Future<List<FaultCodesModels>> getListOfFaultCodeModels(String codeNumber) async {
    List<FaultCodesModels> listOfFaultCodeModel = [];

    List<FaultCodesMoorModelData> listOfFaultCodeMoorModelData =
    await locator<AppDatabase>().faultCodeDAO.getAllFaultCodeByLanguageID(codeNumber);

    if (listOfFaultCodeMoorModelData.isNotEmpty &&
        listOfFaultCodeMoorModelData.length > 0) {
      listOfFaultCodeMoorModelData.forEach((element) {
        listOfFaultCodeModel.add(
            FaultCodesModels.convertFromFaultDataMoorModelDataToFaultModel(
                element));
      });

      return listOfFaultCodeModel;
    }
    return listOfFaultCodeModel;
  }

}