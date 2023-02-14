import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:shopping/Views/Signupscreen.dart';
import 'package:shopping/Views/onetimepassword.dart';
class createpassword extends StatefulWidget {
  const createpassword({Key? key}) : super(key: key);

  @override
  State<createpassword> createState() => _createpasswordState();
}

class _createpasswordState extends State<createpassword> {
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
                        MaterialPageRoute(builder: (context) => signup(),
                        )
                    );
                  }, icon: Icon(
                    Icons.arrow_back,
                  ),),
                ),
                Container(
                  padding: const EdgeInsets.only(left:136,right:136,top: 30,bottom: 8),
                  child: Text("Create Password",style: TextStyle(fontWeight: FontWeight.w700,
                      fontSize: 20.sp),),
                ),
                Container(
                  padding: const EdgeInsets.only(left:110,right:110,top: 8,bottom: 33),
                  child: Text("Make it strong and secure!",style: TextStyle(fontWeight: FontWeight.w400,
                      fontSize: 14.sp),),
                ),

                Container(
                  padding: const EdgeInsets.only(left: 20,right: 20,top:53,bottom: 30 ),
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

                Padding(
                  padding: const EdgeInsets.only(right: 21,top: 30,bottom: 30,left: 19),
                  child: InkWell(
                    child: Container(
                        padding: const EdgeInsets.only(right: 159,top: 18,bottom: 18,left: 159),
                        decoration: BoxDecoration(
                          color: const Color(0xff29A9AB),
                          borderRadius: BorderRadius.circular(12),
                        ),
                        child: Text("Continue",style: TextStyle(fontSize: 16.sp,fontWeight: FontWeight.w500,
                            color: Color(0xffFFFFFF)),
                          textAlign: TextAlign.center,
                        )
                    ),
                    onTap: () {
                      Navigator.pushReplacement(context,
                          MaterialPageRoute(builder: (context) => onetimepassword(),
                          )
                      );
                    }
                  ),
                ),
                Container(
                  padding: const EdgeInsets.only(top: 400,bottom: 50,left: 106,right: 106),
                  child: Row(
                    children: [
                      Text("Already have an Account?",style:
                      TextStyle(fontSize: 14.sp,fontWeight: FontWeight.w600,
                          color: Color(0xff4F4F4F)),),
                      TextButton(onPressed:()
                      {
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
      );
  }
}
