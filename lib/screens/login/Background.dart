import 'package:flutter/cupertino.dart';
import 'package:siga_app/properties/MyColors.dart';

class Background extends CustomPainter {

  @override
  void paint(Canvas canvas, Size size) {
    Paint paint = Paint();
    Path path = Path();
    path.lineTo(0, size.width);
    path.lineTo(0, (size.height * 45.156) / 100);
    path.lineTo(size.width, (size.height * 58.125) / 100);
    path.lineTo(size.width, 0);

    paint.color = PrimaryColor;
    canvas.drawPath(path, paint);
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) {
    return oldDelegate != this;
  }
}

