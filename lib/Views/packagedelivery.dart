import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:imager/imager.dart';
import 'package:shopping/Views/Bottomnavbar.dart';
import 'package:shopping/Views/Paymentmethods.dart';

import 'Login.dart';
import 'home.dart';
class pkgdelivery extends StatefulWidget {
  const pkgdelivery({Key? key}) : super(key: key);

  @override
  State<pkgdelivery> createState() => _pkgdeliveryState();
}
class _pkgdeliveryState extends State<pkgdelivery> {
  bool _isShow = true;
  bool _isShow1 = true;
  bool _isShow2 = true;
  String dropdownvalue = 'I am the Reciever';
  // List of items in our dropdown menu
  var items = [
    'I am the Reciever',
    'I am the Sender',
  ];
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
            SingleChildScrollView(
              child: Column(
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
                          child: Text("Package Delivery",style: TextStyle(fontSize: 18.sp,fontWeight: FontWeight.w700,color: Colors.white),),
                        ),
                      ],
                    ),
                  ),
                  Container(
                    padding: EdgeInsets.only(left: 18,right: 213,top: 17,bottom: 4),
                    child: Text("Which option describes you?",style: TextStyle(fontSize: 16.sp,fontWeight: FontWeight.w600,color: Colors.black),),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 20,right: 19,bottom: 30),
                    child: Card(
                      child:  DropdownButtonFormField(
                          decoration: InputDecoration(
                            enabledBorder: OutlineInputBorder(
                              borderSide: BorderSide(color: Colors.white, width: 2),
                              borderRadius: BorderRadius.circular(10),
                            ),
                            border: OutlineInputBorder(
                              borderSide: BorderSide(color: Colors.white, width: 2),
                              borderRadius: BorderRadius.circular(10),
                            ),
                            filled: true,
                            fillColor: Colors.white,
                          ),
                          dropdownColor: Colors.white,
                          value: dropdownvalue,
                          onChanged: (String? newValue) {
                            setState(() {
                              dropdownvalue = newValue!;
                            });
                          },   items: items.map((String items) {
                          return DropdownMenuItem(
                            value: items,
                            child: Text(items),
                          );
                        }).toList(),
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
                              child: Imager.fromLocal("assets/images/fooddelivery.png",height: 27.h,width: 32.w)
                          ),
                          Container(
                              child: Text("Pick-up Information",style: TextStyle(fontSize: 16,fontWeight: FontWeight.w500),)
                          ),
                          InkWell(
                            child: Container(
                              padding: EdgeInsets.only(left: 150),
                                child: Icon(_isShow ? Icons.arrow_drop_down:Icons.arrow_right)
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
                  Visibility(
                    visible: _isShow,
                    child: Padding(
                      padding: const EdgeInsets.only(left: 10,right: 10),
                      child:
                      Card(
                        child: Column(
                          children: [
                            Container(
                              padding: EdgeInsets.only(left: 10,right: 230),
                            child: Text("Sender’s Phone number"),
                          ),
                            Row(
                              children: [
                                Container(
                                  width: 90.w,
                                  height: 55.h,
                                  padding: EdgeInsets.only(left: 15,bottom: 4),
                                child: TextField(
                                  obscureText: true,
                                  decoration: InputDecoration(
                                    fillColor: Color(0xffF2F2F2),
                                    filled: true,
                                    border: OutlineInputBorder(
                                      borderRadius: BorderRadius.only(bottomLeft: Radius.circular(10),
                                          topLeft:Radius.circular(10) ),
                                    ),
                                    labelText: '+234',
                                  ),
                          ),
                                ),
                                Container(
                                  width: 300.w,
                                  height: 55.h,
                                  padding: EdgeInsets.only(right:10,bottom: 4),
                                  child: TextField(
                                    obscureText: true,
                                    decoration: InputDecoration(
                                      border: OutlineInputBorder(
                                          borderRadius: BorderRadius.only(bottomRight: Radius.circular(10),
                                              topRight:Radius.circular(10) ),
                                      ),
                                      labelText: '080 123 456 7890',
                                    ),
                                  ),
                                ),
                              ],
                            ),
                            Container(
                              padding: EdgeInsets.only(left: 10,right: 270,bottom: 4),
                              child: Text("Sender’s Name"),
                            ),
                            Container(
                              width: 370.w,
                              height: 55.h,
                              padding: EdgeInsets.only(bottom: 4),
                              child: TextField(
                                obscureText: true,
                                decoration: InputDecoration(
                                  border: OutlineInputBorder(
                                    borderRadius: BorderRadius.circular(10)
                                  ),
                                  labelText: 'Mathew Olumide',
                                ),
                              ),
                            ),
                            Container(
                              padding: EdgeInsets.only(left: 10,right: 270,bottom: 4),
                              child: Text("Pick-up Address"),
                            ),
                            Container(
                              width: 370.w,
                              height: 55.h,
                              padding: EdgeInsets.only(bottom: 5),
                              child: TextField(
                                obscureText: true,
                                decoration: InputDecoration(
                                  border: OutlineInputBorder(
                                      borderRadius: BorderRadius.circular(10)
                                  ),
                                  suffixIcon: Icon(Icons.location_on_outlined)
                                ),
                              ),
                            ),
                            Row(
                              children: [
                                Container(
                                  padding: EdgeInsets.only(left: 15,bottom: 4),
                                  child: Icon(Icons.check_box,color: Color(0xff29A9AB),)
                                ),
                                Container(
                                  padding: EdgeInsets.only(left: 10,bottom: 4),
                                  child: Text("Save Sender Information"),
                                ),
                              ],
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
                                child: Imager.fromLocal("assets/images/fooddelivery.png",height: 27.h,width: 32.w)
                            ),
                            Container(
                                child: Text("Delivery Information",style: TextStyle(fontSize: 16,fontWeight: FontWeight.w500),)
                            ),
                            InkWell(
                              child: Container(
                                  padding: EdgeInsets.only(left: 150),
                                  child: Icon(_isShow1 ? Icons.arrow_drop_down:Icons.arrow_right)
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
                  Visibility(
                    visible: _isShow1,
                    child: Padding(
                      padding: const EdgeInsets.only(left: 10,right: 10),
                      child:
                      Card(
                        child: Column(
                          children: [
                            Container(
                              padding: EdgeInsets.only(left: 10,right: 230),
                              child: Text("Reciever Phone number"),
                            ),
                            Row(
                              children: [
                                Container(
                                  width: 90.w,
                                  height: 55.h,
                                  padding: EdgeInsets.only(left: 15,bottom: 4),
                                  child: TextField(
                                    obscureText: true,
                                    decoration: InputDecoration(
                                      fillColor: Color(0xffF2F2F2),
                                      filled: true,
                                      border: OutlineInputBorder(
                                        borderRadius: BorderRadius.only(bottomLeft: Radius.circular(10),
                                            topLeft:Radius.circular(10) ),
                                      ),
                                      labelText: '+234',
                                    ),
                                  ),
                                ),
                                Container(
                                  width: 300.w,
                                  height: 55.h,
                                  padding: EdgeInsets.only(right:10,bottom: 4),
                                  child: TextField(
                                    obscureText: true,
                                    decoration: InputDecoration(
                                      border: OutlineInputBorder(
                                        borderRadius: BorderRadius.only(bottomRight: Radius.circular(10),
                                            topRight:Radius.circular(10) ),
                                      ),
                                      labelText: '080 123 456 7890',
                                    ),
                                  ),
                                ),
                              ],
                            ),
                            Container(
                              padding: EdgeInsets.only(left: 10,right: 270,bottom: 4),
                              child: Text("Reciever Name"),
                            ),
                            Container(
                              width: 370.w,
                              height: 55.h,
                              padding: EdgeInsets.only(bottom: 4),
                              child: TextField(
                                obscureText: true,
                                decoration: InputDecoration(
                                  border: OutlineInputBorder(
                                      borderRadius: BorderRadius.circular(10)
                                  ),
                                  labelText: 'Mathew Olumide',
                                ),
                              ),
                            ),
                            Container(
                              padding: EdgeInsets.only(left: 10,right: 270,bottom: 4),
                              child: Text("Reciever’s Address"),
                            ),
                            Container(
                              width: 370.w,
                              height: 55.h,
                              padding: EdgeInsets.only(bottom: 5),
                              child: TextField(
                                obscureText: true,
                                decoration: InputDecoration(
                                    border: OutlineInputBorder(
                                        borderRadius: BorderRadius.circular(10)
                                    ),
                                    suffixIcon: Icon(Icons.location_on_outlined)
                                ),
                              ),
                            ),
                            Row(
                              children: [
                                Container(
                                    padding: EdgeInsets.only(left: 15,bottom: 4),
                                    child: Icon(Icons.check_box,color: Color(0xff29A9AB),)
                                ),
                                Container(
                                  padding: EdgeInsets.only(left: 10,bottom: 4),
                                  child: Text("Save Reciever Information"),
                                ),
                              ],
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
                                child: Imager.fromLocal("assets/images/fooddelivery.png",height: 27.h,width: 32.w)
                            ),
                            Container(
                                child: Text("Schedule Information",style: TextStyle(fontSize: 16,fontWeight: FontWeight.w500),)
                            ),
                            InkWell(
                              child: Container(
                                  padding: EdgeInsets.only(left: 150),
                                  child: Icon(_isShow2 ? Icons.arrow_drop_down:Icons.arrow_right)
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
                          MaterialPageRoute(builder: (context) => paymentmethods(),
                          )
                      );
                    },
                  ),
                ],
              ),
            ),
          ),
        ),
      );
  }
}
