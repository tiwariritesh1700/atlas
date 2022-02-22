
import 'package:atlas/bloc/master_bloc.dart';
import 'package:atlas/common/color_constants.dart';
import 'package:atlas/common/common_widget.dart';
import 'package:atlas/common/constants.dart';
import 'package:atlas/common/local_storage.dart';
import 'package:atlas/language/bloc/language_bloc.dart';
import 'package:atlas/language/model/language_model.dart';
import 'package:atlas/communication/ui/communication_screen.dart';
import 'package:atlas/main.dart';
import 'package:atlas/search_screen/ui/search_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
class LanguageScreen extends StatefulWidget {
  const LanguageScreen({Key? key}) : super(key: key);

  @override
  _LanguageScreenState createState() => _LanguageScreenState();
}

class _LanguageScreenState extends State<LanguageScreen> {


LanguageBloc _languageBloc = LanguageBloc();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: ColorConst.themeLight,
      appBar: customAppBar(),
      drawer: customDrawer(context),
      body: Column(
        children: [
          getWelcomeWidget() ,
          getListOfLanguagesWidgets()

        ],
      ),

    );
  }

  Flexible getListOfLanguagesWidgets() {
    return Flexible(
      child: StreamBuilder<List<LanguageModel>>(
        stream: _languageBloc.listOfLanguageModelController.stream.asBroadcastStream(),
        builder: (context, snapshot) {
          if(snapshot.hasData && snapshot.data!=null&& snapshot.data!.length>0){
            return ListView.separated(itemBuilder: (context,index){
              return InkWell(
                onTap: (){

                  LocalStorageService.addStringValueInLocalStorageService(key:Constants.PREFS_LANGUAGE, value: snapshot.data![index].id);
                  LocalStorageService.addStringValueInLocalStorageService(key:Constants.PREFS_LANGUAGE_ICON, value: snapshot.data![index].icon);

                  selectedLanguageModelController.add(snapshot.data![index].icon);
                  Navigator.push(context, MaterialPageRoute(builder: (context){
                    return CommunicationScreen();
                  }));
                },
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Row(
                      children:[
                        Padding(
                          padding: const EdgeInsets.all(10.0),
                          child: CircleAvatar(
                            backgroundColor: Colors.red,
                            backgroundImage: NetworkImage(snapshot.data![index].icon),
                            radius: 22,
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(left: 20),
                          child: Text(
                            snapshot.data![index].name,
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



Container getWelcomeWidget() {
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
            'Welcome,',
            style: TextStyle(fontFamily: 'Black', fontSize: 21),
          ),
        ),
        Padding(
          padding: const EdgeInsets.only(left: 20.0,top: 3.0),
          child: Text('Please select your preferred language',style: TextStyle(fontFamily: 'Regular', fontSize: 18)),
        ),
      ],
    ),
  );
}


@override
  void initState() {
super.initState();
SystemChrome.setSystemUIOverlayStyle(SystemUiOverlayStyle(
  statusBarColor: Colors.transparent,
));

  }
}
