import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:imager/imager.dart';
import 'package:shopping/Views/packagedelivery.dart';

import 'Bottomnavbar.dart';
import 'Foodview.dart';
import 'oversabimarket.dart';
class pickuplaundry extends StatefulWidget {
  const pickuplaundry({Key? key}) : super(key: key);

  @override
  State<pickuplaundry> createState() => _pickuplaundryState();
}

class _pickuplaundryState extends State<pickuplaundry> {
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
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Container(
                  color: Color(0xff29A9AB),
                  padding: EdgeInsets.only(left: 10, right: 10,bottom: 10),
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
                        child: Text("Pickup laundry",style: TextStyle(fontSize: 16.sp,fontWeight: FontWeight.w700,color: Colors.white),),
                      ),
                    ],
                  ),
                ),
                Container(
                  padding: EdgeInsets.only(right: 320,left: 10,bottom:11,top: 22),
                  child: Text("Services",style: TextStyle(fontSize: 16.sp,fontWeight: FontWeight.w600,
                      color: Color(0xff4F4F4F)),),
                ),
                Container(
                  color: Colors.white,
                  height: 450.h,
                  padding: EdgeInsets.only(top:20,left: 20,right: 20),
                  child: GridView(
                      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                          crossAxisCount: 2,
                          crossAxisSpacing: 16
                      ),
                      children: [
                        InkWell(
                          child: Container(
                            padding: EdgeInsets.only(bottom: 4),
                            child:
                            Card (

                              shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.all(Radius.circular(10))
                              ),
                              child: Column(
                                mainAxisSize: MainAxisSize.min,
                                children: <Widget>[
                                  Container(
                                      padding: EdgeInsets.all(16.0),
                                      child: Imager.fromLocal("assets/images/washonly.png",height: 94.h)
                                  ),
                                  Container(
                                      child: Text("Wash only",style: TextStyle(fontSize: 16.sp,fontWeight: FontWeight.w500),)
                                  ),

                                ],
                              ),
                            ),
                          ),
                          onTap: (){
                            Navigator.push(context,
                                MaterialPageRoute(builder: (context) => foodview(),
                                )
                            );
                          },
                        ),
                        InkWell(
                          child: Container(
                            padding: EdgeInsets.only(bottom: 4),
                            child: Card (
                              shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.all(Radius.circular(10))
                              ),
                              child: Column(
                                mainAxisSize: MainAxisSize.min,
                                children: <Widget>[
                                  Container(
                                      padding: EdgeInsets.all(16.0),
                                      child: Imager.fromLocal("assets/images/iron.png",height: 94.h)
                                  ),
                                  Container(
                                      child: Text("Iron Only",style: TextStyle(fontSize: 16.sp,fontWeight: FontWeight.w500),)
                                  ),

                                ],
                              ),
                            ),
                          ),
                          onTap: (){
                            Navigator.push(context,
                                MaterialPageRoute(builder: (context) => oversabimarketview(),
                                )
                            );
                          },
                        ),
                        InkWell(
                          child: Container(
                            padding: EdgeInsets.only(top: 18),
                            child: Card (
                              shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.all(Radius.circular(10))
                              ),
                              child: Column(
                                mainAxisSize: MainAxisSize.min,
                                children: <Widget>[
                                  Container(
                                      padding: EdgeInsets.all(16.0),
                                      child: Imager.fromLocal("assets/images/dry.png",height: 94.h)
                                  ),
                                  Container(
                                      child: Text("Dry Cleaning",style: TextStyle(fontSize: 16.sp,fontWeight: FontWeight.w500),)
                                  ),

                                ],
                              ),
                            ),
                          ),
                          onTap: (){
                            Navigator.push(context,
                                MaterialPageRoute(builder: (context) => pkgdelivery(),
                                )
                            );
                          },
                        ),
                        InkWell(
                          child: Container(
                            padding: EdgeInsets.only(top: 18),
                            child: Card (
                              shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.all(Radius.circular(10))
                              ),
                              child: Column(
                                mainAxisSize: MainAxisSize.min,
                                children: <Widget>[
                                  Container(
                                      padding: EdgeInsets.all(16.0),
                                      child: Imager.fromLocal("assets/images/washing.png",height: 94.h)
                                  ),
                                  Container(
                                      child:Text("Washing & Iron",style: TextStyle(fontSize: 16.sp,fontWeight: FontWeight.w500),)
                                  ),

                                ],
                              ),
                            ),
                          ),
                          onTap: (){
                            Navigator.push(context,
                                MaterialPageRoute(builder: (context) => foodview(),
                                )
                            );
                          },
                        ),
                      ]),
                ),
                Container(
                  padding: EdgeInsets.only(right: 286,left: 20),
                  child: Text("Promotions",style: TextStyle(fontSize: 16.sp,fontWeight: FontWeight.w600,
                      color: Color(0xff4F4F4F)),),
                ),
                Container(
                  color: Colors.white,
                  margin: const EdgeInsets.symmetric(vertical: 20.0),
                  height: 187.h,
                  padding: EdgeInsets.only(left: 20,right: 20),
                  child: ListView(
                    // This next line does the trick.
                    scrollDirection: Axis.horizontal,
                    children: <Widget>[
                      Container(
                        padding: EdgeInsets.only(right: 10),
                        color: Colors.white,
                        child: Imager.fromLocal("assets/images/discount.png",height: 159.h,width: 352.w),
                      ),

                      Container(
                        padding: EdgeInsets.only(right: 10),
                        color: Colors.white,
                        child: Imager.fromLocal("assets/images/listpic1.png",height: 159.h,width: 352.w),
                      ),
                      Container(
                        padding: EdgeInsets.only(right: 10),
                        color: Colors.white,
                        child: Imager.fromLocal("assets/images/listpic2.png",height: 159.h,width: 352.w),
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
