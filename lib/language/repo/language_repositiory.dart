import 'package:atlas/common/app_database.dart';
import 'package:atlas/common/service_locator.dart';
import 'package:atlas/language/model/language_model.dart';
import 'package:atlas/repo/base_repositiory.dart';

class LanguageRepository  extends BaseRepository{
  Future<List<LanguageModel>> getListOfLanguageModels() async {
    List<LanguageModel> listOfLanguageModel = [];
    List<LanguageMoorModelData> listOfLanguageMoorModelData =
        await locator<AppDatabase>().languageDAO.getAllLanguageData();

    if (listOfLanguageMoorModelData.isNotEmpty &&
        listOfLanguageMoorModelData.length > 0) {
      listOfLanguageMoorModelData.forEach((element) {
        listOfLanguageModel.add(
            LanguageModel.convertFromLanguageMoorModelDataToLanguageModel(
                element));
      });

      return listOfLanguageModel;
    }
    return listOfLanguageModel;
  }
}
