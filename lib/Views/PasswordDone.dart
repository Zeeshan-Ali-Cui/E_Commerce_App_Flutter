import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:imager/imager.dart';
import 'package:shopping/Views/Login.dart';
import 'package:shopping/Views/NewPassword.dart';
class passworddone extends StatefulWidget {
  const passworddone({Key? key}) : super(key: key);

  @override
  State<passworddone> createState() => _passworddoneState();
}

class _passworddoneState extends State<passworddone> {
  @override
  Widget build(BuildContext context) {
    return
      SafeArea(
        child: Scaffold(
          backgroundColor: const Color(0xffFBFBFB),
          body: SingleChildScrollView(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [

                Container(
                  padding: const EdgeInsets.only(left:10,right: 350),
                  child: IconButton(onPressed:(){
                    Navigator.pushReplacement(context,
                        MaterialPageRoute(builder: (context) => newpassword(),
                        )
                    );
                  }, icon: Icon(
                    Icons.arrow_back,
                  ),),
                ),
                Container(
                  padding: const EdgeInsets.only(left:139,right:139,top: 212,bottom: 38),
                child: Imager.fromLocal("assets/images/lock.png",height: 177.h,width: 150.w,),
              ),
              Container(
                  padding: const EdgeInsets.only(left:115,right:114,bottom: 4),
                  child: Text("Reset Password",style: TextStyle(fontWeight: FontWeight.w800,
                      fontSize: 24.sp),),
                ),
                Container(
                  padding: const EdgeInsets.only(left:103,right:102,bottom: 49),
                  child: Text("Your password has been changed",style: TextStyle(fontWeight: FontWeight.w400,
                      fontSize: 14.sp),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(right: 20,bottom: 384,left: 20),
                  child: InkWell(
                      child: Container(
                          padding: const EdgeInsets.only(right: 173.5,top: 18,bottom: 18,left: 173.5),
                          decoration: BoxDecoration(
                            color: const Color(0xff29A9AB),
                            borderRadius: BorderRadius.circular(12),
                          ),
                          child: Text("Done",style: TextStyle(fontSize: 16.sp,fontWeight: FontWeight.w500,
                              color: Color(0xffFFFFFF)),
                            textAlign: TextAlign.center,
                          )
                      ),
                      onTap: () {
                        Navigator.pushReplacement(context,
                            MaterialPageRoute(builder: (context) => loginpage(),
                            )
                        );
                      }
                  ),
                ),

              ],
            ),
          ),
        ),
      );
  }
}
