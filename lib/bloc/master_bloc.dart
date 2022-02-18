import 'package:atlas/common/api_endpoint.dart';
import 'package:atlas/language/bloc/language_bloc.dart';
import 'package:atlas/repo/base_repositiory.dart';

class MasterBloc extends BaseRepository{
  late LanguageBloc _languageBloc;

   MasterBloc(){
      getMasterData(ApiEndPoint.APP_BASE_URL+ApiEndPoint.GET_MASTER_DATA_API);
   }
   void getMasterData(String url) async{
   await callMasterApi(url);
   _languageBloc  = LanguageBloc();
   _languageBloc.loadLanguageData();
   }
}