import 'package:atlas/common/color_constants.dart';
import 'package:atlas/common/common_widget.dart';
import 'package:atlas/screens/add_fix_screen.dart';
import 'package:flutter/material.dart';
class FaultCodeScreen extends StatefulWidget {

  @override
  _FaultCodeScreenState createState() => _FaultCodeScreenState();
}

class _FaultCodeScreenState extends State<FaultCodeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: customAppBar(),
      drawer: customDrawer(context),

      bottomNavigationBar: getBottomNavigationBarWidget(context),
      body: ListView(
        children: [
          getProductTextWidget(),
          Container(
            child: Image.asset('assets/images/tool_eg.png',height: 300,width: 300,),

          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                padding: const EdgeInsets.only(left: 14.0,bottom: 8),
                child: Text(
                    'Title Goes Here',
                    style: TextStyle(fontFamily: 'Bold', fontSize: 28)),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 14.0,top: 4),
                child: Text(
                    'Random data lorem ipsum dolor,Random data lorem ipsum dolor Random data lorem ipsum dolor Random data lorem ipsum dolor Random data lorem ipsum dolor Random data lorem ipsum dolor',
                    style: TextStyle(fontFamily: 'Regular', fontSize: 21)),
              ),

              Padding(
                padding: const EdgeInsets.only(left: 14.0,top: 18,bottom: 8),
                child: Text(
                    'Fault Causes',
                    style: TextStyle(fontFamily: 'Bold', fontSize: 28)),


              ),
              Padding(
                padding: const EdgeInsets.only(left: 14.0,top: 18,bottom: 8),
                child: Row(
                  children: [
                    Container(

                      padding:EdgeInsets.all(10),

                      decoration: BoxDecoration(
                        color: Colors.blue,
                        shape: BoxShape.circle

                      ),
                      child: Text(
                          '1',
                          style: TextStyle(fontFamily: 'Regular', fontSize: 21)),
                    ),
                    SizedBox(width: 20,),
                    Expanded(

                      child: Padding(
                        padding: const EdgeInsets.only(right: 8.0),
                        child: Text(
                            'Random data lorem ipsum Random data lorem ipsum dolor dolor',
                            style: TextStyle(fontFamily: 'Regular', fontSize: 21)),
                      ),
                    )
                  ],
                ),


              ),
              Padding(
                padding: const EdgeInsets.only(left: 14.0,top: 18,bottom: 8),
                child: Row(
                  children: [
                    Container(

                      padding:EdgeInsets.all(10),

                      decoration: BoxDecoration(
                          color: Colors.blue,
                          shape: BoxShape.circle

                      ),
                      child: Text(
                          '2',
                          style: TextStyle(fontFamily: 'Regular', fontSize: 21)),
                    ),
                    SizedBox(width: 20,),
                    Expanded(

                      child: Padding(
                        padding: const EdgeInsets.only(right: 8.0),
                        child: Text(
                            'Random data lorem ipsum Random data lorem ipsum dolor dolor',
                            style: TextStyle(fontFamily: 'Regular', fontSize: 21)),
                      ),
                    )
                  ],
                ),


              ),
              Padding(
                padding: const EdgeInsets.only(left: 14.0,top: 18,bottom: 8),
                child: Row(
                  children: [
                    Container(

                      padding:EdgeInsets.all(10),

                      decoration: BoxDecoration(
                          color: Colors.blue,
                          shape: BoxShape.circle

                      ),
                      child: Text(
                          '3',
                          style: TextStyle(fontFamily: 'Regular', fontSize: 21)),
                    ),
                    SizedBox(width: 20,),
                    Expanded(

                      child: Padding(
                        padding: const EdgeInsets.only(right: 8.0),
                        child: Text(
                            'Random data lorem ipsum Random data lorem ipsum dolor dolor',
                            style: TextStyle(fontFamily: 'Regular', fontSize: 21)),
                      ),
                    )
                  ],
                ),


              ),

              Padding(
                padding: const EdgeInsets.only(top:8.0),
                child: Container(
                  height: 80,
                  color: Colors.grey,
                  child: Row(children: [
                    Padding(
                      padding: const EdgeInsets.only(left: 14.0,),
                      child: Text(
                          'Fault Causes',
                          style: TextStyle(fontFamily: 'Bold', fontSize: 24)),


                    ),

                    Spacer(),
                    InkWell(
                      onTap: (){
                        Navigator.push(context, MaterialPageRoute(builder: (context){
                          return AddFixScreen();
                        }));
                      },
                      child: Padding(
                        padding: const EdgeInsets.only(right: 14.0),
                        child: Text(
                            'Add your fix',
                            style: TextStyle(fontFamily: 'Regular', fontSize: 21,decoration: TextDecoration.underline)),


                      ),
                    ),

                  ],),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 14.0,top: 8),
                child: Text(
                    'Rob 12/03/21',
                    style: TextStyle(fontFamily: 'Semibold', fontSize: 21)),


              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Container(
                  alignment: Alignment.center,
                  height: 80,
                  color: Colors.blue[200],
                  child:  Padding(
                    padding: const EdgeInsets.only(left: 17.0),
                    child: Text(
                        'Random data lorem ipsum Random data lorem ipsum dolor dolor',
                        style: TextStyle(fontFamily: 'Regular', fontSize: 21,)),


                  ),
                ),
              ),

              Padding(
                padding: const EdgeInsets.only(left: 14.0,top: 8),
                child: Text(
                    'Stuart 03/08/20',
                    style: TextStyle(fontFamily: 'Semibold', fontSize: 21)),


              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Container(
                  alignment: Alignment.center,
                  height: 80,
                  color: Colors.blue[200],
                  child:  Padding(
                    padding: const EdgeInsets.only(left: 17.0),
                    child: Text(
                        'Random data lorem ipsum Random data lorem ipsum dolor dolor',
                        style: TextStyle(fontFamily: 'Regular', fontSize: 21,)),


                  ),
                ),
              ),

              SizedBox(height: 10,)

            ],
          )
        ],
      ),
    );
  }

  Container getProductTextWidget() {
    return Container(
      height: 80,
      width: double.infinity,

      decoration: BoxDecoration(
        color: ColorConst.themeRed,
        boxShadow: [
          BoxShadow(
            color: ColorConst.themeRed,
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
          Row(children: [
            Padding(
              padding: const EdgeInsets.only(left: 20),
              child: Text(
                'Fault 1',
                style: TextStyle(fontFamily: 'Black', fontSize: 24,color: Colors.white),
              ),
            ),
            Spacer(),
            Padding(
              padding: const EdgeInsets.only(right: 20,),
              child: Builder(
                builder: (BuildContext context) {
                  return GestureDetector(
                    onTap: () {
                    },
                    child: Image.asset(
                      'assets/images/play_icon.png',
                      height: 30,
                      width: 30,
                    ),
                  );
                },
              ),
            ),

          ],),
        ],
      ),
    );
  }

}
