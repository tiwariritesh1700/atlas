import 'package:atlas/bloc/master_bloc.dart';
import 'package:atlas/common/api_endpoint.dart';
import 'package:atlas/common/color_constants.dart';
import 'package:atlas/common/common_widget.dart';
import 'package:atlas/common/constants.dart';
import 'package:atlas/common/local_storage.dart';
import 'package:atlas/communication/bloc/communication_bloc.dart';
import 'package:atlas/communication/model/communication_model.dart';
import 'package:atlas/language/ui/language_screen.dart';
import 'package:atlas/repo/base_repositiory.dart';
import 'package:atlas/search_screen/ui/search_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class CommunicationScreen extends StatefulWidget {
  const CommunicationScreen({Key? key}) : super(key: key);

  @override
  _CommunicationScreenState createState() => _CommunicationScreenState();
}

class _CommunicationScreenState extends State<CommunicationScreen> {
  @override
  void initState() {

    super.initState();

  }

  CommunicationBloc  communicationBloc  =CommunicationBloc();


  @override
  Widget build(BuildContext context) {

    return Scaffold(
      backgroundColor: ColorConst.themeLight,
      appBar: customAppBar(),
      drawer: customDrawer(context),
      body: Column(
        children: [
          getLanguageTextWidget(),
          getListOfCommunicationWidgets()

        ],
      ),
    );
  }

  Flexible getListOfCommunicationWidgets() {
    return Flexible(
          child: StreamBuilder<List<CommunicationModel>>(
            stream: communicationBloc.listOfCommunicationModelController.stream,
            builder: (context, snapshot) {
      if(snapshot.hasData && snapshot.data!=null&& snapshot.data!.length>0){

        return ListView.separated(itemBuilder: (context,index){
                return InkWell(
                  onTap: (){
                    LocalStorageService.addStringValueInLocalStorageService(key:Constants.PREFS_COMMUNICATION, value: snapshot.data![index].id);
                    BaseRepository.callAppDataApi(ApiEndPoint.APP_BASE_URL+ApiEndPoint.GET_APP_DATA_API);

                    Navigator.push(context, MaterialPageRoute(builder: (context){
                      return SearchScreen();
                    }));
                  },
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Row(
                      children:[
                        Padding(
                          padding: const EdgeInsets.only(left: 20),
                          child: Text(
                            snapshot.data![index].title,
                            style: TextStyle(fontFamily: 'SemiBold', fontSize: 18),
                          ),
                        ),
                        Spacer(),
                        Builder(
                          builder: (BuildContext context) {
                            return GestureDetector(
                              onTap: () {
                              },
                              child: Image.asset(
                                'assets/images/imgNext.png',
                                height: 25,
                                width: 25,
                              ),
                            );
                          },
                        ),

                      ]
                    ),
                  ),
                );
              }, separatorBuilder: (context,index){
                return Padding(
                  padding: const EdgeInsets.only(top: 4.0,bottom: 4),
                  child: Divider(
                    height: 1,
                    thickness: 1,
                    color: ColorConst.themeLightGrey,
                  ),
                );
              }, itemCount: snapshot.data!.length);
      }
      return Center(child: CircularProgressIndicator());

            }
          ),
        );
  }


  Container getLanguageTextWidget() {
    return Container(
      height: 80,
      width: double.infinity,

      decoration: BoxDecoration(
        color: ColorConst.themeLightGrey,
        boxShadow: [
          BoxShadow(
            color: ColorConst.themeLightGrey,
            blurRadius: 4.0,
            spreadRadius: 14.0,
            offset: Offset(-4,-30),
          )
        ],
        borderRadius:
        BorderRadius.vertical(bottom: Radius.circular(20)),
      ),

      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Padding(
            padding: const EdgeInsets.only(left: 20),
            child: Text(
              'And now,',
              style: TextStyle(fontFamily: 'Black', fontSize: 21),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 20.0,top: 3.0),
            child: Text('Please select your communication option',style: TextStyle(fontFamily: 'Regular', fontSize: 18)),
          ),
        ],
      ),
    );
  }
}
