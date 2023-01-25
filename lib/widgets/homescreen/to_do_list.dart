import 'package:flutter/material.dart' hide BoxDecoration, BoxShadow;

import 'package:flutter_inset_box_shadow/flutter_inset_box_shadow.dart';

class ToDoList extends StatefulWidget {
  const ToDoList({super.key});

  @override
  State<ToDoList> createState() => _ToDoListState();
}

class _ToDoListState extends State<ToDoList> {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Padding(
          padding: const EdgeInsets.only(top: 15, right: 50, left: 50),
          child: Container(
              width: 120,
              height: 100,
              decoration: BoxDecoration(
                  gradient: LinearGradient(colors: [
                    Color.fromRGBO(120, 255, 231, 1),
                    Color.fromRGBO(233, 47, 249, 0.28)
                  ], begin: Alignment.topLeft, end: Alignment.bottomRight),
                  borderRadius: BorderRadius.all(const Radius.circular(18)),
                  boxShadow: [
                    BoxShadow(
                      offset: Offset(-1, -3),
                      blurRadius: 5,
                      color: Colors.grey.shade600,
                      inset: true,
                    ),
                    BoxShadow(
                      offset: Offset(1, 2),
                      blurRadius: 5,
                      color: Colors.grey,
                      inset: true,
                    ),
                  ]),
              child: Stack(
                alignment: Alignment.center,
                children: [
                  IconButton(
                    onPressed: () {},
                    icon: Image.asset('assets/images/todolist.png'),
                    iconSize: 100,
                    alignment: Alignment.center,
                  ),
                ],
              )),
        ),
        Padding(
          padding: const EdgeInsets.only(right: 80, top: 10, left: 70),
          child: Text(
            'To Do List',
            style: TextStyle(
                fontFamily: 'Brawler', color: Color.fromRGBO(156, 156, 156, 1)),
          ),
        ),
      ],
    );
  }
}
