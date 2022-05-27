import 'package:flutter/material.dart';

class Hexagon extends StatelessWidget {
  const Hexagon({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: CustomPaint(
        painter: HexPainter(),
        size: const Size(100, 100),
        child: Container(
          height: 100,
          width: 100,
          margin: const EdgeInsets.all(100),
        ),
      ),
    );
  }
}

class HexPainter extends CustomPainter {
  @override
  void paint(Canvas canvas, Size size) {
    final paint = Paint()
      ..color = Colors.blue
      ..strokeWidth = 3
      ..style = PaintingStyle.stroke;

    final path = Path()
      ..moveTo(100, 100)
      ..lineTo(200, 300)
      ..lineTo(300, 300)
      ..lineTo(400, 100)
      ..lineTo(400, 10)
      ..lineTo(100, 10)
      ..close();

    canvas.drawPath(path, paint);
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) {
    return true;
  }
}
