import 'package:atlas/common/color_constants.dart';
import 'package:atlas/common/common_widget.dart';
import 'package:atlas/screens/fault_codes_screen.dart';
import 'package:atlas/screens/product_detail_screen.dart';
import 'package:flutter/material.dart';

class SearchScreen extends StatefulWidget {
  const SearchScreen({Key? key}) : super(key: key);

  @override
  _SearchScreenState createState() => _SearchScreenState();
}

class _SearchScreenState extends State<SearchScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: ColorConst.themeLight,
      appBar: customAppBar(),
      drawer: customDrawer(context),
      bottomSheet: DraggableScrollableSheet( expand : false,initialChildSize:0.08,minChildSize:0.001,builder: (context,controller){
        return getBottomSheetContainer();

      }),
      body: Column(
crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          getSearchAndScanWidget(),
          Padding(
            padding: const EdgeInsets.only(left:18.0,top: 12,bottom: 17,),
            child: Text('By tool',style: TextStyle(fontFamily: 'Black',fontSize: 24),),
          ),

          getListOfToolsWidgets(),
        ],
      ),

    );
  }

  Container getBottomSheetContainer() {
    return Container(
      alignment: Alignment.topCenter,
      padding: EdgeInsets.only(top: 4),
      height: 80,
      width: double.infinity,
      decoration: BoxDecoration(
        color: Colors.black54,
borderRadius: BorderRadius.vertical(top: Radius.circular(18))
      ),
      child: Text("Last synced: 11:32 11/03/2021",style: TextStyle(fontSize: 21,fontFamily: 'Semibold',color: Colors.white),),
    );
  }


  Container getSearchAndScanWidget() {
    return Container(
      width: double.infinity,
      padding: EdgeInsets.only(bottom: 14),

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
            padding: const EdgeInsets.all(12.0),
            child: TextFormField(
              decoration: InputDecoration(
                filled: true,

                  hintText: 'Search for fault codes',
                prefixIcon: Icon(Icons.search,size: 30,color: ColorConst.textGrey,),
                    fillColor: Colors.white,
                  enabled: true,


                  suffixIcon: GestureDetector(
                    onTap: () {
Navigator.push(context, MaterialPageRoute(builder: (context){
  return FaultCodeScreen();
}));

                    },
                    child: Container(
                      alignment: Alignment.center,
                        height: 47,
                        width: 47,

                        decoration: BoxDecoration(
                          color: Colors.green,
                          borderRadius: BorderRadius.circular(8)
                        ),
                        child: Text('Go', style: TextStyle(fontSize:14,color: Colors.white),)),
                  ),
                  border: InputBorder.none
              ),
            ),
          ),

Padding(
  padding: const EdgeInsets.symmetric(vertical: 8,horizontal: 12),
  child:   Row(

    children: [

      Expanded(

        child: Divider(

          thickness: 1 ,

          color: Colors.grey,

        ),

      ),

      Container(

        decoration: BoxDecoration(

          borderRadius: BorderRadius.circular(10),

          color: Colors.grey

        ),

        padding: EdgeInsets.only(top: 2,bottom: 2,left: 10,right: 10),

        child:Text(

          'or',

          style: TextStyle(fontFamily: 'Black'),

        ) ,

      ),

      Expanded(

        child: Divider(

          thickness: 1 ,

          color: Colors.grey,

        ),

      ),

    ],

  ),
),
          
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 8,horizontal: 12),
            child: ElevatedButton(onPressed: (){},
style: ElevatedButton.styleFrom(primary: Colors.green,padding: EdgeInsets.symmetric(vertical: 12)),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Image.asset('assets/images/imgScan.png',height: 24,width: 24,),
                SizedBox(width: 10),
                Text('Scan QR Code ',style: TextStyle(fontFamily: 'Bold',fontSize: 18),)
              ],
            )),
          )
        ],
      ),
    );
  }
  Flexible getListOfToolsWidgets() {
    return Flexible(
      child: ListView.separated(itemBuilder: (context,index){
        return InkWell(
          onTap: (){
          Navigator.push(context, MaterialPageRoute(builder: (context){
            return ProductDetailView();
          }));
          },
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Row(
                children:[ Padding(
                  padding: const EdgeInsets.only(left:10.0),
                  child: CircleAvatar(
                    radius: 28,
                    child: Image.asset('assets/images/tool_eg.png'),
                  ),
                ),
                  Padding(
                    padding: const EdgeInsets.only(left: 20),
                    child: Text(
                      'Latest tools,',
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

}
