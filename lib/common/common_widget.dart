import 'package:atlas/common/color_constants.dart';
import 'package:flutter/material.dart';

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
            Center(
              child: Padding(
                padding: const EdgeInsets.only(top: 40.0, right: 10),
                child: CircleAvatar(
                  backgroundColor: Colors.red,
                  radius: 28,
                ),
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
          canvasColor: Colors
              .transparent,
          primaryColor: Colors.black
      ),
      child: Drawer(
        elevation: 0,
        child: Column(

          children: [
//    SizedBox(height: 144),
            Container(
              height: 144,
              child: Row(children: [
                InkWell(
                  onTap: (){
                    Navigator.pop(context);
                  },
                  child: Padding(
                    padding: const EdgeInsets.only(left:17,top: 28),
                    child: Image.asset('assets/images/close.png',color: Colors.white,height: 30,width: 30,),
                  ),
                ),

              ],),
            ),
            Expanded(
              child: Container(
                color: Colors.black54,
                child: ListView(
                  padding: EdgeInsets.zero,

                  children: [


                    getCommonTextWidgetForDrawer('Training hub'),
                    getCommonTextWidgetForDrawer('Supported & help'),
                    getCommonTextWidgetForDrawer('Communication  styles'),
                    getCommonTextWidgetForDrawer('FAQs'),
                    getCommonTextWidgetForDrawer('Privacy policy'),
                    getCommonTextWidgetForDrawer('Terms & conditions'),

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

getCommonTextWidgetForDrawer(String value){
  return  Padding(
    padding: const EdgeInsets.only(left:18.0,top: 17),
    child: Text(value,style: TextStyle(fontFamily: 'Regular',color: Colors.white,fontSize: 28),),
  );
}

