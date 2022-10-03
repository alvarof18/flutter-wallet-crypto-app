import 'package:flutter/cupertino.dart';
import 'dart:ui' as ui;

class BackgroundLight extends CustomPainter {
  @override
  void paint(Canvas canvas, Size size) {
    //Tipo de lienzo
    Paint paint = Paint()..style = PaintingStyle.fill;
    //Color del lienzo
    paint.shader = ui.Gradient.linear(
        Offset(size.width * 1.076305, size.height * -3.345725),
        Offset(size.width * -7.630522, size.height * 1.033457),
        [Color(0xffF79CC7).withOpacity(0), Color(0xffF79CC7).withOpacity(0.94)],
        [0, 1]);

    // Area de dibujo
    Path path_0 = Path();
    path_0.moveTo(154.25, 8.75352);
    path_0.lineTo(218.525, 45.8625);
    path_0.cubicTo(236.934, 56.4912, 248.275, 76.1337, 248.275, 97.391);
    path_0.lineTo(248.275, 171.609);
    path_0.cubicTo(248.275, 192.866, 236.934, 212.509, 218.525, 223.137);
    path_0.lineTo(154.25, 260.246);
    path_0.cubicTo(135.841, 270.875, 113.159, 270.875, 94.75, 260.246);
    path_0.lineTo(30.4754, 223.137);
    path_0.cubicTo(12.066, 212.509, 0.725357, 192.866, 0.725357, 171.609);
    path_0.lineTo(0.725357, 97.391);
    path_0.cubicTo(0.725357, 76.1337, 12.066, 56.4912, 30.4754, 45.8625);
    path_0.lineTo(94.75, 8.75352);
    path_0.cubicTo(113.159, -1.87513, 135.841, -1.87513, 154.25, 8.75352);
    path_0.close();

    //Dibujar en canvas
    canvas.drawPath(path_0, paint);
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) {
    return true;
  }
}

class Background extends CustomPainter {
  @override
  void paint(Canvas canvas, Size size) {
    Paint paint_0_fill = Paint()..style = PaintingStyle.fill;
    paint_0_fill.color = Color(0xffF498C1).withOpacity(1.0);

    Path path_0 = Path();
    path_0.moveTo(117.5, 20.6603);
    path_0.cubicTo(126.782, 15.3013, 138.218, 15.3013, 147.5, 20.6603);
    path_0.lineTo(209.732, 56.5897);
    path_0.cubicTo(219.014, 61.9487, 224.732, 71.8525, 224.732, 82.5705);
    path_0.lineTo(224.732, 154.429);
    path_0.cubicTo(224.732, 165.147, 219.014, 175.051, 209.732, 180.41);
    path_0.lineTo(147.5, 216.34);
    path_0.cubicTo(138.218, 221.699, 126.782, 221.699, 117.5, 216.34);
    path_0.lineTo(55.2683, 180.41);
    path_0.cubicTo(45.9863, 175.051, 40.2683, 165.147, 40.2683, 154.429);
    path_0.lineTo(40.2683, 82.5705);
    path_0.cubicTo(40.2683, 71.8525, 45.9863, 61.9487, 55.2683, 56.5897);
    path_0.lineTo(117.5, 20.6603);
    path_0.close();

    canvas.drawPath(path_0, paint_0_fill);
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) {
    return true;
  }
}




// }


