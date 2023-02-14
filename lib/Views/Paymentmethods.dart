import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:imager/imager.dart';
import 'package:shopping/Views/packagedelivery.dart';
import 'package:shopping/Views/paymentsucessful.dart';

import 'Login.dart';
class paymentmethods extends StatefulWidget {
  const paymentmethods({Key? key}) : super(key: key);

  @override
  State<paymentmethods> createState() => _paymentmethodsState();
}

class _paymentmethodsState extends State<paymentmethods> {
  bool _isShow = true;
  bool _isShow1 = true;
  bool _isShow2 = true;
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
                              MaterialPageRoute(builder: (context) => pkgdelivery(),
                              )
                          );
                        }, icon: const Icon(Icons.arrow_back,color: Colors.white,)),
                      ),
                      Container(
                        padding: EdgeInsets.only(left: 7),
                        child: Text("Payment Method",style: TextStyle(fontSize: 18.sp,fontWeight: FontWeight.w700,color: Colors.white),),
                      ),
                    ],
                  ),
                ),
                Container(
                  padding: EdgeInsets.only(left: 18,right: 213,top: 17,bottom: 4),
                  child: Text("Select Payment Method",style: TextStyle(fontSize: 16.sp,fontWeight: FontWeight.w600,color: Colors.black),),
                ),
                Padding(
                  padding: const EdgeInsets.only(bottom: 11),
                  child: Container(
                    child: Card (
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.all(Radius.circular(10))
                      ),
                      child: Row(
                        mainAxisSize: MainAxisSize.min,
                        children: <Widget>[
                          Container(
                              padding: EdgeInsets.all(16.0),
                              child: Icon(Icons.currency_exchange)
                          ),
                          Container(
                            padding: EdgeInsets.only(left: 30),
                              child: Text("Cash on Delivery",style: TextStyle(fontSize: 16,fontWeight: FontWeight.w500),)
                          ),
                          InkWell(
                            child: Container(
                                padding: EdgeInsets.only(left: 150,right: 10),
                                child: Icon(_isShow ? Icons.circle_outlined:Icons.circle)
                            ),
                            onTap: (){
                              setState(
                                    () {
                                  _isShow = !_isShow;
                                },
                              );
                            },
                          ),
                        ],
                      ),
                    ),
                  ),
                ),

                Padding(
                  padding: const EdgeInsets.only(bottom: 11),
                  child: Container(
                    child: Card (
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.all(Radius.circular(10))
                      ),
                      child: Row(
                        mainAxisSize: MainAxisSize.min,
                        children: <Widget>[
                          Container(
                              padding: EdgeInsets.all(16.0),
                              child: Icon(Icons.wallet)
                          ),
                          Container(
                              padding: EdgeInsets.only(left: 40),
                              child: Text("Pay from Wallet",style: TextStyle(fontSize: 16,fontWeight: FontWeight.w500),)
                          ),
                          InkWell(
                            child:  Container(
                                padding: EdgeInsets.only(left: 150,right: 10),
                                child: Icon(_isShow1 ? Icons.circle_outlined:Icons.circle)
                            ),
                            onTap: (){
                              setState(
                                    () {
                                  _isShow1 = !_isShow1;
                                },
                              );
                            },
                          ),

                        ],
                      ),
                    ),
                  ),
                ),

                Padding(
                  padding: const EdgeInsets.only(bottom: 11),
                  child: Container(
                    child: Card (
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.all(Radius.circular(10))
                      ),
                      child: Row(
                        mainAxisSize: MainAxisSize.min,
                        children: <Widget>[
                          Container(
                              padding: EdgeInsets.all(16.0),
                              child: Icon(Icons.credit_card_sharp)
                          ),
                          Container(
                              padding: EdgeInsets.only(left: 40),
                              child: Text("Pay using Card",style: TextStyle(fontSize: 16,fontWeight: FontWeight.w500),)
                          ),
                          InkWell(
                            child:  Container(
                                padding: EdgeInsets.only(left: 150,right: 10),
                                child: Icon(_isShow2 ? Icons.circle:Icons.circle_outlined)
                            ),
                            onTap: (){
                              setState(
                                    () {
                                  _isShow2 = !_isShow2;
                                },
                              );
                            },
                          ),

                        ],
                      ),
                    ),
                  ),
                ),
                Visibility(
                  visible: _isShow2,
                  child: Padding(
                    padding: const EdgeInsets.only(left: 10,right: 10),
                    child:
                    Card(
                      child: Column(
                        children: [
                          Row(
                            children: [
                              Container(
                                padding: EdgeInsets.only(left: 10,bottom: 4),
                                child: Text("Right Away!"),
                              ),
                              Container(
                                  padding: EdgeInsets.only(left: 280,bottom: 4),
                                  child: Icon(Icons.check_box,color: Color(0xff29A9AB),)
                              ),
                            ],
                          ),
                          Divider(),
                          Row(
                            children: [
                              Container(
                                padding: EdgeInsets.only(left: 10,bottom: 4),
                                child: Text("Schedule For later"),
                              ),
                              Container(
                                  padding: EdgeInsets.only(left: 247,bottom: 4),
                                  child: Icon(Icons.check_box,color: Color(0xff29A9AB),)
                              ),
                            ],
                          ),
                          Divider(),
                          Row(
                            children: [
                              Container(
                                padding: EdgeInsets.only(left: 10,bottom: 4),
                                child: Text("One-Time"),
                              ),
                              Container(
                                  padding: EdgeInsets.only(left: 293,bottom: 4),
                                  child: Icon(Icons.check_box,color: Color(0xff29A9AB),)
                              ),
                            ],
                          ),
                          Divider(),
                          Row(
                            children: [
                              Container(
                                padding: EdgeInsets.only(left: 10,bottom: 4),
                                child: Text("Recurrence"),
                              ),
                              Container(
                                  padding: EdgeInsets.only(left: 285,bottom: 4),
                                  child: Icon(Icons.check_box,color: Color(0xff29A9AB),)
                              ),
                            ],
                          ),
                          Divider(),
                        ],
                      ),
                    ),
                  ),
                ),

                InkWell(
                  child: Container(
                    padding: EdgeInsets.only(top: 18,bottom: 18),
                    height: 55.h,
                    width: 388.w,
                    decoration: BoxDecoration(
                        color: Color(0xff29A9AB),
                        borderRadius: BorderRadius.circular(10)
                    ),
                    child: Text("Submit",textAlign: TextAlign.center,
                      style: TextStyle(fontSize: 16.sp,fontWeight: FontWeight.w600,color: Colors.white),),
                  ),
                  onTap: (){
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) => paymentsucessful(),
                        )
                    );
                  },
                ),
              ],
            ),
          ),
        ),
      );
  }
}
