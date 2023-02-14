import 'package:flutter/material.dart';
import 'package:shopping/Views/Errand.dart';
import 'package:shopping/Views/Login.dart';
import 'package:shopping/Views/PasswordDone.dart';
import 'package:shopping/Views/Signupscreen.dart';
import 'package:shopping/Views/home.dart';
import 'package:shopping/Views/profileview.dart';
import 'package:shopping/Views/searchscreen.dart';
class btmbar extends StatefulWidget {
  const btmbar({Key? key}) : super(key: key);

  @override
  State<btmbar> createState() => _btmbarState();
}

class _btmbarState extends State<btmbar> with TickerProviderStateMixin{
  late TabController _tabController;
  void initState() {
    super.initState();
    _tabController = TabController( vsync:this,length: 4);
  }
  @override

  Widget build(BuildContext context) {
    return
      Scaffold(

        bottomNavigationBar: bottomnav(),
        body: TabBarView(
          controller: _tabController,
          children: [
            homepage(),
            searchscreen(),
            errand(),
            profileview()

          ],
        ),
      );
  }
  bottomnav(){
    return  Container(
      color: Colors.white,
      child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,

          children: [
            Container(
                height: 60,
                color: Colors.white,
                child: InkWell(
                    onTap: ()  {
                      setState(() {
                        _tabController.index=0;
                      });
                    },
                    child: Padding(
                        padding: EdgeInsets.only(top: 8.0),
                        child: Column(
                            children:[
                              Icon(
                                Icons.home,
                                color: Color(0xff29A9AB)
                              ),
                              Text('Home'),
                            ])))),

            Container(
                height: 60,
                color: Colors.white,
                child: InkWell(
                    onTap: ()  {
                      setState(() {
                        _tabController.index=1;
                      });
                    },
                    child: Padding(
                        padding: EdgeInsets.only(top: 8.0),
                        child: Column(
                            children: [
                              Icon(
                                Icons.search,
                                  color: Color(0xff29A9AB)
                              ),
                              Text('Search'),
                            ])))),

            Container(
                height: 60,
                color: Colors.white,
                child: InkWell(
                    onTap: () {
                      setState(() {
                        _tabController.index=2;
                      });
                    },
                    child: Padding(
                        padding: EdgeInsets.only(top: 8.0),
                        child: Column(
                            children: [
                              Icon(
                                Icons.gif_box_sharp,
                                  color: Color(0xff29A9AB)
                              ),
                              Text('Errands'),
                            ])))),

            Container(
                height: 60,
                color: Colors.white,
                child: InkWell(
                    onTap: ()  {
                      setState(() {
                        _tabController.index=3;
                      });
                    },
                    child: Padding(
                        padding: EdgeInsets.only(top: 8.0),
                        child: Column(
                            children: <Widget>[
                              Icon(
                                Icons.person,
                                  color: Color(0xff29A9AB)
                              ),
                              Text('Profile'),
                            ]))))]),
    );
  }
}
