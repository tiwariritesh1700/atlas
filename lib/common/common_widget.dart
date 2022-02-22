import 'package:atlas/common/color_constants.dart';
import 'package:atlas/common/constants.dart';
import 'package:atlas/common/local_storage.dart';
import 'package:atlas/communication/bloc/communication_bloc.dart';
import 'package:atlas/communication/model/communication_model.dart';
import 'package:atlas/language/bloc/language_bloc.dart';
import 'package:atlas/language/model/language_model.dart';
import 'package:atlas/main.dart';
import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

PreferredSize customAppBar() {
  return PreferredSize(
    preferredSize: Size.fromHeight(100.0),
    child: AppBar(
      backgroundColor: ColorConst.primaryLight,
      automaticallyImplyLeading: false,
      shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.vertical(bottom: Radius.circular(20))),
      flexibleSpace:
          Column(mainAxisAlignment: MainAxisAlignment.center, children: [
        Row(
          children: [
            Expanded(
              child: Container(
                alignment: Alignment.topLeft,
                child: Builder(
                  builder: (BuildContext context) {
                    return GestureDetector(
                      onTap: () {
                        Scaffold.of(context).openDrawer();
                      },
                      child: Padding(
                        padding: const EdgeInsets.only(top: 40.0),
                        child: Image.asset(
                          'assets/images/menu_icon.png',
                          height: 70,
                          width: 70,
                        ),
                      ),
                    );
                  },
                ),
              ),
            ),
            Expanded(
              child: Center(
                child: Padding(
                  padding: const EdgeInsets.only(top: 40.0),
                  child: Image.asset(
                    'assets/images/logo.png',
                    height: 70,
                    width: 90,
                  ),
                ),
              ),
            ),
            Expanded(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Builder(builder: (context) {
                    return InkWell(
                      onTap: () {
                        CommunicationBloc.loadCommunicationDataLatest();
                        showDialog(
                            context: context,
                            builder: (context) {
                              return commonCommunicationDialog();
                            });
                      },
                      child: StreamBuilder<String>(
                          stream: selectedCommunicationTitleController.stream
                              .asBroadcastStream(),
                          builder: (contextt, snapshot) {
                            return Padding(
                              padding:
                                  const EdgeInsets.only(top: 40.0, left: 10),
                              child: Center(
                                child: Text(
                                  snapshot.data ?? "",
                                  style: TextStyle(color: Colors.white),
                                ),
                              ),
                            );
                          }),
                    );
                  }),
                  Builder(
                    builder: (context) {
                      return InkWell(
                        onTap: () {
                          LanguageBloc.loadLanguageDataLatest();

                          showDialog(
                              context: context,
                              builder: (context) {
                                return commonLanguageDialog();
                              });
                        },
                        child: StreamBuilder<String>(
                            stream: selectedLanguageModelController.stream
                                .asBroadcastStream(),
                            builder: (context, snapshot) {
                              return Center(
                                child: Padding(
                                  padding: const EdgeInsets.only(
                                    top: 40.0,
                                  ),
                                  child: snapshot.hasData &&
                                          snapshot.data != null &&
                                          snapshot.data != ""
                                      ? CircleAvatar(
                                          backgroundImage:
                                              NetworkImage(snapshot.data ?? ""),
                                          radius: 16,
                                        )
                                      : CircleAvatar(
                                          backgroundColor: Colors.red,
                                          radius: 16,
                                        ),
                                ),
                              );
                            }),
                      );
                    },
                  )
                ],
              ),
            )
          ],
        )
      ]),
    ),
  );
}

Container customDrawer(BuildContext context) {
  return Container(
    child: Theme(
      data: Theme.of(context).copyWith(
          // Set the transparency here
          canvasColor: Colors.transparent,
          primaryColor: Colors.black),
      child: Drawer(
        elevation: 0,
        child: Column(
          children: [
//    SizedBox(height: 144),
            Container(
              height: 144,
              child: Row(
                children: [
                  InkWell(
                    onTap: () {
                      Navigator.pop(context);
                    },
                    child: Padding(
                      padding: const EdgeInsets.only(left: 17, top: 28),
                      child: Image.asset(
                        'assets/images/close.png',
                        color: Colors.white,
                        height: 30,
                        width: 30,
                      ),
                    ),
                  ),
                ],
              ),
            ),
            Expanded(
              child: Container(
                color: Colors.black54,
                child: ListView(
                  padding: EdgeInsets.zero,
                  children: [
                    getCommonTextWidgetForDrawer('Training hub', 0),
                    getCommonTextWidgetForDrawer('Supported & help', 0),
                    getCommonTextWidgetForDrawer('Communication  styles', 0),
                    getCommonTextWidgetForDrawer('FAQs', 1),
                    getCommonTextWidgetForDrawer('Privacy policy', 2),
                    getCommonTextWidgetForDrawer('Terms & conditions', 3),
                  ],
                ),
              ),
            )
          ],
        ),
      ),
    ),
  );
}

getCommonTextWidgetForDrawer(String value, int tapNumber) {
  return InkWell(
    onTap: () {
      switch (tapNumber) {
        case 0:
          {}
          break;
        case 1:
          {
            //Case of FAQ

            launch(LocalStorageService.getStringValueInLocalStorageService(
                    key: Constants.PREFS_FAQ) ??
                "");
          }
          break;
        case 2:
          {
            //Case of Privacy policy
            launch(LocalStorageService.getStringValueInLocalStorageService(
                    key: Constants.PREFS_PRIVACY_POLICY) ??
                "");
          }
          break;
        case 3:
          {
            //Case of Terms and Condition

            launch(LocalStorageService.getStringValueInLocalStorageService(
                    key: Constants.PREFS_TERMS_AND_CONDITION) ??
                "");
          }
          break;
      }
    },
    child: Padding(
      padding: const EdgeInsets.only(left: 18.0, top: 17),
      child: Text(
        value,
        style:
            TextStyle(fontFamily: 'Regular', color: Colors.white, fontSize: 28),
      ),
    ),
  );
}

Container getBottomNavigationBarWidget(BuildContext context) {
  return Container(
      alignment: Alignment.center,
      padding: EdgeInsets.only(top: 4),
      height: 100,
      width: double.infinity,
      decoration: BoxDecoration(
          color: Colors.black54,
          borderRadius: BorderRadius.vertical(top: Radius.circular(18))),
      child: Padding(
        padding: const EdgeInsets.only(left: 20.0, right: 20.0),
        child: ElevatedButton(
          onPressed: () {
            Navigator.pop(context);
          },
          child: Text(
            'Go back',
            style: TextStyle(fontFamily: 'Semibold', fontSize: 21),
          ),
          style: ElevatedButton.styleFrom(
              minimumSize: Size(MediaQuery.of(context).size.width, 55)),
        ),
      ));
}

Widget commonLanguageDialog() {
  return StreamBuilder<List<LanguageModel>>(
      stream: listOfGlobalLanguageModelController.stream.asBroadcastStream(),
      builder: (context, snapshot) {
        return Dialog(
          child: snapshot.hasData &&
                  snapshot.data != null &&
                  snapshot.data!.length > 0
              ? Container(
                  constraints: BoxConstraints(
                    maxHeight: snapshot.data!.length > 7 ? 400 : 200,
                    minHeight: 200,
                  ),
                  child: ListView.separated(
                      itemBuilder: (context, index) {
                        return InkWell(
                          onTap: () {
                            LocalStorageService
                                .addStringValueInLocalStorageService(
                                    key: Constants.PREFS_LANGUAGE,
                                    value: snapshot.data![index].id);
                            LocalStorageService
                                .addStringValueInLocalStorageService(
                                    key: Constants.PREFS_LANGUAGE_ICON,
                                    value: snapshot.data![index].icon);
                            searchBloc.loadToolsData(LocalStorageService
                                    .getStringValueInLocalStorageService(
                                        key: Constants.PREFS_LANGUAGE) ??
                                "");

                            selectedLanguageModelController
                                .add(snapshot.data![index].icon);

                            Navigator.pop(context);
                          },
                          child: Padding(
                            padding: const EdgeInsets.all(4.0),
                            child: Row(children: [
                              Padding(
                                padding: const EdgeInsets.all(4.0),
                                child: CircleAvatar(
                                  backgroundColor: Colors.red,
                                  backgroundImage:
                                      NetworkImage(snapshot.data![index].icon),
                                  radius: 14,
                                ),
                              ),
                              Padding(
                                padding: const EdgeInsets.only(left: 8),
                                child: Text(
                                  snapshot.data![index].name,
                                  style: TextStyle(
                                      fontFamily: 'SemiBold', fontSize: 14),
                                ),
                              ),
                              Spacer(),
                              Builder(
                                builder: (BuildContext context) {
                                  return GestureDetector(
                                    onTap: () {},
                                    child: Image.asset(
                                      'assets/images/imgNext.png',
                                      height: 14,
                                      width: 14,
                                    ),
                                  );
                                },
                              ),
                            ]),
                          ),
                        );
                      },
                      separatorBuilder: (context, index) {
                        return Padding(
                          padding: const EdgeInsets.only(top: 4.0, bottom: 4),
                          child: Divider(
                            height: 1,
                            thickness: 1,
                            color: ColorConst.themeLightGrey,
                          ),
                        );
                      },
                      itemCount: snapshot.data!.length),
                )
              : Container(
                  height: 400,
                  child: Center(child: CircularProgressIndicator())),
        );
      });
}

Widget commonCommunicationDialog() {
  return StreamBuilder<List<CommunicationModel>>(
      stream: listOfGlobalCommunicationController.stream.asBroadcastStream(),
      builder: (context, snapshot) {
        return Dialog(
          child: snapshot.hasData &&
                  snapshot.data != null &&
                  snapshot.data!.length > 0
              ? Container(
                  constraints: BoxConstraints(
                    maxHeight: snapshot.data!.length > 7 ? 400 : 270,
                    minHeight: 200,
                  ),
                  child: ListView.separated(
                      itemBuilder: (context, index) {
                        return InkWell(
                          onTap: () {
                            LocalStorageService
                                .addStringValueInLocalStorageService(
                                    key: Constants.PREFS_COMMUNICATION,
                                    value: snapshot.data![index].id);
                            LocalStorageService
                                .addStringValueInLocalStorageService(
                                    key: Constants.PREFS_COMMUNICATION_NAME,
                                    value: snapshot.data![index].title);

                            selectedCommunicationTitleController
                                .add(snapshot.data![index].title);
                            searchBloc.loadToolsData(LocalStorageService
                                    .getStringValueInLocalStorageService(
                                        key: Constants.PREFS_LANGUAGE) ??
                                "");
                            Navigator.pop(context);
                          },
                          child: Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Row(children: [
                              Padding(
                                padding: const EdgeInsets.only(left: 8),
                                child: Text(
                                  snapshot.data![index].title,
                                  style: TextStyle(
                                      fontFamily: 'SemiBold', fontSize: 17),
                                ),
                              ),
                              Spacer(),
                              Builder(
                                builder: (BuildContext context) {
                                  return GestureDetector(
                                    onTap: () {},
                                    child: Image.asset(
                                      'assets/images/imgNext.png',
                                      height: 14,
                                      width: 14,
                                    ),
                                  );
                                },
                              ),
                            ]),
                          ),
                        );
                      },
                      separatorBuilder: (context, index) {
                        return Padding(
                          padding: const EdgeInsets.only(top: 4.0, bottom: 4),
                          child: Divider(
                            height: 1,
                            thickness: 1,
                            color: ColorConst.themeLightGrey,
                          ),
                        );
                      },
                      itemCount: snapshot.data!.length),
                )
              : Container(
                  height: 400,
                  child: Center(child: CircularProgressIndicator())),
        );
      });
}
