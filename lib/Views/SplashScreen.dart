import 'dart:async';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:shopping/Views/welcome_screen.dart';
class buysel extends StatefulWidget {
  const buysel({Key? key}) : super(key: key);

  @override
  State<buysel> createState() => _buyselState();
}

class _buyselState extends State<buysel> {
  void initState() {
    super.initState();
    Timer(Duration(seconds: 3),
            ()=>Navigator.pushReplacement(context,
            MaterialPageRoute(builder: (context) => screen1(),
            )
        )
    );
  }
  @override
  Widget build(BuildContext context) {
    return
      AnnotatedRegion
    <SystemUiOverlayStyle>(
      value: SystemUiOverlayStyle.dark
          .copyWith(statusBarColor: Color(0xff29A9AB)),
      child: Scaffold(
       body: Container(
          color: const Color(0xff29A9AB),
        child: Center(
            child:Text("OverSabi",style: TextStyle(fontWeight: FontWeight.w800,fontSize: 36,color: Colors.white),)
        ),
      ),
      ),
    );
  }
}

