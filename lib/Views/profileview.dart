import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:imager/imager.dart';
import 'package:shopping/Views/Errand.dart';
class profileview extends StatefulWidget {
  const profileview({Key? key}) : super(key: key);

  @override
  State<profileview> createState() => _profileviewState();
}

class _profileviewState extends State<profileview> {
  @override
  Widget build(BuildContext context) {
    return
      AnnotatedRegion
      <SystemUiOverlayStyle>(
        value: SystemUiOverlayStyle.dark
            .copyWith(statusBarColor: Color(0xff29A9AB)),

        child: SafeArea(
          child: Scaffold(
            backgroundColor: Color(0xff29A9AB),
            body:
            Column(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Container(
                  padding: EdgeInsets.only(left: 20, right: 19),
                  color: Color(0xff29A9AB),
                  child: Row(
                    children: [
                      Container(
                        padding: const EdgeInsets.only(right: 230),
                        child: IconButton(onPressed:(){
                          Navigator.pushReplacement(context,
                              MaterialPageRoute(builder: (context) => errand(),
                              )
                          );
                        }, icon: Icon(
                          Icons.arrow_back,
                          color: Color(0xffFFFFFF),
                        ),),
                      ),
                      Container(
                        height: 38.h,
                        color: Color(0xff29A9AB1A),
                        child: IconButton(onPressed: (){}, icon: const Icon(Icons.headphones,size: 20,color: Color(0xffFFFFFF),)),
                      ),
                      Container(
                          height: 38.h,
                          padding: EdgeInsets.only(top: 10),
                          color: Color(0xff29A9AB1A),
                        child:Text("Get Help",style: TextStyle(fontSize: 14.sp,
                        fontWeight: FontWeight.w500,color: Color(0xffFFFFFF),),
                        textAlign: TextAlign.center,)
                      )
                    ],
                  ),
                ),
                Container(
                  height: 200.h,
                  width: 800.w,
                  color: Color(0xff29A9AB),
                  padding: EdgeInsets.only(bottom: 4),
                  child: Column(
                    mainAxisSize: MainAxisSize.min,
                    children: <Widget>[
                      Row(
                        children: [
                          Stack(
                            children: [
                              Container(
                                  padding: EdgeInsets.only(left:157,top:16,bottom: 10),
                                  child: Imager.fromLocal("assets/images/profile.png",height: 97.h,width: 97.w)
                              ),
                              Positioned(
                                  bottom: 0,
                                  right: 0,
                                  child: CircleAvatar(
                                      radius: 15,
                                      backgroundColor: Color(0xffFFFFFF),
                                      child: Icon(Icons.camera_alt,size: 20,)))
                            ],
                          ),
                        ],
                      ),
                      Container(
                          padding: EdgeInsets.only(left: 125,right:126,bottom: 1),
                          child: Text("Hello, Mathew!",style: TextStyle(fontSize: 24.sp,fontWeight: FontWeight.w600,
                            color: Color(0xffFFFFFF)   ),)
                      ),
                      Container(
                          padding: EdgeInsets.only(left: 139,right:141,bottom: 1),
                          child: Text("matthewemail@gmail.com",style: TextStyle(fontSize: 12.sp,fontWeight: FontWeight.w400,
                              color: Color(0xffFFFFFF) ),)
                      ),

                    ],
                  ),
                ),
                Container(
                  height: 604.h,
                  decoration: BoxDecoration(
                    color: Color(0xffFFFFFF),
                    borderRadius: BorderRadius.only(topLeft: Radius.circular(20),topRight: Radius.circular(20))
                  ),
                  padding: EdgeInsets.only(left: 19,right: 20),
                  child:ListView(
                    padding: const EdgeInsets.all(8),
                    children: <Widget>[
                      Container(
                        padding: EdgeInsets.only(top: 16,bottom: 30),
                        child: Text("Account",style: TextStyle(fontWeight: FontWeight.w600,fontSize: 24.sp),),
                      ),
                      Container(
                        padding: EdgeInsets.only(bottom: 40),
                        child: Row(
                          children: [
                            Container(
                            child: Icon(Icons.person_outline)
                          ),
                            Container(
                              padding: EdgeInsets.only(left: 22,right: 180),
                              child: Text("My Information",style: TextStyle(fontSize: 18.sp,fontWeight: FontWeight.w400),),
                            ),
                            Container(
                                child: Icon(Icons.arrow_forward_ios)
                            ),
                        ],
                        ),
                      ),
                      Container(
                        padding: EdgeInsets.only(bottom: 40),
                        child: Row(
                          children: [
                            Container(
                                child: Icon(Icons.cabin_rounded)
                            ),
                            Container(
                              padding: EdgeInsets.only(left: 22,right: 210),
                              child: Text("Saved Tasks",style: TextStyle(fontSize: 18.sp,fontWeight: FontWeight.w400),),
                            ),
                            Container(
                                child: Icon(Icons.arrow_forward_ios)
                            ),
                          ],
                        ),
                      ),
                      Container(
                        padding: EdgeInsets.only(bottom: 40),
                        child: Row(
                          children: [
                            Container(
                                child: Icon(Icons.contact_mail_outlined)
                            ),
                            Container(
                              padding: EdgeInsets.only(left: 22,right: 187),
                              child: Text("Saved Contacts",style: TextStyle(fontSize: 18.sp,fontWeight: FontWeight.w400),),
                            ),
                            Container(
                                child: Icon(Icons.arrow_forward_ios)
                            ),
                          ],
                        ),
                      ),
                      Container(
                        padding: EdgeInsets.only(bottom: 40),
                        child: Row(
                          children: [
                            Container(
                                child: Icon(Icons.notifications_none)
                            ),
                            Container(
                              padding: EdgeInsets.only(left: 22,right: 207),
                              child: Text("Notifications",style: TextStyle(fontSize: 18.sp,fontWeight: FontWeight.w400),),
                            ),
                            Container(
                                child: Icon(Icons.arrow_forward_ios)
                            ),
                          ],
                        ),
                      ),
                      Container(
                        padding: EdgeInsets.only(bottom: 40),
                        child: Row(
                          children: [
                            Container(
                                child: Icon(Icons.settings)
                            ),
                            Container(
                              padding: EdgeInsets.only(left: 22,right: 182),
                              child: Text("General Settings",style: TextStyle(fontSize: 18.sp,fontWeight: FontWeight.w400),),
                            ),
                            Container(
                                child: Icon(Icons.arrow_forward_ios)
                            ),
                          ],
                        ),
                      ),
                      Container(
                        padding: EdgeInsets.only(bottom: 40),
                        child: Row(
                          children: [
                            Container(
                                child: Icon(Icons.groups)
                            ),
                            Container(
                              padding: EdgeInsets.only(left: 22,right: 182),
                              child: Text("Affliate Program",style: TextStyle(fontSize: 18.sp,fontWeight: FontWeight.w400),),
                            ),
                            Container(
                                child: Icon(Icons.arrow_forward_ios)
                            ),
                          ],
                        ),
                      ),
                      Container(
                        padding: EdgeInsets.only(bottom: 40),
                        child: Row(
                          children: [
                            Container(
                                child: Icon(Icons.question_mark)
                            ),
                            Container(
                              padding: EdgeInsets.only(left: 22,right: 253),
                              child: Text("F.A.Q",style: TextStyle(fontSize: 18.sp,fontWeight: FontWeight.w400),),
                            ),
                            Container(
                                child: Icon(Icons.arrow_forward_ios)
                            ),
                          ],
                        ),
                      ),
                      Container(
                        padding: EdgeInsets.only(bottom: 40),
                        child: Row(
                          children: [
                            Container(
                                child: Icon(Icons.logout,color: Color(0xffE5563C),)
                            ),
                            Container(
                              padding: EdgeInsets.only(left: 22,right: 242),
                              child: Text("Log out",style: TextStyle(fontSize: 18.sp,fontWeight: FontWeight.w400
                              ,color: Color(0xffE5563C
                                  )
                              ),),
                            ),
                            Container(
                                child: Icon(Icons.arrow_forward_ios,color: Color(0xffE5563C))
                            ),
                          ],
                        ),
                      ),

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
