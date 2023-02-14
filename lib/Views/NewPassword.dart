import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:shopping/Views/PasswordDone.dart';

import 'Forgotpassword.dart';
class newpassword extends StatefulWidget {
  const newpassword({Key? key}) : super(key: key);

  @override
  State<newpassword> createState() => _newpasswordState();
}

class _newpasswordState extends State<newpassword> {
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
                        MaterialPageRoute(builder: (context) => forgotpassword(),
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
                  padding: const EdgeInsets.only(left:137,right:137,top: 8,bottom: 49),
                  child: Text("Create new password",style: TextStyle(fontWeight: FontWeight.w400,
                      fontSize: 14.sp),
                  ),
                ),

                Container(
                  padding: const EdgeInsets.only(left: 20,right: 20,bottom: 16 ),
                  child: TextField(
                    keyboardType:TextInputType.number,
                    decoration: InputDecoration(
                      fillColor: Colors.white, filled: true,
                      border: OutlineInputBorder(),
                      labelText: "New password",
                    ),
                  ),
                ),
                Container(
                  padding: const EdgeInsets.only(left: 20,right: 20,bottom: 40 ),
                  child: TextField(
                    keyboardType:TextInputType.number,
                    decoration: InputDecoration(
                      fillColor: Colors.white, filled: true,
                      border: OutlineInputBorder(),
                      labelText: "Confirm password",
                    ),
                  ),
                ),

                Padding(
                  padding: const EdgeInsets.only(right: 10,bottom: 30,left: 10),
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
                            MaterialPageRoute(builder: (context) => passworddone(),
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
