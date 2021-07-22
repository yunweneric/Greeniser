import 'package:flutter/material.dart';
import 'dart:ui' as ui;

class RPSCustomPainter extends CustomPainter {
  @override
  void paint(Canvas canvas, Size size) {
    Paint paint_0 = new Paint()
      ..color = Color.fromARGB(255, 33, 150, 243)
      ..style = PaintingStyle.fill
      ..strokeWidth = 1;
    paint_0.shader = ui.Gradient.linear(
        Offset(0, size.height),
        Offset(size.width, size.height),
        [Color(0xff025962), Color(0XFF1A936A)],
        [0.00, 1.00]);

    Path path_0 = Path();
    path_0.moveTo(0, 0);
    path_0.lineTo(size.width, 0);
    path_0.lineTo(size.width, size.height * 0.8619102);
    path_0.quadraticBezierTo(size.width * 0.9876300, size.height * 0.9894246,
        size.width * 0.9035000, size.height * 0.9743959);
    path_0.cubicTo(
        size.width * 0.7036875,
        size.height * 0.9462745,
        size.width * 0.2665600,
        size.height * 0.8828423,
        size.width * 0.0742500,
        size.height * 0.8619102);
    path_0.quadraticBezierTo(size.width * 0.0131900, size.height * 0.8507595, 0,
        size.height * 0.7612198);
    path_0.lineTo(0, 0);
    path_0.close();

    canvas.drawPath(path_0, paint_0);
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) {
    return true;
  }
}
