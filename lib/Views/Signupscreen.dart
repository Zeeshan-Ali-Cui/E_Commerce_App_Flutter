import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:imager/imager.dart';
import 'package:shopping/Views/Login.dart';
import 'package:shopping/Views/selectscreen.dart';

import 'createpassword.dart';
class signup extends StatefulWidget {
  const signup({Key? key}) : super(key: key);

  @override
  State<signup> createState() => _signupState();
}

class _signupState extends State<signup> {
  bool isemail = true;
  @override
  Widget build(BuildContext context) {
    return
      AnnotatedRegion
      <SystemUiOverlayStyle>(
        value: SystemUiOverlayStyle.dark
            .copyWith(statusBarColor: Colors.white),
          child: SafeArea(
            child: Scaffold(
                backgroundColor: const Color(0xffFBFBFB),
              body: SingleChildScrollView(
                child: Column(
                  children: [
                    Container(
                      padding: const EdgeInsets.only(left:10,right: 350),
                          child: IconButton(onPressed:(){
                            Navigator.pushReplacement(context,
                                MaterialPageRoute(builder: (context) => selectscreen(),
                                )
                            );
                          }, icon: Icon(
                                Icons.arrow_back,
                          ),),
                        ),
                    Container(
                      padding: const EdgeInsets.only(left:136,right:136,top: 30,bottom: 8),
                      child: Text("Create an Account",style: TextStyle(fontWeight: FontWeight.w800,
                          fontSize: 20.sp),),
                    ),
                    Container(
                      padding: const EdgeInsets.only(left:110,right:110,top: 8,bottom: 33),
                      child: Text("Register to Create Your Account",style: TextStyle(fontWeight: FontWeight.w400,
                          fontSize: 14.sp),),
                    ),

                    Padding(
                      padding: const EdgeInsets.only(left: 19,right: 20,top: 33,bottom: 20),
                      child: Container(

                        padding: const EdgeInsets.only(left: 13.4,right: 20,top: 10,bottom: 10),
                        decoration: BoxDecoration(
                          color: const Color(0xffFFFFFF),
                          border: Border.all(),
                          borderRadius: BorderRadius.horizontal(),
                        ),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [

                            InkWell(
                              child: Container(
                                  padding: const EdgeInsets.only(right: 33.57,top: 10.5,bottom: 10.5,left: 33.57),
                                  decoration: BoxDecoration(
                                    color: isemail? Color(0xff29A9AB): Colors.white,
                                    borderRadius: BorderRadius.circular(12),
                                  ),
                                  child: Text("Email Address",style: TextStyle(fontSize: 16.sp,fontWeight: FontWeight.w400,
                                      color: isemail? Colors.white:Colors.black),
                                    textAlign: TextAlign.center,
                                  )
                              ),
                              onTap: (){
                                setState(() {
                                  isemail = true;
                                });
                              },
                            ),

                            InkWell(
                              child: Container(
                                  padding: const EdgeInsets.only(right: 33.57,top: 10.5,bottom: 10.5,left: 33.57),
                                  decoration: BoxDecoration(
                                    color: isemail? Colors.white:Color(0xff29A9AB),
                                    borderRadius: BorderRadius.circular(12),
                                  ),
                                  child: Text("Phone number",style: TextStyle(fontSize: 16.sp,fontWeight: FontWeight.w400,
                                      color: isemail? Colors.black:Colors.white),
                                    textAlign: TextAlign.center,
                                  )
                              ),
                              onTap: (){
                                setState(() {
                                  isemail = false;
                                });
                              },
                            ),
                          ],
                        ),

                      ),
                    ),
                    Container(
                      padding: const EdgeInsets.only(left: 22,right: 20,top:33,bottom: 35 ),
                      child: TextField(
                        keyboardType: isemail? TextInputType.emailAddress: TextInputType.number,
                        obscureText: true,
                        decoration: InputDecoration(
                          border: OutlineInputBorder(),
                          labelText: isemail? "Email Address":"Phone Number"
                        ),
                      ),
                    ),

                    Padding(
                      padding: const EdgeInsets.only(right: 21,top: 30,bottom: 30,left: 19),
                      child: InkWell(
                        child: Container(
                            padding: const EdgeInsets.only(right: 134,top: 18,bottom: 18,left: 134),
                            decoration: BoxDecoration(
                              color: const Color(0xff29A9AB),
                              borderRadius: BorderRadius.circular(12),
                            ),
                            child: Text(" Create Account ",style: TextStyle(fontSize: 16.sp,fontWeight: FontWeight.w500,
                                color: Color(0xffFFFFFF)),
                              textAlign: TextAlign.center,
                            )
                        ),
                        onTap: (){
                          Navigator.push(context,
                              MaterialPageRoute(builder: (context) => createpassword(),
                              )
                          );
                        },
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(right: 160,top: 32,bottom: 32,left: 150),
                      child: Container(
                  child: Text("_ or Register with _",style: TextStyle(fontSize: 14.sp,fontWeight: FontWeight.w400,
                        color: Color(0xffA7A7A7)),),
                ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(right: 20,left: 20),
                      child: Container(
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: [
                              Container(
                                width: 100,
                                child: Card(child: Imager.fromLocal("assets/images/Apple.png")),
                              ),
                              Container(
                                width: 100,
                                child: Card(child: Imager.fromLocal("assets/images/Google.png")),
                              ),
                              Container(
                                width: 100,
                                child: Card(child: Imager.fromLocal("assets/images/facebook.png")),
                              ),
                            ],
                          )),
                    ),

                    Container(
                      padding: const EdgeInsets.only(top: 140,bottom: 10,left: 106,right: 106),
                      child: Row(
                        children: [
                          Text("Already have an Account?",style:
                      TextStyle(fontSize: 14.sp,fontWeight: FontWeight.w600,
                          color: Color(0xff4F4F4F)),),
                          TextButton(onPressed:()
                          {
                            Navigator.push(context,
                                MaterialPageRoute(builder: (context) => loginpage(),
                                )
                            );
                            }
                          , child: Text("Login",style:
                          TextStyle(fontSize: 14.sp,fontWeight: FontWeight.w600,
                              color: Color(0xff29A9AB)),)),
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
