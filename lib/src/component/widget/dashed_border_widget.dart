import 'package:flutter/material.dart';

class DashedBorder extends StatelessWidget {
  final Widget child;
  final Color color;
  final double strokeWidth;
  final double gap;
  final double height;

  const DashedBorder({
    Key? key,
    required this.child,
    this.color = Colors.black,
    this.strokeWidth = 1.0,
    this.gap = 5.0,
    this.height = 1.0,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return CustomPaint(
      painter: _DashedBorderPainter(
        color: color,
        strokeWidth: strokeWidth,
        gap: gap,
        height: height,
      ),
      child: child,
    );
  }
}

class _DashedBorderPainter extends CustomPainter {
  final Color color;
  final double strokeWidth;
  final double gap;
  final double height;

  _DashedBorderPainter({
    required this.color,
    required this.strokeWidth,
    required this.gap,
    required this.height,
  });

  @override
  void paint(Canvas canvas, Size size) {
    final paint = Paint()
      ..color = color
      ..strokeWidth = strokeWidth
      ..strokeCap = StrokeCap.square;

    const double dashWidth = 5.0;
    final double dashSpace = gap;

    double startY = 0;
    double endY = size.height;

    while (startY < endY) {
      canvas.drawLine(Offset(0, startY), Offset(0, startY + dashWidth), paint);
      startY += dashWidth + dashSpace;
    }
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) {
    return true;
  }
}