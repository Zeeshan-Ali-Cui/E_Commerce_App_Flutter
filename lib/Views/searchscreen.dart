import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:imager/imager.dart';
class searchscreen extends StatefulWidget {
  const searchscreen({Key? key}) : super(key: key);

  @override
  State<searchscreen> createState() => _searchscreenState();
}

class _searchscreenState extends State<searchscreen> {
  @override
  Widget build(BuildContext context) {
    return
      AnnotatedRegion
    <SystemUiOverlayStyle>(
      value: SystemUiOverlayStyle.dark
          .copyWith(statusBarColor: Colors.white),

      child: SafeArea(
        child: Scaffold(
          body:
          Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Container(
                padding: EdgeInsets.only(top:37,left: 19, right: 20,bottom: 24),
                child: TextField(
                  decoration: InputDecoration(
                      border: OutlineInputBorder(),
                      labelText: 'Search',
                      prefixIcon: Icon(Icons.search,),
                    suffixIcon: Icon(Icons.favorite_outlined, color: Color(0xff29A9AB))

                  ),
                ),
              ),
              Container(
                padding: EdgeInsets.only(left: 19, right: 20,bottom: 23),
                child: Row(
                  children: [
                    Container(
                      padding: EdgeInsets.only(left: 15, right: 230),
                      child: Text("Results for Food",style: TextStyle(fontSize: 12.sp,fontWeight: FontWeight.w600),),
                    ),
                    Container(
                      child: Text("231 found",style: TextStyle(fontSize: 12.sp,fontWeight: FontWeight.w600,
                          color: Color(0xff29A9AB)
                      ),),
                    ),
                  ],
                ),
              ),
              Container(
                color: Colors.white,
                height: 680.h,
                padding: EdgeInsets.only(left: 19,right: 20),
                child:ListView(
                  padding: const EdgeInsets.all(8),
                  children: <Widget>[
                    Container(
                      child: Card (
                        child: Row(
                          mainAxisSize: MainAxisSize.min,
                          children: <Widget>[
                            Container(
                              height:115.h,
                              padding: EdgeInsets.only(left:14,right: 10),
                              child: Imager.fromLocal("assets/images/order.png",height: 82.h,width: 107.w),
                            ),
                            Container(
                              child: Column(
                                mainAxisSize: MainAxisSize.min,
                                children: [
                                  Container(
                                      padding: EdgeInsets.only(bottom: 6),
                                    child: Text("Egg Sauce Spaghetti",style: TextStyle(fontWeight: FontWeight.w600,fontSize: 14.sp),)
                                  ),
                                  Container(
                                      padding: EdgeInsets.only(bottom: 17),
                                      child: Text("Chicken Republic",style: TextStyle(fontWeight: FontWeight.w400,fontSize: 12.sp),)
                                  ),
                                  Container(

                                      padding: EdgeInsets.only(bottom: 16,right: 50),
                                      child: Text("₦1,200",style: TextStyle(fontWeight: FontWeight.w700,fontSize: 14.sp,
                                          color: Color(0xff29A9AB)),)
                                  ),
                                ],
                              ),
                            ),
                            Container(
                              padding: EdgeInsets.only(left:60,right: 10,top: 69),
                              child: Container(
                                height: 20.h,
                                  width: 39.w,
                                  color: Color(0xff29A9AB1A),
                                  child: Text(" Buy ",
                                style: TextStyle(fontSize: 14.sp,fontWeight: FontWeight.w600,color: Color(0xff29A9AB))
                                    ,
                                  textAlign: TextAlign.center,))
                            ),
                          ],
                        ),
                      ),
                    ),
                    Container(
                      child: Card (

                        child: Row(
                          mainAxisSize: MainAxisSize.min,
                          children: <Widget>[
                            Container(
                              height:115.h,
                              padding: EdgeInsets.only(left:14,right: 10),
                              child: Imager.fromLocal("assets/images/order.png",height: 82.h,width: 107.w),
                            ),
                            Container(
                              child: Column(
                                mainAxisSize: MainAxisSize.min,
                                children: [
                                  Container(
                                      padding: EdgeInsets.only(bottom: 6),
                                      child: Text("Egg Sauce Spaghetti",style: TextStyle(fontWeight: FontWeight.w600,fontSize: 14.sp),)
                                  ),
                                  Container(
                                      padding: EdgeInsets.only(bottom: 17),
                                      child: Text("Chicken Republic",style: TextStyle(fontWeight: FontWeight.w400,fontSize: 12.sp),)
                                  ),
                                  Container(

                                      padding: EdgeInsets.only(bottom: 16,right: 50),
                                      child: Text("₦1,200",style: TextStyle(fontWeight: FontWeight.w700,fontSize: 14.sp,
                                          color: Color(0xff29A9AB)),)
                                  ),
                                ],
                              ),
                            ),
                            Container(
                                padding: EdgeInsets.only(left:60,right: 10,top: 69),
                                child: Container(
                                    height: 20.h,
                                    width: 39.w,
                                    color: Color(0xff29A9AB1A),
                                    child: Text(" Buy ",
                                      style: TextStyle(fontSize: 14.sp,fontWeight: FontWeight.w600,color: Color(0xff29A9AB))
                                      ,
                                      textAlign: TextAlign.center,))
                            ),
                          ],
                        ),
                      ),
                    ),
                    Container(
                      child: Card (
                        child: Row(
                          mainAxisSize: MainAxisSize.min,
                          children: <Widget>[
                            Container(
                              height:115.h,
                              padding: EdgeInsets.only(left:14,right: 10),
                              child: Imager.fromLocal("assets/images/order.png",height: 82.h,width: 107.w),
                            ),
                            Container(
                              child: Column(
                                mainAxisSize: MainAxisSize.min,
                                children: [
                                  Container(
                                      padding: EdgeInsets.only(bottom: 6),
                                      child: Text("Egg Sauce Spaghetti",style: TextStyle(fontWeight: FontWeight.w600,fontSize: 14.sp),)
                                  ),
                                  Container(
                                      padding: EdgeInsets.only(bottom: 17),
                                      child: Text("Chicken Republic",style: TextStyle(fontWeight: FontWeight.w400,fontSize: 12.sp),)
                                  ),
                                  Container(

                                      padding: EdgeInsets.only(bottom: 16,right: 50),
                                      child: Text("₦1,200",style: TextStyle(fontWeight: FontWeight.w700,fontSize: 14.sp,
                                          color: Color(0xff29A9AB)),)
                                  ),
                                ],
                              ),
                            ),
                            Container(
                                padding: EdgeInsets.only(left:60,right: 10,top: 69),
                                child: Container(
                                    height: 20.h,
                                    width: 39.w,
                                    color: Color(0xff29A9AB1A),
                                    child: Text(" Buy ",
                                      style: TextStyle(fontSize: 14.sp,fontWeight: FontWeight.w600,color: Color(0xff29A9AB))
                                      ,
                                      textAlign: TextAlign.center,))
                            ),
                          ],
                        ),
                      ),
                    ),
                    Container(
                      child: Card (
                        child: Row(
                          mainAxisSize: MainAxisSize.min,
                          children: <Widget>[
                            Container(
                              height:115.h,
                              padding: EdgeInsets.only(left:14,right: 10),
                              child: Imager.fromLocal("assets/images/order.png",height: 82.h,width: 107.w),
                            ),
                            Container(
                              child: Column(
                                mainAxisSize: MainAxisSize.min,
                                children: [
                                  Container(
                                      padding: EdgeInsets.only(bottom: 6),
                                      child: Text("Egg Sauce Spaghetti",style: TextStyle(fontWeight: FontWeight.w600,fontSize: 14.sp),)
                                  ),
                                  Container(
                                      padding: EdgeInsets.only(bottom: 17),
                                      child: Text("Chicken Republic",style: TextStyle(fontWeight: FontWeight.w400,fontSize: 12.sp),)
                                  ),
                                  Container(

                                      padding: EdgeInsets.only(bottom: 16,right: 50),
                                      child: Text("₦1,200",style: TextStyle(fontWeight: FontWeight.w700,fontSize: 14.sp,
                                          color: Color(0xff29A9AB)),)
                                  ),
                                ],
                              ),
                            ),
                            Container(
                                padding: EdgeInsets.only(left:60,right: 10,top: 69),
                                child: Container(
                                    height: 20.h,
                                    width: 39.w,
                                    color: Color(0xff29A9AB1A),
                                    child: Text(" Buy ",
                                      style: TextStyle(fontSize: 14.sp,fontWeight: FontWeight.w600,color: Color(0xff29A9AB))
                                      ,
                                      textAlign: TextAlign.center,))
                            ),
                          ],
                        ),
                      ),
                    ),
                    Container(
                      child: Card (

                        child: Row(
                          mainAxisSize: MainAxisSize.min,
                          children: <Widget>[
                            Container(
                              height:115.h,
                              padding: EdgeInsets.only(left:14,right: 10),
                              child: Imager.fromLocal("assets/images/order.png",height: 82.h,width: 107.w),
                            ),
                            Container(
                              child: Column(
                                mainAxisSize: MainAxisSize.min,
                                children: [
                                  Container(
                                      padding: EdgeInsets.only(bottom: 6),
                                      child: Text("Egg Sauce Spaghetti",style: TextStyle(fontWeight: FontWeight.w600,fontSize: 14.sp),)
                                  ),
                                  Container(
                                      padding: EdgeInsets.only(bottom: 17),
                                      child: Text("Chicken Republic",style: TextStyle(fontWeight: FontWeight.w400,fontSize: 12.sp),)
                                  ),
                                  Container(

                                      padding: EdgeInsets.only(bottom: 16,right: 50),
                                      child: Text("₦1,200",style: TextStyle(fontWeight: FontWeight.w700,fontSize: 14.sp,
                                          color: Color(0xff29A9AB)),)
                                  ),
                                ],
                              ),
                            ),
                            Container(
                                padding: EdgeInsets.only(left:60,right: 10,top: 69),
                                child: Container(
                                    height: 20.h,
                                    width: 39.w,
                                    color: Color(0xff29A9AB1A),
                                    child: Text(" Buy ",
                                      style: TextStyle(fontSize: 14.sp,fontWeight: FontWeight.w600,color: Color(0xff29A9AB))
                                      ,
                                      textAlign: TextAlign.center,))
                            ),
                          ],
                        ),
                      ),
                    ),
                    Container(
                      child: Card (
                        child: Row(
                          mainAxisSize: MainAxisSize.min,
                          children: <Widget>[
                            Container(
                              height:115.h,
                              padding: EdgeInsets.only(left:14,right: 10),
                              child: Imager.fromLocal("assets/images/order.png",height: 82.h,width: 107.w),
                            ),
                            Container(
                              child: Column(
                                mainAxisSize: MainAxisSize.min,
                                children: [
                                  Container(
                                      padding: EdgeInsets.only(bottom: 6),
                                      child: Text("Egg Sauce Spaghetti",style: TextStyle(fontWeight: FontWeight.w600,fontSize: 14.sp),)
                                  ),
                                  Container(
                                      padding: EdgeInsets.only(bottom: 17),
                                      child: Text("Chicken Republic",style: TextStyle(fontWeight: FontWeight.w400,fontSize: 12.sp),)
                                  ),
                                  Container(

                                      padding: EdgeInsets.only(bottom: 16,right: 50),
                                      child: Text("₦1,200",style: TextStyle(fontWeight: FontWeight.w700,fontSize: 14.sp,
                                          color: Color(0xff29A9AB)),)
                                  ),
                                ],
                              ),
                            ),
                            Container(
                                padding: EdgeInsets.only(left:60,right: 10,top: 69),
                                child: Container(
                                    height: 20.h,
                                    width: 39.w,
                                    color: Color(0xff29A9AB1A),
                                    child: Text(" Buy ",
                                      style: TextStyle(fontSize: 14.sp,fontWeight: FontWeight.w600,color: Color(0xff29A9AB))
                                      ,
                                      textAlign: TextAlign.center,))
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
