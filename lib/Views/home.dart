import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:imager/imager.dart';
import 'package:shopping/Views/Cleaningservice.dart';
import 'package:shopping/Views/Foodview.dart';
import 'package:shopping/Views/oversabimarket.dart';
import 'package:shopping/Views/packagedelivery.dart';
import 'package:shopping/Views/pestcontrol.dart';

import 'Pickuplaundry.dart';
class homepage extends StatefulWidget {
  const homepage({Key? key}) : super(key: key);

  @override
  State<homepage> createState() => _homepageState();
}

class _homepageState extends State<homepage> {
  @override
  Widget build(BuildContext context) {
    return AnnotatedRegion
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
                padding: EdgeInsets.only(left: 20, right: 20,bottom: 24),
                child: Row(
                  children: [
                    Container(
                      child: Imager.fromLocal("assets/images/profile.png",height: 32.h,width: 32.w)
                    ),
                    Container(
                      padding: EdgeInsets.only(left: 7),
                      child: Text("Hello Mathew!",style: TextStyle(fontSize: 16.sp,fontWeight: FontWeight.w700,color: Colors.black),),
                    ),
                    Container(
                      padding: EdgeInsets.only(left: 203),
                      child: IconButton(onPressed: (){}, icon: const Icon(Icons.notifications)),
                    )
                  ],
                ),
              ),
              Container(
                width: 388.w,
                height: 159.h,
                child: Card(
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10),
                  ),
                  color: Color(0xff29A9AB),
                    child:Column(
                      children: [
                        Container(
                          padding: EdgeInsets.only(top: 28,left: 17,right: 273,bottom: 8),
                            child: Text("Wallet Balance",style:
                            TextStyle(fontSize: 14.sp,fontWeight: FontWeight.w500,color: Colors.white),)
                        ),
                        Row(
                          children: [
                            Container(
                              padding: EdgeInsets.only(left:17,right: 130,bottom: 10),
                              child: Text("₦120,000.00",style:
                              TextStyle(fontSize: 36.sp,fontWeight: FontWeight.w800,color: Colors.white),),
                            ),
                            Container(
                              padding: EdgeInsets.only(bottom: 10),
                              child: InkWell(child: Icon(Icons.remove_red_eye,color: Colors.white30,))
                            ),

                          ],
                        ),
                        Container(
                          color: Colors.transparent,
                          padding: EdgeInsets.only(left: 17,right: 230),
                          child: Text("Payment Method: Card",style:
                          TextStyle(fontSize: 14.sp,fontWeight: FontWeight.w500,color: Colors.white),),
                        ),
                      ],
                    ),
                ),
              ),
              Container(
                padding: EdgeInsets.only(top: 27,right: 286,left: 20),
                child: Text("Services Near you",style: TextStyle(fontSize: 14.sp,fontWeight: FontWeight.w600,
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
                      child: Imager.fromLocal("assets/images/listpic1.png",height: 120.h,width: 187.w),
                    ),

                    Container(
                      padding: EdgeInsets.only(right: 10),
                      color: Colors.white,
                      child: Imager.fromLocal("assets/images/listpic2.png",height: 120.h,width: 187.w),
                    ),
                    Container(
                      padding: EdgeInsets.only(right: 10),
                      color: Colors.white,
                      child: Imager.fromLocal("assets/images/listpic2.png",height: 120.h,width: 187.w),
                    ),
                  ],
                ),
              ),
              Container(
                padding: EdgeInsets.only(right: 320,left: 10,bottom:11),
                child: Text("Services",style: TextStyle(fontSize: 14.sp,fontWeight: FontWeight.w600,
                    color: Color(0xff4F4F4F)),),
              ),
                  Container(
                    color: Colors.white,
                    height: 310.h,
                    padding: EdgeInsets.only(top:20,left: 20,right: 20),
                    child: GridView(
                        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                            crossAxisCount: 3,
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
                                      child: Imager.fromLocal("assets/images/fooddelivery.png",height: 50.15.h)
                                    ),
                                    Container(
                                        child: Text("Food Delivery")
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
                                        child: Imager.fromLocal("assets/images/OverSabi Market.png",height: 50.15.h)
                                    ),
                                    Container(
                                        child: Text("OverSabi Market")
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
                                        child: Imager.fromLocal("assets/images/Package Delivery.png",height: 50.15.h)
                                    ),
                                    Container(
                                        child: Text("Package Delivery")
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
                                        child: Imager.fromLocal("assets/images/Pest Control.png",height: 50.15.h)
                                    ),
                                    Container(
                                        child: Text("Pest Control")
                                    ),

                                  ],
                                ),
                              ),
                            ),
                            onTap: (){
                              Navigator.push(context,
                                  MaterialPageRoute(builder: (context) => pestcontrol(),
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
                                        child: Imager.fromLocal("assets/images/Pickup laundary.png",height: 50.15.h)
                                    ),
                                    Container(
                                        child: Text("Pickup Laundry")
                                    ),

                                  ],
                                ),
                              ),
                            ),
                            onTap: (){
                              Navigator.push(context,
                                  MaterialPageRoute(builder: (context) => pickuplaundry(),
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
                                        child: Imager.fromLocal("assets/images/Cleaning.png",height: 50.15.h)
                                    ),
                                    Container(
                                        child: Text("Cleaning Services")
                                    ),

                                  ],
                                ),
                              ),
                            ),
                            onTap: (){
                              Navigator.push(context,
                                  MaterialPageRoute(builder: (context) => cleaningservice(),
                                  )
                              );
                            },
                          ),
                    ]),
                  ),

            ],
          ),


        ),
      ),
    );
  }
}
