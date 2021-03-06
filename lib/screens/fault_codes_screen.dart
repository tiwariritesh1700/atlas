import 'package:atlas/common/color_constants.dart';
import 'package:atlas/common/common_widget.dart';
import 'package:atlas/common/video_screen.dart';
import 'package:atlas/screens/add_fix_screen.dart';
import 'package:atlas/search_screen/bloc/search_bloc.dart';
import 'package:atlas/search_screen/model/fault_codes_model.dart';
import 'package:flutter/material.dart';

class FaultCodeScreen extends StatefulWidget {
  final SearchBloc bloc;
  final String code;

  FaultCodeScreen({Key? key, required this.bloc, required this.code})
      : super(key: key);

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
      body: StreamBuilder<List<FaultCodesModels>>(
          stream: widget.bloc.listOfFaultCodeModelController.stream
              .asBroadcastStream(),
          builder: (context, snapshot) {
            if (snapshot.hasData &&
                snapshot.data != null &&
                snapshot.data!.length >= 0) {
              return ListView(
                children: [
                  getProductTextWidget(snapshot),
                  Container(
                    child: Image.network(
                      snapshot.data![0].faultEqImage ?? "",
                      height: 300,
                      width: 300,
                    ),
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(left: 14.0, bottom: 8),
                        child: Text(snapshot.data![0].title ?? "",
                            style: TextStyle(fontFamily: 'Bold', fontSize: 28)),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(left: 14.0, top: 4),
                        child: Text(snapshot.data![0].description ?? "",
                            style:
                                TextStyle(fontFamily: 'Regular', fontSize: 21)),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(
                            left: 14.0, top: 18, bottom: 8),
                        child: Text('Fault Causes',
                            style: TextStyle(fontFamily: 'Bold', fontSize: 28)),
                      ),
                      new Column(
                        children: new List.generate(
                            snapshot.data![0].causes!.length,
                            (index) => new Padding(
                                  padding: const EdgeInsets.only(
                                      left: 14.0, top: 18, bottom: 8),
                                  child: Row(
                                    children: [
                                      Container(
                                        padding: EdgeInsets.all(10),
                                        decoration: BoxDecoration(
                                            color: Colors.blue,
                                            shape: BoxShape.circle),
                                        child: Text(index.toString(),
                                            style: TextStyle(
                                                fontFamily: 'Regular',
                                                fontSize: 21)),
                                      ),
                                      SizedBox(
                                        width: 20,
                                      ),
                                      Expanded(
                                        child: Padding(
                                          padding:
                                              const EdgeInsets.only(right: 8.0),
                                          child: Text(
                                              snapshot.data![0].causes![index],
                                              style: TextStyle(
                                                  fontFamily: 'Regular',
                                                  fontSize: 21)),
                                        ),
                                      )
                                    ],
                                  ),
                                )),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(top: 8.0),
                        child: Container(
                          height: 80,
                          color: Colors.grey,
                          child: Row(
                            children: [
                              Padding(
                                padding: const EdgeInsets.only(
                                  left: 14.0,
                                ),
                                child: Text('Fault Causes',
                                    style: TextStyle(
                                        fontFamily: 'Bold', fontSize: 24)),
                              ),
                              Spacer(),
                              InkWell(
                                onTap: () {
                                  Navigator.push(context,
                                      MaterialPageRoute(builder: (context) {
                                    return AddFixScreen();
                                  }));
                                },
                                child: Padding(
                                  padding: const EdgeInsets.only(right: 14.0),
                                  child: Text('Add your fix',
                                      style: TextStyle(
                                          fontFamily: 'Regular',
                                          fontSize: 21,
                                          decoration:
                                              TextDecoration.underline)),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                      SizedBox(
                        height: 10,
                      )
                    ],
                  )
                ],
              );
            }

            return Center(
              child: CircularProgressIndicator(),
            );
          }),
    );
  }

  Container getProductTextWidget(
      AsyncSnapshot<List<FaultCodesModels>> snapshot) {
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
            offset: Offset(-4, -30),
          )
        ],
        borderRadius: BorderRadius.vertical(bottom: Radius.circular(20)),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Row(
            children: [
              Padding(
                padding: const EdgeInsets.only(left: 20),
                child: Text(
                  snapshot.data![0].title ?? "",
                  style: TextStyle(
                      fontFamily: 'Black', fontSize: 24, color: Colors.white),
                ),
              ),
              Spacer(),
              Padding(
                padding: const EdgeInsets.only(
                  right: 20,
                ),
                child: Builder(
                  builder: (BuildContext context) {
                    return GestureDetector(
                      onTap: () {

                        try {
                          if (snapshot.data![0].videoLink != null && snapshot.data![0].videoLink!.length>0) {

                            Navigator.push(context, MaterialPageRoute(builder: (BuildContext context) {

                              return VideoApp(url: snapshot.data![0].videoLink??"");
                            }));

                          }
                        } catch (e) {
                          print(e);
                        }
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
            ],
          ),
        ],
      ),
    );
  }

  @override
  void initState() {
    super.initState();
    widget.bloc.loadFaultCodeData(widget.code);
  }
}
