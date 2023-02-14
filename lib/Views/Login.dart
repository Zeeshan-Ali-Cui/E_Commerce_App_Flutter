import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:imager/imager.dart';
import 'package:shopping/Views/Bottomnavbar.dart';
import 'package:shopping/Views/Signupscreen.dart';
import 'package:shopping/Views/home.dart';
import 'package:shopping/Views/selectscreen.dart';

import 'Forgotpassword.dart';
import 'createpassword.dart';
class loginpage extends StatefulWidget {
  const loginpage({Key? key}) : super(key: key);

  @override
  State<loginpage> createState() => _loginpageState();
}

class _loginpageState extends State<loginpage> {
  bool isemail = true;
  bool obs = true;
  @override
  Widget build(BuildContext context) {
    return
      SafeArea(
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
                  padding: const EdgeInsets.only(left:136,right:138,top: 30,bottom: 8),
                  child: Text("Welcome Back!",style: TextStyle(fontWeight: FontWeight.w700,
                      fontSize: 20.sp),),
                ),
                Container(
                  padding: const EdgeInsets.only(left:98,right:97,bottom: 33),
                  child: Text("Enter your login details to continue",style: TextStyle(fontWeight: FontWeight.w400,
                      fontSize: 14.sp),),
                ),

                Padding(
                  padding: const EdgeInsets.only(left: 19,right: 20,bottom: 33),
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
                  padding: const EdgeInsets.only(left: 20,right: 21,bottom: 18 ),
                  child: TextField(
                    keyboardType: isemail? TextInputType.emailAddress: TextInputType.number,
                    obscureText: true,
                    decoration: InputDecoration(
                        border: OutlineInputBorder(),
                        labelText: isemail? "Email Address":"Phone Number"
                    ),
                  ),
                ),
                Container(
                  padding: const EdgeInsets.only(left: 21,right: 21,bottom: 37 ),
                  child: TextField(
                    keyboardType:TextInputType.number,
                    obscureText: obs,
                    obscuringCharacter: "*",
                    decoration: InputDecoration(
                        fillColor: Colors.white, filled: true,
                        border: OutlineInputBorder(),
                        labelText: "Password",
                        suffixIcon:
                        InkWell(
                            onTap: () {
                              setState(() {
                                obs = !obs;
                              });
                            },
                            child: obs
                                ? Icon(Icons.lock)
                                : Icon(Icons.lock_open))
                    ),
                  ),
                ),
                InkWell(
                  child: Container(
                    padding: const EdgeInsets.only(left:287,right:23,bottom: 37),
                    child: Text("Forgot Password?",style: TextStyle(fontWeight: FontWeight.w400,
                        fontSize: 14.sp),),
                  ),
                  onTap: (){
                    Navigator.pushReplacement(context,
                        MaterialPageRoute(builder: (context) => forgotpassword(),
                        )
                    );
                  },
                ),
                Padding(
                  padding: const EdgeInsets.only(right: 19,bottom: 27,left: 21),
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
                      Navigator.pushReplacement(context,
                          MaterialPageRoute(builder: (context) => btmbar(),
                          )
                      );
                    },
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(right: 146,bottom: 27,left: 146),
                  child: Container(
                    child: Text("_ or Login with _",style: TextStyle(fontSize: 14.sp,fontWeight: FontWeight.w400,
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
                  padding: const EdgeInsets.only(top: 140,bottom: 10,left: 106,right: 105),
                  child: Row(
                    children: [
                      Text("Don’t have an account? ",style:
                      TextStyle(fontSize: 14.sp,fontWeight: FontWeight.w600,
                          color: Color(0xff4F4F4F)),),
                      TextButton(onPressed:()
                      {
                        Navigator.pushReplacement(context,
                            MaterialPageRoute(builder: (context) => signup(),
                            )
                        );
                      }
                          , child: Text("Register",style:
                          TextStyle(fontSize: 14.sp,fontWeight: FontWeight.w600,
                              color: Color(0xff29A9AB)),)),
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
