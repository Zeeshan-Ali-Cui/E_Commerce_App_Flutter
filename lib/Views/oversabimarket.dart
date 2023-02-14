import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:imager/imager.dart';
import 'package:shopping/Views/Bottomnavbar.dart';
import 'package:shopping/Views/home.dart';
class oversabimarketview extends StatefulWidget {
  const oversabimarketview({Key? key}) : super(key: key);

  @override
  State<oversabimarketview> createState() => _oversabimarketviewState();
}

class _oversabimarketviewState extends State<oversabimarketview> {
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
                          child: Text("Category",style: TextStyle(fontSize: 16.sp,fontWeight: FontWeight.w700,color: Colors.white),),
                        ),
                        Container(
                          padding: EdgeInsets.only(left: 223),
                          child: IconButton(onPressed: (){}, icon: const Icon(Icons.card_travel,color: Colors.white,)),
                        )
                      ],
                    ),
                  ),
                  Container(
                    padding: EdgeInsets.only(left: 18,right: 129,top: 34,bottom: 34),
                    child: Text("Select your preferred store category",style: TextStyle(fontSize: 16.sp,fontWeight: FontWeight.w600,color: Colors.black),),
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

                          padding: EdgeInsets.only(right: 10),
                          color: Colors.white,
                          child:
                          Card (
                            shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.all(Radius.circular(10))
                            ),
                            child: Row(
                              mainAxisSize: MainAxisSize.min,
                              children: <Widget>[
                                Container(
                                    padding: EdgeInsets.all(16.0),
                                    child: Imager.fromLocal("assets/images/fooddelivery.png",height: 66.h)
                                ),
                                Container(
                                    child: Text("Pharmacy",style: TextStyle(fontSize: 16,fontWeight: FontWeight.w500),)
                                ),

                              ],
                            ),
                          ),
                        ),
                        Container(
                          padding: EdgeInsets.only(right: 10),
                          color: Colors.white,
                          child: Card (
                            shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.all(Radius.circular(10))
                            ),
                            child: Row(
                              mainAxisSize: MainAxisSize.min,
                              children: <Widget>[
                                Container(
                                    padding: EdgeInsets.all(16.0),
                                    child: Imager.fromLocal("assets/images/fooddelivery.png",height: 66.h)
                                ),
                                Container(
                                    child: Text("Supermarket",style: TextStyle(fontSize: 16,fontWeight: FontWeight.w500),)
                                ),

                              ],
                            ),
                          ),
                        ),
                        Container(
                          padding: EdgeInsets.only(right: 10),
                          color: Colors.white,
                          child:Card (
                            shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.all(Radius.circular(10))
                            ),
                            child: Row(
                              mainAxisSize: MainAxisSize.min,
                              children: <Widget>[
                                Container(
                                    padding: EdgeInsets.all(16.0),
                                    child: Imager.fromLocal("assets/images/fooddelivery.png",height: 66.h)
                                ),
                                Container(
                                    child: Text("Drink Store",style: TextStyle(fontSize: 16,fontWeight: FontWeight.w500),)
                                ),

                              ],
                            ),
                          ),
                        ),
                        Container(

                          padding: EdgeInsets.only(right: 10),
                          color: Colors.white,
                          child:
                          Card (
                            shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.all(Radius.circular(10))
                            ),
                            child: Row(
                              mainAxisSize: MainAxisSize.min,
                              children: <Widget>[
                                Container(
                                    padding: EdgeInsets.all(16.0),
                                    child: Imager.fromLocal("assets/images/fooddelivery.png",height: 66.h)
                                ),
                                Container(
                                    child: Text("Groceries",style: TextStyle(fontSize: 16,fontWeight: FontWeight.w500),)
                                ),

                              ],
                            ),
                          ),
                        ),
                        Container(
                          padding: EdgeInsets.only(right: 10),
                          color: Colors.white,
                          child: Card (
                            shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.all(Radius.circular(10))
                            ),
                            child: Row(
                              mainAxisSize: MainAxisSize.min,
                              children: <Widget>[
                                Container(
                                    padding: EdgeInsets.all(16.0),
                                    child: Imager.fromLocal("assets/images/fooddelivery.png",height: 66.h)
                                ),
                                Container(
                                    child: Text("Supermarket",style: TextStyle(fontSize: 16,fontWeight: FontWeight.w500),)
                                ),

                              ],
                            ),
                          ),
                        ),
                        Container(
                          padding: EdgeInsets.only(right: 10),
                          color: Colors.white,
                          child:Card (
                            shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.all(Radius.circular(10))
                            ),
                            child: Row(
                              mainAxisSize: MainAxisSize.min,
                              children: <Widget>[
                                Container(
                                    padding: EdgeInsets.all(16.0),
                                    child: Imager.fromLocal("assets/images/fooddelivery.png",height: 66.h)
                                ),
                                Container(
                                    child: Text("Gift Store",style: TextStyle(fontSize: 16,fontWeight: FontWeight.w500),)
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
