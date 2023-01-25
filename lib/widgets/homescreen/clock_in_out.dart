import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

class ClockInOut extends StatefulWidget {
  const ClockInOut({super.key});

  @override
  State<ClockInOut> createState() => _ClockInOutState();
}

class _ClockInOutState extends State<ClockInOut> {
  @override
  Widget build(BuildContext context) {
    final now = DateTime.now();
    String time = DateFormat('hh : mm a').format(now);
    bool click = true;
    return Row(
      children: [
        Padding(
          padding: const EdgeInsets.only(top: 20, left: 30),
          child: Container(
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(5.0),
              border: Border.all(color: Color.fromRGBO(255, 230, 217, 1)),
              gradient: const LinearGradient(colors: [
                Color.fromRGBO(245, 238, 171, 0.5),
                Color.fromRGBO(235, 180, 244, 0.5),
              ], begin: Alignment.centerLeft, end: Alignment.centerRight),
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
    );
  }
}
