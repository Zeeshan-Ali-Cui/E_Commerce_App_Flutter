import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:imager/imager.dart';
import 'package:shopping/Views/Bottomnavbar.dart';
import 'package:shopping/Views/home.dart';
import 'package:shopping/Views/selectscreen.dart';
class paymentsucessful extends StatefulWidget {
  const paymentsucessful({Key? key}) : super(key: key);

  @override
  State<paymentsucessful> createState() => _paymentsucessfulState();
}

class _paymentsucessfulState extends State<paymentsucessful> {
  @override
  Widget build(BuildContext context) {
    return
      AnnotatedRegion
      <SystemUiOverlayStyle>(
        value: SystemUiOverlayStyle.dark
            .copyWith(statusBarColor: Color(0xffFFFFFF)),
        child: SafeArea(
          child: Scaffold(
            body: Container(
                padding: const EdgeInsets.only(top: 230),
                child:Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Imager.fromLocal("assets/images/tick.png",height: 373.h,width: 256.w,),
                    Container(
                      child: Text("Success",style: TextStyle(
                          fontWeight: FontWeight.w600,fontSize: 24.sp,color: Colors.black),),
                    ),
                    Container(
                      padding: EdgeInsets.only(bottom: 88),
                      child: Text("Your payment was successful!",style: TextStyle(
                          fontWeight: FontWeight.w600,fontSize: 16.sp,color: Colors.black),
                        textAlign:TextAlign.center ,),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 19,right: 19),
                      child: InkWell(
                        child: Container(
                            padding: const EdgeInsets.only(right: 173,top: 17,bottom: 17,left: 173),
                            decoration: BoxDecoration(
                              color: Color(0xff29A9AB),
                              borderRadius: BorderRadius.circular(12),
                            ),

                            child: Text("Done",style: TextStyle(fontSize: 18.sp,fontWeight: FontWeight.w600,
                                color: Color(0xffFFFFFF)),
                              textAlign: TextAlign.center,
                            )
                        ),
                        onTap: (){
                          Navigator.push(context,
                              MaterialPageRoute(builder: (context) => btmbar(),
                              )
                          );
                        },
                      ),
                    )
                  ],
                )
            ),
          ),
        ),
      );
  }
}
