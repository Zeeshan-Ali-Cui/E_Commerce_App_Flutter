import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:shopping/Views/NewPassword.dart';
import 'package:shopping/Views/onetimepassword.dart';
class forgotpassword extends StatefulWidget {
  const forgotpassword({Key? key}) : super(key: key);

  @override
  State<forgotpassword> createState() => _forgotpasswordState();
}

class _forgotpasswordState extends State<forgotpassword> {
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
                        MaterialPageRoute(builder: (context) => onetimepassword(),
                        )
                    );
                  }, icon: Icon(
                    Icons.arrow_back,
                  ),),
                ),
                Container(
                  padding: const EdgeInsets.only(left:115,right:114,top: 33,bottom: 8),
                  child: Text("Reset Password",style: TextStyle(fontWeight: FontWeight.w800,
                      fontSize: 24.sp),),
                ),
                Container(
                  padding: const EdgeInsets.only(left:50,right:50,top: 8,bottom: 49),
                  child: Text("Enter your email address "
                      "so we can send you a "
                      "password reset link",style: TextStyle(fontWeight: FontWeight.w400,
                      fontSize: 14.sp),
                      textAlign: TextAlign.center,
                    ),
                ),

                Container(
                  padding: const EdgeInsets.only(left: 20,right: 20,top:53,bottom: 30 ),
                  child: TextField(
                    keyboardType:TextInputType.number,
                    decoration: InputDecoration(
                        fillColor: Colors.white, filled: true,
                        border: OutlineInputBorder(),
                        labelText: "Email Address",
                    ),
                  ),
                ),

                Padding(
                  padding: const EdgeInsets.only(right: 17,top: 30,bottom: 30,left: 15),
                  child: InkWell(
                      child: Container(
                          padding: const EdgeInsets.only(right: 132.5,top: 18,bottom: 18,left: 132.5),
                          decoration: BoxDecoration(
                            color: const Color(0xff29A9AB),
                            borderRadius: BorderRadius.circular(12),
                          ),
                          child: Text(" Reset Password ",style: TextStyle(fontSize: 16.sp,fontWeight: FontWeight.w500,
                              color: Color(0xffFFFFFF)),
                            textAlign: TextAlign.center,
                          )
                      ),
                      onTap: () {
                        Navigator.pushReplacement(context,
                            MaterialPageRoute(builder: (context) => newpassword(),
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
