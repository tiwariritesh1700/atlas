import 'dart:async';

import 'package:atlas/common/api_endpoint.dart';
import 'package:atlas/common/constants.dart';
import 'package:atlas/common/local_storage.dart';
import 'package:atlas/search_screen/model/fault_codes_model.dart';
import 'package:atlas/search_screen/model/tools_docs.dart';
import 'package:atlas/search_screen/model/tools_model.dart';
import 'package:atlas/search_screen/repo/search_repo.dart';
import 'package:rxdart/subjects.dart';

class SearchBloc {
  late SearchRepository _searchRepository;

  SearchBloc() {
    _searchRepository = SearchRepository();
    loadToolsData(LocalStorageService.getStringValueInLocalStorageService(
            key: Constants.PREFS_LANGUAGE) ??
        "");
    this.listOfToolsModelController.stream.listen(_listOfToolsModelListListener);



  }

  final listOfToolsModelController =
      BehaviorSubject<List<ToolsModel>>.seeded([]);

  Stream <List<ToolsModel>> get  listOfToolsModelListStream =>
      listOfToolsModelController.stream.asBroadcastStream();

  StreamSink<List<ToolsModel>> get listOfToolsModelSink {
    return listOfToolsModelController.sink;
  }
  StreamController<List<ToolsDocsModels>> listOfToolsDocModelController =
  BehaviorSubject<List<ToolsDocsModels>>();

  StreamController<List<FaultCodesModels>> listOfFaultCodeModelController =
  BehaviorSubject<List<FaultCodesModels>>();

  void loadToolsData(String languageID) async {
    listOfToolsModelSink.add([]);
    await _searchRepository.callAppDataApi(ApiEndPoint.APP_BASE_URL+ApiEndPoint.GET_APP_DATA_API);

    List<ToolsModel> listOfLanguageModel =
        await _searchRepository.getListOfToolsModels(languageID);
    if (listOfLanguageModel.isNotEmpty) {
      listOfToolsModelSink.add(listOfLanguageModel);
    }
  }

  void loadToolsDocData(String toolID) async {

    List<ToolsDocsModels> listOfDocModels =
    await _searchRepository.getListOfToolDocModels(toolID);
    if (listOfDocModels.isNotEmpty) {
      listOfToolsDocModelController.sink.add(listOfDocModels);
    }
  }

  void loadFaultCodeData(String codeNumber) async {

    List<FaultCodesModels> listOfFaultModels =
    await _searchRepository.getListOfFaultCodeModels(codeNumber);
    if (listOfFaultModels.isNotEmpty) {
      listOfFaultCodeModelController.sink.add(listOfFaultModels);
    }
  }


  void dispose() {
    listOfToolsModelController.close();
    listOfToolsDocModelController.close();
    listOfFaultCodeModelController.close();
  }

  void _listOfToolsModelListListener(List<ToolsModel> event) {
  }
}
