import 'package:flutter/material.dart';
import 'package:marquee/marquee.dart';
import 'package:intl/intl.dart';
import '../widgets/homescreen/search_bar.dart';
import '../widgets/homescreen/clock_in_out.dart';
import '../widgets/homescreen/to_do_list.dart';
import '../widgets/homescreen/project_percentage.dart';
import '../widgets/homescreen/app_drawer.dart';

class HomeScreen1 extends StatefulWidget {
  const HomeScreen1({super.key});

  @override
  State<HomeScreen1> createState() => _HomeScreen1State();
}

class _HomeScreen1State extends State<HomeScreen1> {
  final LogIn = Image.asset('assets/images/LogIn.png');
  final _isPressed = false;
  bool click = true;
  int _selectedItem = 0;
  var backcolor = const BoxDecoration(
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
      style: const TextStyle(
          fontWeight: FontWeight.bold, fontFamily: 'RougeScript', fontSize: 30),
      startPadding: 10.0,
      blankSpace: 30.0,
    );
    final now = DateTime.now();
    String time = DateFormat('hh : mm a').format(now);
    String formatter = DateFormat('d-MMMM-y').format(now);
    String day = DateFormat('EEEE').format(now);
    return SafeArea(
      child: Scaffold(
        drawer: AppDrawer(),
        body: Container(
          decoration: const BoxDecoration(
            image: DecorationImage(
              image: AssetImage('assets/images/qhrHome.png'),
              fit: BoxFit.cover,
            ),
          ),
          width: _mediaQuery.size.width,
          height: _mediaQuery.size.height,
          child: Column(
            children: [
              Container(
                height: 70,
                width: _mediaQuery.size.width,
                child: Row(children: [
                  const SearchBar(),
                  IconButton(
                      padding: const EdgeInsets.all(12),
                      onPressed: () {},
                      icon: const Icon(
                        Icons.menu,
                        color: Color.fromRGBO(0, 56, 255, 1),
                        size: 40,
                      )),
                ]),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 20, top: 20),
                child: Row(
                  children: [
                    const Text(
                      'Yash Karnik',
                      style: TextStyle(
                          fontWeight: FontWeight.bold, fontFamily: 'Brawler'),
                    ),
                    const SizedBox(
                      width: 50,
                    ),
                    Text(
                      formatter,
                      style: const TextStyle(
                          fontFamily: 'Brawler', fontWeight: FontWeight.bold),
                    ),
                    const SizedBox(
                      width: 15,
                    ),
                    Text(
                      day,
                      style: const TextStyle(
                          fontFamily: 'Brawler', fontWeight: FontWeight.bold),
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: 60,
                child: marquee,
              ),
              //ClockInOut(),
              Row(
                children: [
                  Padding(
                    padding: const EdgeInsets.only(top: 2, left: 30),
                    child: Container(
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(5.0),
                        border:
                            Border.all(color: Color.fromRGBO(255, 230, 217, 1)),
                        gradient: const LinearGradient(
                            colors: [
                              Color.fromRGBO(245, 238, 171, 0.5),
                              Color.fromRGBO(235, 180, 244, 0.5),
                            ],
                            begin: Alignment.centerLeft,
                            end: Alignment.centerRight),
                      ),
                      width: 250,
                      height: 40,
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
                                    color: Color.fromRGBO(112, 110, 110, 1),
                                    fontSize: 16,
                                    fontFamily: 'Brawler',
                                  ),
                                )
                              : Text(
                                  "Last clock In time  : ",
                                  textAlign: TextAlign.center,
                                  style: TextStyle(
                                    color: Color.fromRGBO(112, 110, 110, 1),
                                    fontSize: 16,
                                    fontFamily: 'Brawler',
                                  ),
                                ),
                          SizedBox(
                            width: 5,
                          ),
                          Text(time,
                              style: TextStyle(
                                fontFamily: 'Brawler',
                                color: Color.fromRGBO(112, 110, 110, 1),
                              )),
                        ],
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 20),
                    child: Column(
                      children: [
                        IconButton(
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
                        click
                            ? Text(
                                'Log In',
                                style: TextStyle(color: Colors.white),
                              )
                            : Text(
                                'Log out',
                                style: TextStyle(color: Colors.white),
                              ),
                      ],
                    ),
                  ),
                ],
              ),
              Row(
                children: [
                  ToDoList(),
                  ProjectPercentage(),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
