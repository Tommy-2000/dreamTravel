
import 'dart:math' as Math;

import 'package:flutter/material.dart';

class TicketPainter extends CustomPainter {
  @override
  void paint(Canvas canvas, Size size) {
    final ticketPaint = Paint();
    ticketPaint.color = Colors.red;
    final ticketPath = Path();
    double degreeToRadians(num degrees) => degrees * (Math.pi / 180.0);
    ticketPath.lineTo(0, size.height);
    ticketPath.cubicTo(size.width / 2, 2 * size.height / 4, size.width / 3, size.height / 3, size.width / 4, size.height / 4);
    ticketPath.close();
    canvas.drawPath(ticketPath, ticketPaint);
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldPainter) => false;
}

