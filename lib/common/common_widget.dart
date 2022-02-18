import 'package:atlas/common/color_constants.dart';
import 'package:atlas/common/constants.dart';
import 'package:atlas/common/local_storage.dart';
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
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Builder(
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
            Center(
              child: Padding(
                padding: const EdgeInsets.only(top: 40.0),
                child: Image.asset(
                  'assets/images/logo.png',
                  height: 70,
                  width: 90,
                ),
              ),
            ),
            StreamBuilder<String>(
              stream: selectedLanguageModelController.stream.asBroadcastStream(),
              builder: (context, snapshot) {
                return Center(
                  child: Padding(
                    padding: const EdgeInsets.only(top: 40.0, right: 10),
                    child: snapshot.hasData && snapshot.data!=null && snapshot.data!=""? CircleAvatar(
                      backgroundImage: NetworkImage(snapshot.data??""),
                      radius: 28,
                    ): CircleAvatar(
                    backgroundColor: Colors.red,
                radius: 28,
                ),
                  ),
                );
              }
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

getCommonTextWidgetForDrawer(String value, int tapNumber)  {
  return InkWell(
    onTap: () {
      switch (tapNumber) {
        case 0:
          {}
          break;
        case 1:
          {
            //Case of FAQ

            launch(LocalStorageService.getStringValueInLocalStorageService(key: Constants.PREFS_FAQ)??"");
          }
          break;
        case 2:
          {
            //Case of Privacy policy
            launch(LocalStorageService.getStringValueInLocalStorageService(key: Constants.PREFS_PRIVACY_POLICY)??"");


          }
          break;
        case 3:
          {
            //Case of Terms and Condition

            launch(LocalStorageService.getStringValueInLocalStorageService(key: Constants.PREFS_TERMS_AND_CONDITION)??"");

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
