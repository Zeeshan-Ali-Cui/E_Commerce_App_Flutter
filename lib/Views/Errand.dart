import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:imager/imager.dart';
import 'package:shopping/Views/searchscreen.dart';
class errand extends StatefulWidget {
  const errand({Key? key}) : super(key: key);

  @override
  State<errand> createState() => _errandState();
}

class _errandState extends State<errand> {
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
                mainAxisAlignment: MainAxisAlignment.center,
                children: [

                  Row(
                    children: [
                      Container(
                        height: 38.h,
                        width: 38.w,
                        margin: EdgeInsets.only(left: 20.0, right: 20.0),
                        // color: Color(0xff4F4F4F1A),
                        child: IconButton(onPressed:(){
                          Navigator.pushReplacement(context,
                              MaterialPageRoute(builder: (context) => searchscreen()
                              )
                          );
                        }, icon: Icon(
                          Icons.arrow_back,
                        ),),
                      ),
                      Container(
                        child: Text("Errands",style: TextStyle(fontWeight: FontWeight.w700,fontSize: 18.sp),),
                      )
                    ],
                  ),
                  Container(
                    padding: const EdgeInsets.only(left:139,right:139,top: 195,bottom: 40),
                    child: Imager.fromLocal("assets/images/errand.png",height: 287.h,width: 287.w,),
                  ),
                  Container(
                    padding: const EdgeInsets.only(left:133,right:134,bottom: 4),
                    child: Text("No errand yet",style: TextStyle(fontWeight: FontWeight.w600,
                        fontSize: 24.sp),),
                  ),
                  Container(
                    padding: const EdgeInsets.only(left:85,right:86,bottom: 49),
                    child: Text("You do not have any running errand yet.",style: TextStyle(fontWeight: FontWeight.w400,
                        fontSize: 14.sp),
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
