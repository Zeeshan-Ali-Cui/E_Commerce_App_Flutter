import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:imager/imager.dart';
import 'package:shopping/Views/pestcontrol.dart';
class residential extends StatefulWidget {
  const residential({Key? key}) : super(key: key);

  @override
  State<residential> createState() => _residentialState();
}

class _residentialState extends State<residential> {
  @override
  Widget build(BuildContext context) {
    return
      AnnotatedRegion
      <SystemUiOverlayStyle>(
        value: SystemUiOverlayStyle.light
            .copyWith(statusBarColor: Color(0xff29A9AB)),

        child: SafeArea(
          child: Scaffold(
            body:
            Column(
              children: [
                Container(
                  color: Color(0xff29A9AB),
                  padding: EdgeInsets.only(left: 20, right: 20,bottom: 10),
                  child: Row(
                    children: [
                      Container(
                        child: IconButton(onPressed: (){
                          Navigator.push(context,
                              MaterialPageRoute(builder: (context) => pestcontrol(),
                              )
                          );
                        }, icon: const Icon(Icons.arrow_back,color: Colors.white,)),
                      ),
                      Container(
                        padding: EdgeInsets.only(left: 7),
                        child: Text("Pest control",style: TextStyle(fontSize: 16.sp,fontWeight: FontWeight.w700,color: Colors.white),),
                      ),
                      Container(
                        padding: EdgeInsets.only(left: 200),
                        child: IconButton(onPressed: (){}, icon: const Icon(Icons.card_travel,color: Colors.white,)),
                      )
                    ],
                  ),
                ),
                Container(
                  padding: EdgeInsets.only(left: 18,right: 210,top: 34,bottom: 4),
                  child: Text("Select your pest control area",style: TextStyle(fontSize: 16.sp,fontWeight: FontWeight.w600,color: Colors.black),),
                ),
                Container(
                  padding: EdgeInsets.only(left: 18,right: 200,bottom: 34),
                  child: Text("Where wold you like us to control the pest?",style: TextStyle(fontSize: 12.sp,fontWeight: FontWeight.w400,color: Colors.black),),
                ),
                Container(
                  color: Colors.white,
                  margin: const EdgeInsets.symmetric(vertical: 20.0),
                  height: 700.h,
                  padding: EdgeInsets.only(left: 20,right: 20),
                  child: ListView(
                    // This next line does the trick.
                    children: <Widget>[
                      Container(
                        height: 88.h,
                        width: 388.w,
                        padding: EdgeInsets.only(right: 10),
                        color: Colors.white,
                        child:
                        Card (
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.all(Radius.circular(10))
                          ),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: <Widget>[
                              Container(
                                  padding: EdgeInsets.only(left: 16),
                                  child: Imager.fromLocal("assets/images/home.png",height: 66.h)
                              ),
                              Container(
                                  padding: EdgeInsets.only(left: 16,right: 34),
                                  child: Text("Residential Area (Personal Houses)",style: TextStyle(fontSize: 16,fontWeight: FontWeight.w500),)
                              ),

                            ],
                          ),
                        ),
                      ),
                      Container(
                        height: 88.h,
                        width: 388.w,
                        padding: EdgeInsets.only(right: 10),
                        color: Colors.white,
                        child:
                        Card (
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.all(Radius.circular(10))
                          ),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: <Widget>[
                              Container(
                                  padding: EdgeInsets.only(left: 16),
                                  child: Imager.fromLocal("assets/images/home.png",height: 66.h)
                              ),
                              Container(
                                  padding: EdgeInsets.only(left: 18,right: 60),
                                  child: Text("Public Area (Offices,Schools)",style: TextStyle(fontSize: 16,fontWeight: FontWeight.w500),
                                    textAlign: TextAlign.center,)
                              ),

                            ],
                          ),
                        ),
                      ),
                      Container(
                        height: 88.h,
                        width: 388.w,
                        padding: EdgeInsets.only(right: 10),
                        color: Colors.white,
                        child:
                        Card (
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.all(Radius.circular(10))
                          ),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: <Widget>[
                              Container(
                                  padding: EdgeInsets.only(left: 16),
                                  child: Imager.fromLocal("assets/images/home.png",height: 66.h)
                              ),
                              Container(
                                  padding: EdgeInsets.only(left: 16,right: 79),
                                  child: Text("Open Land (Farm land,Sites)",style: TextStyle(fontSize: 16,fontWeight: FontWeight.w500),)
                              ),


                            ],
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      );
  }
}
