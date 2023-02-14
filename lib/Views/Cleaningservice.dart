import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:imager/imager.dart';

import 'Bottomnavbar.dart';
class cleaningservice extends StatefulWidget {
  const cleaningservice({Key? key}) : super(key: key);

  @override
  State<cleaningservice> createState() => _cleaningserviceState();
}

class _cleaningserviceState extends State<cleaningservice> {
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
                              MaterialPageRoute(builder: (context) => btmbar(),
                              )
                          );
                        }, icon: const Icon(Icons.arrow_back,color: Colors.white,)),
                      ),
                      Container(
                        padding: EdgeInsets.only(left: 7),
                        child: Text("Cleaning Services",style: TextStyle(fontSize: 16.sp,fontWeight: FontWeight.w700,color: Colors.white),),
                      ),
                      Container(
                        padding: EdgeInsets.only(left: 170),
                        child: IconButton(onPressed: (){}, icon: const Icon(Icons.card_travel,color: Colors.white,)),
                      )
                    ],
                  ),
                ),
                Container(
                  padding: EdgeInsets.only(left: 18,right: 210,top: 34,bottom: 4),
                  child: Text("Select your cleaning type",style: TextStyle(fontSize: 16.sp,fontWeight: FontWeight.w600,color: Colors.black),),
                ),
                Container(
                  padding: EdgeInsets.only(left: 18,right: 200,bottom: 34),
                  child: Text("What type of cleaning would you like?",style: TextStyle(fontSize: 12.sp,fontWeight: FontWeight.w400,color: Colors.black),),
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
                                  child: Text("Basic House cleaning",style: TextStyle(fontSize: 16,fontWeight: FontWeight.w500),)
                              ),
                              Container(
                                height: 22.h,
                                width: 84.w,
                                color: Color(0xff29A9AB),
                                  child: Padding(
                                    padding: const EdgeInsets.only(top: 4,bottom: 4),
                                    child: Text("Starts at ₦5000",style: TextStyle(fontSize: 10,fontWeight: FontWeight.w600,
                                    color: Color(0xffFFFFFF)),textAlign: TextAlign.center,),
                                  )
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
                                  padding: EdgeInsets.only(left: 16,right: 34),
                                  child: Text("Deep House cleaning",style: TextStyle(fontSize: 16,fontWeight: FontWeight.w500),)
                              ),
                              Container(
                                  height: 22.h,
                                  width: 84.w,
                                  color: Color(0xff29A9AB),
                                  child: Padding(
                                    padding: const EdgeInsets.only(top: 4,bottom: 4),
                                    child: Text("Starts at ₦5000",style: TextStyle(fontSize: 10,fontWeight: FontWeight.w600,
                                        color: Color(0xffFFFFFF)),textAlign: TextAlign.center,),
                                  )
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
                                  child: Text("Office cleaning",style: TextStyle(fontSize: 16,fontWeight: FontWeight.w500),)
                              ),
                              Container(
                                  height: 22.h,
                                  width: 84.w,
                                  color: Color(0xff29A9AB),
                                  child: Padding(
                                    padding: const EdgeInsets.only(top: 4,bottom: 4),
                                    child: Text("Starts at ₦5000",style: TextStyle(fontSize: 10,fontWeight: FontWeight.w600,
                                        color: Color(0xffFFFFFF)),textAlign: TextAlign.center,),
                                  )
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
                                  padding: EdgeInsets.only(left: 16,right: 53),
                                  child: Text("Pressure washing",style: TextStyle(fontSize: 16,fontWeight: FontWeight.w500),)
                              ),
                              Container(
                                  height: 22.h,
                                  width: 84.w,
                                  color: Color(0xff29A9AB),
                                  child: Padding(
                                    padding: const EdgeInsets.only(top: 4,bottom: 4),
                                    child: Text("Starts at ₦5000",style: TextStyle(fontSize: 10,fontWeight: FontWeight.w600,
                                        color: Color(0xffFFFFFF)),textAlign: TextAlign.center,),
                                  )
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
                            children: <Widget>[
                              Container(
                                  padding: EdgeInsets.only(left: 16),
                                  child: Imager.fromLocal("assets/images/home.png",height: 66.h)
                              ),
                              Container(
                                padding: EdgeInsets.only(left: 16,right: 103),
                                  child: Text("Sanitization",style: TextStyle(fontSize: 16,fontWeight: FontWeight.w500),)
                              ),
                              Container(
                                  height: 22.h,
                                  width: 84.w,
                                  color: Color(0xff29A9AB),
                                  child: Padding(
                                    padding: const EdgeInsets.only(top: 4,bottom: 4),
                                    child: Text("Starts at ₦5000",style: TextStyle(fontSize: 10,fontWeight: FontWeight.w600,
                                        color: Color(0xffFFFFFF)),textAlign: TextAlign.center,),
                                  )
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
