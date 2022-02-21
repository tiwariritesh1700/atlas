import 'package:atlas/common/color_constants.dart';
import 'package:atlas/common/common_widget.dart';
import 'package:atlas/search_screen/bloc/search_bloc.dart';
import 'package:atlas/search_screen/model/tools_docs.dart';
import 'package:atlas/search_screen/model/tools_model.dart';
import 'package:flutter/material.dart';

class ProductDetailView extends StatefulWidget {
  final ToolsModel toolsModel;
  final SearchBloc bloc;

  ProductDetailView({Key? key, required this.toolsModel, required this.bloc}) : super(key: key);

  @override
  _ProductDetailViewState createState() => _ProductDetailViewState();
}

class _ProductDetailViewState extends State<ProductDetailView> {


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: customAppBar(),
      drawer: customDrawer(context),
      body: ListView(
        children: [
          getProductTextWidget(),
          Container(
            child: Image.network(
              widget.toolsModel.image ?? "",
              height: 300,
              width: 300,
            ),
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                padding: const EdgeInsets.only(left: 14.0, bottom: 8),
                child: Text('Tool Information',
                    style: TextStyle(fontFamily: 'Bold', fontSize: 28)),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 14.0, top: 4),
                child: Text(widget.toolsModel.description ?? "",
                    style: TextStyle(fontFamily: 'Regular', fontSize: 21)),
              ),

              Padding(
                padding: const EdgeInsets.only(left: 14.0, top: 18, bottom: 8),
                child: Text('Documents',
                    style: TextStyle(fontFamily: 'Bold', fontSize: 28)),
              ),


            ],
          ),
          StreamBuilder<List<ToolsDocsModels>>(
              stream: widget.bloc.listOfToolsDocModelController.stream.asBroadcastStream(),
              builder: (context, snapshot) {
                if(snapshot.hasData && snapshot.data!=null&& snapshot.data!.length>0) {
                  return ListView.builder(
                    scrollDirection: Axis.vertical,
                    shrinkWrap: true,
                    itemBuilder: (BuildContext context, int index) {
                      return Padding(
                        padding:
                        const EdgeInsets.only(left: 14.0, right: 14, bottom: 8),
                        child: Container(
                          decoration:
                          BoxDecoration(border: Border.all(color: Colors.grey)),
                          child: Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Row(children: [
                              Padding(
                                padding: const EdgeInsets.only(left: 10.0),
                                child: Image.network(
                                  snapshot.data![index].image ?? "",
                                  height: 48,
                                  width: 48,
                                ),
                              ),
                              Padding(
                                padding: const EdgeInsets.only(left: 20),
                                child: Text(
                                  snapshot.data![index].imageName ??
                                      "",
                                  style: TextStyle(
                                      fontFamily: 'SemiBold',
                                      fontWeight: FontWeight.bold,
                                      fontSize: 18),
                                ),
                              ),
                              Spacer(),
                              Builder(
                                builder: (BuildContext context) {
                                  return GestureDetector(
                                    onTap: () {},
                                    child: Image.asset(
                                      'assets/images/imgNext.png',
                                      height: 25,
                                      width: 25,
                                    ),
                                  );
                                },
                              ),
                            ]),
                          ),
                        ),
                      );
                    },
                    itemCount: snapshot.data!.length,
                  );
                }
                return Center(child: CircularProgressIndicator(),);
              }
          ),
          // Padding(
          //   padding: const EdgeInsets.only(left:14.0,right: 14,bottom: 8),
          //   child: Container(
          //     decoration: BoxDecoration(
          //       border:Border.all(color: Colors.grey)
          //     ),
          //     child: Padding(
          //       padding: const EdgeInsets.all(8.0),
          //       child: Row(
          //           children:[ Padding(
          //             padding: const EdgeInsets.only(left:10.0),
          //             child: Image.asset('assets/images/pdf_eg.png',height: 48,width: 48,),
          //           ),
          //             Padding(
          //               padding: const EdgeInsets.only(left: 20),
          //               child: Text(
          //                 'Instruction Meal',
          //                 style: TextStyle(fontFamily: 'SemiBold',fontWeight: FontWeight.bold, fontSize: 18),
          //               ),
          //             ),
          //             Spacer(),
          //             Builder(
          //               builder: (BuildContext context) {
          //                 return GestureDetector(
          //                   onTap: () {
          //                   },
          //                   child: Image.asset(
          //                     'assets/images/imgNext.png',
          //                     height: 25,
          //                     width: 25,
          //                   ),
          //                 );
          //               },
          //             ),
          //
          //           ]
          //       ),
          //     ),
          //   ),
          // ),
          // Padding(
          //   padding: const EdgeInsets.only(left:14.0,right: 14),
          //   child: Container(
          //     decoration: BoxDecoration(
          //         border:Border.all(color: Colors.grey)
          //     ),
          //     child: Padding(
          //       padding: const EdgeInsets.all(8.0),
          //       child: Row(
          //           children:[ Padding(
          //             padding: const EdgeInsets.only(left:10.0),
          //             child: Image.asset('assets/images/pdf_eg.png',height: 48,width: 48,),
          //           ),
          //             Padding(
          //               padding: const EdgeInsets.only(left: 20),
          //               child: Text(
          //                 'Instruction Meal',
          //                 style: TextStyle(fontFamily: 'SemiBold',fontWeight: FontWeight.bold, fontSize: 18),
          //               ),
          //             ),
          //             Spacer(),
          //             Builder(
          //               builder: (BuildContext context) {
          //                 return GestureDetector(
          //                   onTap: () {
          //                   },
          //                   child: Image.asset(
          //                     'assets/images/imgNext.png',
          //                     height: 25,
          //                     width: 25,
          //                   ),
          //                 );
          //               },
          //             ),
          //
          //           ]
          //       ),
          //     ),
          //   ),
          // ),
          SizedBox(
            height: 10,
          )
        ],
      ),
      // bottomSheet: DraggableScrollableSheet( expand : false,initialChildSize:0.08,minChildSize:0.001,builder: (context,controller){
      //   return getBottomSheetContainer();
      //
      // }),
      bottomNavigationBar: getBottomNavigationBarWidget(context),
    );
  }

  Container getProductTextWidget() {
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
            offset: Offset(-4, -30),
          )
        ],
        borderRadius: BorderRadius.vertical(bottom: Radius.circular(20)),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Padding(
            padding: const EdgeInsets.only(left: 20),
            child: Text(
              widget.toolsModel.name ?? "",
              style: TextStyle(fontFamily: 'Black', fontSize: 21),
            ),
          ),
        ],
      ),
    );
  }

  @override
  void initState() {
    super.initState();

    widget.bloc.loadToolsDocData(widget.toolsModel.id??"");
  }
}
