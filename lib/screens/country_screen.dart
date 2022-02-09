import 'package:atlas/common/color_constants.dart';
import 'package:atlas/common/common_widget.dart';
import 'package:atlas/screens/language_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class CountryScreen extends StatefulWidget {
  const CountryScreen({Key? key}) : super(key: key);

  @override
  _CountryScreenState createState() => _CountryScreenState();
}

class _CountryScreenState extends State<CountryScreen> {
  @override
  void initState() {
    SystemChrome.setSystemUIOverlayStyle(SystemUiOverlayStyle(
      statusBarColor: Colors.transparent,
    ));
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: ColorConst.themeLight,
      appBar: customAppBar(),
      drawer: customDrawer(context),
      body: Column(
        children: [
          getWelcomeWidget(),
          getListOfCountrysWidgets()

        ],
      ),
    );
  }

  Flexible getListOfCountrysWidgets() {
    return Flexible(
          child: ListView.separated(itemBuilder: (context,index){
            return InkWell(
              onTap: (){
                Navigator.push(context, MaterialPageRoute(builder: (context){
                  return LanguageScreen();
                }));
              },
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Row(
                  children:[ Padding(
                    padding: const EdgeInsets.only(left:10.0),
                    child: CircleAvatar(
                      backgroundColor: Colors.red,
                      radius: 28,
                    ),
                  ),
                    Padding(
                      padding: const EdgeInsets.only(left: 20),
                      child: Text(
                        'English UK,',
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
          }, itemCount: 17),
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
}
