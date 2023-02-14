import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:otp_text_field/otp_text_field.dart';
import 'package:otp_text_field/style.dart';
import 'package:shopping/Views/createpassword.dart';
import 'Forgotpassword.dart';
class onetimepassword extends StatefulWidget {
  const onetimepassword({Key? key}) : super(key: key);

  @override
  State<onetimepassword> createState() => _onetimepasswordState();
}

class _onetimepasswordState extends State<onetimepassword> {
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
                        MaterialPageRoute(builder: (context) => createpassword(),
                        )
                    );
                  }, icon: Icon(
                    Icons.arrow_back,
                  ),),
                ),
                Container(
                  padding: const EdgeInsets.only(left:92,right:92,top: 30,bottom: 8),
                  child: Text("One Time Password",style: TextStyle(fontWeight: FontWeight.w800,
                      fontSize: 24.sp),),
                ),
                Container(
                  padding: const EdgeInsets.only(left:76,right:77,top: 8,bottom: 33),
                  child: Text("We sent a 4 digit password to your phone",style: TextStyle(fontWeight: FontWeight.w400,
                      fontSize: 14.sp),),
                ),

                Container(
                  padding: const EdgeInsets.only(left: 66,right: 66,top:61,bottom: 76 ),
                  child: OTPTextField(
                    length: 4,
                    width: MediaQuery.of(context).size.width,
                    fieldWidth: 60,
                    style: TextStyle(
                        fontSize: 24
                    ),
                    textFieldAlignment: MainAxisAlignment.spaceAround,
                    fieldStyle: FieldStyle.box,
                    onCompleted: (pin) {
                      print("Completed: " + pin);
                    },
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(right: 21,top: 30,bottom: 30,left: 19),
                  child: InkWell(
                      child: Container(
                          padding: const EdgeInsets.only(right: 162,top: 18,bottom: 18,left: 162),
                          decoration: BoxDecoration(
                            color: const Color(0xff29A9AB),
                            borderRadius: BorderRadius.circular(12),
                          ),
                          child: Text("Proceed",style: TextStyle(fontSize: 16.sp,fontWeight: FontWeight.w500,
                              color: Color(0xffFFFFFF)),
                            textAlign: TextAlign.center,
                          )
                      ),
                      onTap: () {
                        Navigator.pushReplacement(context,
                            MaterialPageRoute(builder: (context) => forgotpassword(),
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
