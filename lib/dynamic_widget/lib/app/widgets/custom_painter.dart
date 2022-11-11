import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class OnBoardingCardPainter extends CustomPainter {
  OnBoardingCardPainter({
    required this.shadowColor,
    required this.contentFillColor,
  });
  final Color shadowColor, contentFillColor;

  @override
  void paint(Canvas canvas, Size size) {
    final Paint cardPaint = Paint()..color = contentFillColor;
    final double midpoint = size.width * 0.5;
    final Path rectanglePath = Path();
    rectanglePath.addRRect(BorderRadius.circular(60.w)
        .toRRect(Rect.fromLTWH(0, 0, size.width, size.height)));
    rectanglePath.close();

    /// First move to the bottom right point of the bell shaped curve
    /// Then add 90 degree curve to the top using quadratic bezier
    /// Add a small line to top
    /// semicircle is drawn using cubicTo
    /// At the left end of semicircle extend a line down
    /// Then add 90 degree curve to the bottom left of bell using using quadratic bezier
    /// Finally connect the bottom left point to bottom right to complete the path
    /// This path is removed from the rounded rectangle to get the final card.
    final Path bottomHole = Path()
      ..moveTo(midpoint + 54.w, size.height)
      ..quadraticBezierTo(
          midpoint + 44.w, size.height, midpoint + 44.w, size.height - 10.h)
      ..lineTo(midpoint + 44.w, size.height - 26.h)
      ..cubicTo(midpoint + 44.w, size.height - 90.h, midpoint - 44.w,
          size.height - 90.h, midpoint - 44.w, size.height - 26.h)
      ..lineTo(midpoint - 44.w, size.height - 10.h)
      ..quadraticBezierTo(
          midpoint - 44.w, size.height, midpoint - 54.w, size.height)
      ..lineTo(midpoint + 54.w, size.height)
      ..close();
    canvas.drawShadow(
      Path.combine(PathOperation.difference, rectanglePath, bottomHole)
          .shift(Offset(5.w, 4.h)),
      shadowColor,
      5,
      true,
    );
    canvas.drawPath(
        Path.combine(PathOperation.difference, rectanglePath, bottomHole),
        cardPaint);
  }

  @override
  bool shouldRepaint(CustomPainter oldDelegate) => true;
}
