import 'dart:math';

import 'package:flutter/material.dart' hide BoxDecoration, BoxShadow;

import 'package:flutter_inset_box_shadow/flutter_inset_box_shadow.dart';
import 'package:intl/intl.dart';
import '../widgets/homescreen/app_drawer.dart';
import 'package:marquee/marquee.dart';
import 'package:flutter_neumorphic/flutter_neumorphic.dart' as neumorphic;

import '../widgets/homescreen/search_bar.dart';

class HomeScreen extends StatefulWidget {
  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  final LogIn = Image.asset('assets/images/LogIn.png');
  final _isPressed = false;
  bool click = true;
  int _selectedItem = 0;
  var backcolor = BoxDecoration(
    gradient: LinearGradient(colors: [
      Color.fromRGBO(255, 255, 255, 1),
      Color.fromRGBO(182, 150, 255, 1),
      Color.fromRGBO(244, 124, 255, 1),
    ], begin: Alignment.topCenter, end: Alignment.bottomCenter),
  );

  @override
  Widget build(BuildContext context) {
    var _mediaQuery = MediaQuery.of(context);
    final marquee = Marquee(
      text: '“ If there is no struggle, there is no progress “',
      style: TextStyle(
          fontWeight: FontWeight.bold, fontFamily: 'RougeScript', fontSize: 30),
      startPadding: 10.0,
      blankSpace: 30.0,
    );
    final now = new DateTime.now();
    String time = DateFormat('hh : mm a').format(now);
    String formatter = DateFormat('d-MMMM-y').format(now);
    String day = DateFormat('EEEE').format(now);
    return SafeArea(
      child: Scaffold(
        body: Container(
          width: _mediaQuery.size.width,
          height: _mediaQuery.size.height,
          decoration: backcolor,
          child: Stack(
            children: [
              IconButton(
                  padding: EdgeInsets.only(left: 370, top: 25),
                  onPressed: () => AppDrawer,
                  icon: Icon(
                    Icons.menu,
                    color: Color.fromRGBO(0, 56, 255, 1),
                    size: 35,
                  )),
              SearchBar(),
              Row(
                children: [
                  Container(
                    padding: EdgeInsets.only(left: 30, top: 90, right: 18),
                    child: Row(
                      children: [
                        Text(
                          'Yash Karnik',
                          style: TextStyle(
                              fontWeight: FontWeight.bold,
                              fontFamily: 'Brawler'),
                        ),
                        SizedBox(
                          width: 90,
                        ),
                        Text(
                          formatter,
                          style: TextStyle(
                              fontFamily: 'Brawler',
                              fontWeight: FontWeight.bold),
                        ),
                        SizedBox(
                          width: 10,
                        ),
                        Text(
                          day,
                          style: TextStyle(
                              fontFamily: 'Brawler',
                              fontWeight: FontWeight.bold),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
              Padding(
                padding: const EdgeInsets.only(top: 50, bottom: 500),
                child: marquee,
              ),

              Padding(
                padding: const EdgeInsets.only(
                    top: 180, left: 20, bottom: 490, right: 100),
                child: Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(5.0),
                    border: Border.all(color: Color.fromRGBO(255, 230, 217, 1)),
                    gradient: LinearGradient(colors: [
                      Color.fromRGBO(245, 238, 171, 0.5),
                      Color.fromRGBO(235, 180, 244, 0.5),
                    ], begin: Alignment.centerLeft, end: Alignment.centerRight),
                  ),
                  width: _mediaQuery.size.width,
                  height: _mediaQuery.size.height,
                  child: Row(
                    children: [
                      SizedBox(
                        width: 10,
                      ),
                      click
                          ? Text(
                              "Last clock out time  : ",
                              textAlign: TextAlign.center,
                              style: TextStyle(
                                color: Colors.black,
                                fontSize: 16,
                              ),
                            )
                          : Text(
                              "Last clock In time  : ",
                              textAlign: TextAlign.center,
                              style: TextStyle(
                                color: Colors.black,
                                fontSize: 16,
                              ),
                            ),
                      SizedBox(
                        width: 5,
                      ),
                      Text(time),
                    ],
                  ),
                ),
              ),
              Column(
                children: [
                  Padding(
                    padding: const EdgeInsets.only(top: 165, left: 300),
                    child: IconButton(
                      onPressed: () {
                        setState(() {
                          time = time;
                          click = !click;
                        });
                      },
                      icon: click
                          ? Image.asset('assets/images/LogIn.png')
                          : Image.asset('assets/images/LogOut.png'),
                      iconSize: 50,
                    ),
                  ),
                  Padding(
                    padding:
                        const EdgeInsets.only(left: 300, top: 0, bottom: 200),
                    child: click
                        ? Text(
                            'Log In',
                            style: TextStyle(color: Colors.white),
                          )
                        : Text(
                            'Log out',
                            style: TextStyle(color: Colors.white),
                          ),
                  )
                ],
              ),
              // Padding(padding: const EdgeInsets.all(10.0),
              // child: Column(
              //   mainAxisSize: MainAxisSize.max,
              //   children: [
              //     Expanded(child: Align(alignment: Alignment.bottomCenter,
              //   child: NeumorphicBottomNav(),))
              //   ],
              // ),)
            ],
          ),
        ),
        bottomNavigationBar: BottomNavigationBar(
          backgroundColor: Color.fromRGBO(168, 187, 255, 0.22),
          items: <BottomNavigationBarItem>[
            BottomNavigationBarItem(
              icon: Icon(Icons.home),
              label: 'Home',
            ),
            BottomNavigationBarItem(icon: Icon(Icons.home), label: 'Home'),
          ],
          currentIndex: _selectedItem,
          onTap: (setValue) {
            setState(() {
              _selectedItem = setValue;
            });
          },
        ),
      ),
    );
  }
}
