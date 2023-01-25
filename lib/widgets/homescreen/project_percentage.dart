// ignore_for_file: empty_constructor_bodies

import 'package:flutter/material.dart' hide BoxDecoration, BoxShadow;

import 'package:flutter_inset_box_shadow/flutter_inset_box_shadow.dart';
import 'dart:math' as math;

class ProjectPercentage extends StatefulWidget {
  const ProjectPercentage({super.key});

  @override
  State<ProjectPercentage> createState() => _ProjectPercentageState();
}

class _ProjectPercentageState extends State<ProjectPercentage> {
  @override
  Widget build(BuildContext context) {
    const borddercolor = BoxDecoration(
        gradient: LinearGradient(
            begin: Alignment.center,
            end: Alignment(-0.2, -0.5),
            stops: [0.0, 0.5, 0.5, 1],
            tileMode: TileMode.repeated,
            colors: [
              Color.fromRGBO(175, 255, 241, 1),
              Color.fromRGBO(32, 167, 215, 1),
              Color.fromRGBO(228, 61, 255, 1),
            ]));
    return Column(
      children: [
        Padding(
          padding: const EdgeInsets.only(top: 10),
          child: Container(
            width: 120,
            height: 100,
            decoration: BoxDecoration(
                gradient: SweepGradient(colors: [
                  Color.fromRGBO(0, 0, 0, 0.1),
                  Color.fromRGBO(255, 255, 255, 0.1),
                  Color.fromRGBO(0, 0, 0, 0.1),
                  Color.fromRGBO(255, 255, 255, 0.1),
                  Color.fromRGBO(0, 0, 0, 0.1),
                  Color.fromRGBO(252, 252, 252, 0.1),
                ], center: Alignment.center),
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
            //child: CircularProgress(),
          ),
        ),
        Padding(
          padding: const EdgeInsets.only(right: 10, top: 10, left: 10),
          child: Text(
            'Project Percentage',
            style: TextStyle(
                fontFamily: 'Brawler', color: Color.fromRGBO(156, 156, 156, 1)),
          ),
        ),
      ],
    );
  }
}

// class CircularProgress extends StatefulWidget {
//   const CircularProgress({super.key});

//   @override
//   State<CircularProgress> createState() => _CircularProgressState();
// }

// class _CircularProgressState extends State<CircularProgress> {
//   @override
//   Widget build(BuildContext context) {
//     return Container(
//       child: CustomPaint(
//         size: Size(300, 300),
//         //painter: ,
//       ),
//     );
//   }
// }

// class ProgressArc extends CustomPaint {
//   bool isBackground;
//   double arc;
//   Color progressColor;

//   ProgressArc(this.arc, this.progressColor, this.isBackground);

//   @override
//   void paint(Canvas canvas, Size size) {
//     final rect = Rect.fromLTRB(0, 0, 300, 300);
//     final startAngle = -math.pi;
//     final sweepAngle = arc != null ? arc : math.pi;
//     final userCenter = false;
//     final paint = Paint()
//       ..strokeCap = StrokeCap.round
//       ..color = progressColor
//       ..style = PaintingStyle.stroke
//       ..strokeWidth = 20;

//     if (isBackground) {}
//   }

//   @override
//   bool shouldRepaint(covariant CustomPainter oldDelegate) {
//     return true;
//   }
// }
