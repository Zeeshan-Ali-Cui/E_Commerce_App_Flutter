import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:imager/imager.dart';
class foodview extends StatefulWidget {
  const foodview({Key? key}) : super(key: key);

  @override
  State<foodview> createState() => _foodviewState();
}

class _foodviewState extends State<foodview> {
  @override
  Widget build(BuildContext context) {
    return
      AnnotatedRegion
      <SystemUiOverlayStyle>(
        value: SystemUiOverlayStyle.light
            .copyWith(statusBarColor: Color(0xff29A9AB)),

        child: SafeArea(
          child: Scaffold(
            appBar: AppBar(title: Text("Food Delivery",style: TextStyle(fontSize: 18.sp,fontWeight: FontWeight.w700),)
              ,backgroundColor: Color(0xff29A9AB)),
            body:
            SingleChildScrollView(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Container(
                    padding: EdgeInsets.only(top:8,left: 19, right: 20,bottom: 21),
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
                    padding: EdgeInsets.only(left: 19, right: 20),
                    child: Row(
                      children: [
                        Container(
                          padding: EdgeInsets.only(left: 15, right: 101),
                          child: Text("Popular Restaurant Near You",style: TextStyle(fontSize: 16.sp,fontWeight: FontWeight.w700),),
                        ),
                        Container(
                          child: Text("View all",style: TextStyle(fontSize: 16.sp,fontWeight: FontWeight.w500,
                              color: Color(0xff29A9AB)
                          ),),
                        ),
                      ],
                    ),
                  ),
                  Container(
                    color: Colors.white,
                    height: 238.h,
                    padding: EdgeInsets.only(left: 20,right: 20,top: 5),
                    child: ListView(
                      scrollDirection: Axis.horizontal,
                      children: <Widget>[
                        Card(
                          child: Column(
                            children: [
                              Container(
                                padding: EdgeInsets.only(right: 14,left: 14,top: 13),
                                child: Imager.fromLocal("assets/images/food.png",height: 117.h,width: 268.w),
                              ),
                              Container(
                                padding: EdgeInsets.only(right: 128,left: 14,top: 8),
                                child: Text("Chicken Republic",style: TextStyle(fontWeight: FontWeight.w700,fontSize: 18.sp),)
                              ),
                              Container(
                                  padding: EdgeInsets.only(right: 100,left: 14,top: 8),
                                  child: Text("Western cuisine, Fast food, Burger",style: TextStyle(fontWeight: FontWeight.w500,fontSize: 12.sp,
                                  color: Color(0xffA7A7A7)),)
                              ),
                              Row(
                                children: [
                                  Container(
                                      padding: EdgeInsets.only(top: 8),
                                      child: Icon(Icons.delivery_dining_rounded,color: Color(0xff29A9AB),)
                                  ),
                                  Container(
                                      padding: EdgeInsets.only(left: 4,top: 8),
                                      child: Text("Free Delivery",style: TextStyle(fontWeight: FontWeight.w500,fontSize: 14.sp),)
                                  ),
                                  Container(
                                      padding: EdgeInsets.only(left: 20,top: 8),
                                      child: Icon(Icons.timelapse,color: Color(0xff29A9AB),)
                                  ),
                                  Container(
                                      padding: EdgeInsets.only(left: 4,top: 8),
                                      child: Text("15-20mins",style: TextStyle(fontWeight: FontWeight.w500,fontSize: 14.sp),)
                                  ),
                                ],
                              ),
                            ],
                          ),
                        ),
                        Card(
                          child: Column(
                            children: [
                              Container(
                                padding: EdgeInsets.only(right: 14,left: 14,top: 13),
                                child: Imager.fromLocal("assets/images/food.png",height: 117.h,width: 268.w),
                              ),
                              Container(
                                  padding: EdgeInsets.only(right: 128,left: 14,top: 8),
                                  child: Text("Chicken Republic",style: TextStyle(fontWeight: FontWeight.w700,fontSize: 18.sp),)
                              ),
                              Container(
                                  padding: EdgeInsets.only(right: 100,left: 14,top: 8),
                                  child: Text("Western cuisine, Fast food, Burger",style: TextStyle(fontWeight: FontWeight.w500,fontSize: 12.sp,
                                      color: Color(0xffA7A7A7)),)
                              ),
                              Row(
                                children: [
                                  Container(
                                      padding: EdgeInsets.only(top: 8),
                                      child: Icon(Icons.delivery_dining_rounded,color: Color(0xff29A9AB),)
                                  ),
                                  Container(
                                      padding: EdgeInsets.only(left: 4,top: 8),
                                      child: Text("Free Delivery",style: TextStyle(fontWeight: FontWeight.w500,fontSize: 14.sp),)
                                  ),
                                  Container(
                                      padding: EdgeInsets.only(left: 20,top: 8),
                                      child: Icon(Icons.timelapse,color: Color(0xff29A9AB),)
                                  ),
                                  Container(
                                      padding: EdgeInsets.only(left: 4,top: 8),
                                      child: Text("15-20mins",style: TextStyle(fontWeight: FontWeight.w500,fontSize: 14.sp),)
                                  ),
                                ],
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                  Container(
                    padding: EdgeInsets.only(top: 20,left: 15,right: 250),
                    child: Text("Explore Categories",style: TextStyle(fontSize: 16.sp,fontWeight: FontWeight.w700),),
                  ),
                  Container(
                    color: Colors.white,
                    height: 120.h,
                    padding: EdgeInsets.only(left: 20,right: 20,top: 5),
                    child: ListView(
                      scrollDirection: Axis.horizontal,
                      children: <Widget>[
                        Card(
                          color:Color(0xffDF6A55),
                          child: Column(
                            children: [
                              Container(
                                padding: EdgeInsets.only(right: 32,left: 32,top: 13),
                                child: Icon(Icons.accessibility,color: Color(0xffFFFFFF),)
                              ),
                              Container(
                                  padding: EdgeInsets.only(left: 19,right:11,top: 8),
                                  child: Text("Food",style: TextStyle(fontWeight: FontWeight.w700,fontSize: 18.sp,color: Color(0xffFFFFFF)),
                                  ),
                              ),
                              Container(
                                  padding: EdgeInsets.only(left: 19,right:11),
                                  child: Text("305 Places",style: TextStyle(fontWeight: FontWeight.w500,fontSize: 12.sp
                                      ,color: Color(0xffFFFFFF)),)
                              ),
                            ],
                          ),
                        ),
                        Card(
                          color:Color(0xff4F90D0),
                          child: Column(
                            children: [
                              Container(
                                  padding: EdgeInsets.only(right: 32,left: 32,top: 13),
                                  child: Icon(Icons.local_drink_outlined,color: Color(0xffFFFFFF),)
                              ),
                              Container(
                                padding: EdgeInsets.only(left: 19,right:11,top: 8),
                                child: Text("Drink",style: TextStyle(fontWeight: FontWeight.w700,fontSize: 18.sp,color: Color(0xffFFFFFF)),
                                ),
                              ),
                              Container(
                                  padding: EdgeInsets.only(left: 19,right:11),
                                  child: Text("225 Places",style: TextStyle(fontWeight: FontWeight.w500,fontSize: 12.sp
                                      ,color: Color(0xffFFFFFF)),)
                              ),
                            ],
                          ),
                        ),
                        Card(
                          color:Color(0xff54AA8B),
                          child: Column(
                            children: [
                              Container(
                                  padding: EdgeInsets.only(right: 32,left: 32,top: 13),
                                  child: Icon(Icons.local_pizza_outlined,color: Color(0xffFFFFFF),)
                              ),
                              Container(
                                padding: EdgeInsets.only(left: 19,right:11,top: 8),
                                child: Text("Pasteries",style: TextStyle(fontWeight: FontWeight.w700,fontSize: 18.sp,color: Color(0xffFFFFFF)),
                                ),
                              ),
                              Container(
                                  padding: EdgeInsets.only(left: 19,right:11),
                                  child: Text("105 Places",style: TextStyle(fontWeight: FontWeight.w500,fontSize: 12.sp
                                      ,color: Color(0xffFFFFFF)),)
                              ),
                            ],
                          ),
                        ),
                        Card(
                          color:Color(0xffB9896D),
                          child: Column(
                            children: [
                              Container(
                                  padding: EdgeInsets.only(right: 32,left: 32,top: 13),
                                  child: Icon(Icons.cake_outlined,color: Color(0xffFFFFFF),)
                              ),
                              Container(
                                padding: EdgeInsets.only(left: 19,right:11,top: 8),
                                child: Text("Cake",style: TextStyle(fontWeight: FontWeight.w700,fontSize: 18.sp,color: Color(0xffFFFFFF)),
                                ),
                              ),
                              Container(
                                  padding: EdgeInsets.only(left: 19,right:11),
                                  child: Text("1305 Places",style: TextStyle(fontWeight: FontWeight.w500,fontSize: 12.sp
                                      ,color: Color(0xffFFFFFF)),)
                              ),
                            ],
                          ),
                        ),

                      ],
                    ),
                  ),
                  Container(
                    padding: EdgeInsets.only(top: 20,left: 15,right: 250),
                    child: Text("Recommended",style: TextStyle(fontSize: 16.sp,fontWeight: FontWeight.w700),),
                  ),

                  Container(
                    color: Colors.white,
                    height: 275.h,
                    padding: EdgeInsets.only(left: 20,right: 20,top: 5),
                    child: ListView(
                      scrollDirection: Axis.horizontal,
                      children: <Widget>[
                        Card(
                          child: Column(
                            children: [
                              Container(
                                padding: EdgeInsets.only(top: 13),
                                child: Imager.fromLocal("assets/images/food2.png",height: 117.h,width: 157.w),
                              ),
                              Container(
                                  padding: EdgeInsets.only(left: 14,top: 8),
                                  child: Text("Chicken Republic",style: TextStyle(fontWeight: FontWeight.w700,fontSize: 18.sp),)
                              ),
                              Container(
                                  padding: EdgeInsets.only(left: 14,top: 8),
                                  child: Text("Western cuisine, Fast food, Burger",style: TextStyle(fontWeight: FontWeight.w500,fontSize: 12.sp,
                                      color: Color(0xffA7A7A7)),)
                              ),
                              Row(
                                children: [
                                  Container(
                                      padding: EdgeInsets.only(top: 8),
                                      child: Icon(Icons.delivery_dining_rounded,color: Color(0xff29A9AB),)
                                  ),
                                  Container(
                                      padding: EdgeInsets.only(left: 4,top: 8),
                                      child: Text("Free Delivery",style: TextStyle(fontWeight: FontWeight.w500,fontSize: 14.sp),)
                                  ),
                                ],
                              ),
                              Row(
                                children: [
                                  Container(
                                      padding: EdgeInsets.only(top: 8),
                                      child: Icon(Icons.timelapse,color: Color(0xff29A9AB),)
                                  ),
                                  Container(
                                      padding: EdgeInsets.only(left: 4,top: 8),
                                      child: Text("15-20mins",style: TextStyle(fontWeight: FontWeight.w500,fontSize: 14.sp),)
                                  ),
                                ],
                              ),

                            ],
                          ),
                        ),
                        Card(
                          child: Column(
                            children: [
                              Container(
                                padding: EdgeInsets.only(top: 13),
                                child: Imager.fromLocal("assets/images/food2.png",height: 117.h,width: 157.w),
                              ),
                              Container(
                                  padding: EdgeInsets.only(left: 14,top: 8),
                                  child: Text("Chicken Republic",style: TextStyle(fontWeight: FontWeight.w700,fontSize: 18.sp),)
                              ),
                              Container(
                                  padding: EdgeInsets.only(left: 14,top: 8),
                                  child: Text("Western cuisine, Fast food, Burger",style: TextStyle(fontWeight: FontWeight.w500,fontSize: 12.sp,
                                      color: Color(0xffA7A7A7)),)
                              ),
                              Row(
                                children: [
                                  Container(
                                      padding: EdgeInsets.only(top: 8),
                                      child: Icon(Icons.delivery_dining_rounded,color: Color(0xff29A9AB),)
                                  ),
                                  Container(
                                      padding: EdgeInsets.only(left: 4,top: 8),
                                      child: Text("Free Delivery",style: TextStyle(fontWeight: FontWeight.w500,fontSize: 14.sp),)
                                  ),
                                ],
                              ),
                              Row(
                                children: [
                                  Container(
                                      padding: EdgeInsets.only(top: 8),
                                      child: Icon(Icons.timelapse,color: Color(0xff29A9AB),)
                                  ),
                                  Container(
                                      padding: EdgeInsets.only(left: 4,top: 8),
                                      child: Text("15-20mins",style: TextStyle(fontWeight: FontWeight.w500,fontSize: 14.sp),)
                                  ),
                                ],
                              ),

                            ],
                          ),
                        ),
                        Card(
                          child: Column(
                            children: [
                              Container(
                                padding: EdgeInsets.only(top: 13),
                                child: Imager.fromLocal("assets/images/food2.png",height: 117.h,width: 157.w),
                              ),
                              Container(
                                  padding: EdgeInsets.only(left: 14,top: 8),
                                  child: Text("Chicken Republic",style: TextStyle(fontWeight: FontWeight.w700,fontSize: 18.sp),)
                              ),
                              Container(
                                  padding: EdgeInsets.only(left: 14,top: 8),
                                  child: Text("Western cuisine, Fast food, Burger",style: TextStyle(fontWeight: FontWeight.w500,fontSize: 12.sp,
                                      color: Color(0xffA7A7A7)),)
                              ),
                              Row(
                                children: [
                                  Container(
                                      padding: EdgeInsets.only(top: 8),
                                      child: Icon(Icons.delivery_dining_rounded,color: Color(0xff29A9AB),)
                                  ),
                                  Container(
                                      padding: EdgeInsets.only(left: 4,top: 8),
                                      child: Text("Free Delivery",style: TextStyle(fontWeight: FontWeight.w500,fontSize: 14.sp),)
                                  ),
                                ],
                              ),
                              Row(
                                children: [
                                  Container(
                                      padding: EdgeInsets.only(top: 8),
                                      child: Icon(Icons.timelapse,color: Color(0xff29A9AB),)
                                  ),
                                  Container(
                                      padding: EdgeInsets.only(left: 4,top: 8),
                                      child: Text("15-20mins",style: TextStyle(fontWeight: FontWeight.w500,fontSize: 14.sp),)
                                  ),
                                ],
                              ),

                            ],
                          ),
                        ),
                      ],
                    ),
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
                          child: Imager.fromLocal("assets/images/rec1.png",height: 159.h,width: 350.w),
                        ),

                        Container(
                          padding: EdgeInsets.only(right: 10),
                          color: Colors.white,
                          child: Imager.fromLocal("assets/images/rec1.png",height: 159.h,width: 350.w),
                        ),
                        Container(
                          padding: EdgeInsets.only(right: 10),
                          color: Colors.white,
                          child: Imager.fromLocal("assets/images/rec1.png",height: 159.h,width: 350.w),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),


          ),
        ),
      );
  }
}
