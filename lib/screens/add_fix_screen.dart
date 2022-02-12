import 'package:atlas/common/color_constants.dart';
import 'package:atlas/common/common_widget.dart';
import 'package:flutter/material.dart';
class AddFixScreen extends StatefulWidget {
  const  AddFixScreen({Key? key}) : super(key: key);

  @override
  _AddFixScreenState createState() => _AddFixScreenState();
}

class _AddFixScreenState extends State<AddFixScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: customAppBar(),
      drawer: customDrawer(context),

      bottomNavigationBar: getBottomNavigationBarWidget(context),


      body: ListView(
        children: [
          getAddFixTextWidget(),

          Padding(
            padding: const EdgeInsets.only(left: 20,top :10),
            child: Text(
              'Name',
              style: TextStyle(fontFamily: 'Semibold', fontSize: 24),
            ),
          ),

          Padding(
            padding: EdgeInsets.all(18),
            child: TextFormField(

              decoration: InputDecoration(
border: OutlineInputBorder(
  
)
              ),
            ),
          ),




          Padding(
            padding: const EdgeInsets.only(left: 20,top :10),
            child: Text(
              'Message',
              style: TextStyle(fontFamily: 'Semibold', fontSize: 24),
            ),
          ),

          Padding(
            padding: EdgeInsets.all(18),
            child: TextFormField(

maxLines: 7,
              decoration: InputDecoration(
                  border: OutlineInputBorder(

                  )
              ),
            ),
          ),

        ],
      ),
    );
  }

  Container getAddFixTextWidget() {
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
              ' Fault 1 Add Fix',
              style: TextStyle(fontFamily: 'Black', fontSize: 21),
            ),
          ),
        ],
      ),
    );
  }

}
