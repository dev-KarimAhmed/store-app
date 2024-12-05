import 'package:flutter/material.dart';

class AuthCustomPainter extends CustomPainter {
  AuthCustomPainter({required this.gradient, super.repaint});

  final LinearGradient gradient;
  @override
  void paint(Canvas canvas, Size size) {
    final paint = Paint()
      ..shader = gradient.createShader(
        Rect.fromPoints(Offset(0, size.height), Offset(0, size.height)),
      );
    final path = Path();
    _pathChoeses(path, size);

    canvas.drawPath(path, paint);
  }

  void _pathChoeses(Path path, Size size) {
    path
      ..moveTo(size.width * -0.0345067, size.height * 0.6583005)
      ..lineTo(size.width * 1.0372800, size.height * 1.0012192)
      ..lineTo(size.width * 1.0394667, size.height * 1.0054064)
      ..lineTo(size.width * -0.0378133, size.height * 0.9998645);
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) {
    return false;
  }
}


class MyCustomPainter extends CustomPainter{
  MyCustomPainter({required this.gradient , super.repaint});

   final LinearGradient gradient;
  
  @override
  void paint(Canvas canvas, Size size) {
    
    

  // Layer 1
  
  Paint paint_fill_0 = Paint()
      ..shader = gradient.createShader(
        Rect.fromPoints(Offset.zero, Offset(0, size.height)),
      );;
     
         
    Path path_0 = Path();
    path_0.moveTo(size.width*0.2908333,size.height*0.1250000);
    path_0.lineTo(size.width*0.2916667,size.height*0.1366667);
    path_0.lineTo(size.width*0.2941667,size.height*0.1816667);
    path_0.lineTo(size.width*0.3008333,size.height*0.2150000);
    path_0.lineTo(size.width*0.3100000,size.height*0.2750000);
    path_0.lineTo(size.width*0.3191667,size.height*0.2916667);
    path_0.lineTo(size.width*0.3258333,size.height*0.3100000);
    path_0.lineTo(size.width*0.3383333,size.height*0.3216667);
    path_0.lineTo(size.width*0.3658333,size.height*0.3316667);
    path_0.lineTo(size.width*0.3925000,size.height*0.3283333);
    path_0.lineTo(size.width*0.4058333,size.height*0.3283333);
    path_0.lineTo(size.width*0.4233333,size.height*0.3250000);
    path_0.lineTo(size.width*0.4450000,size.height*0.3083333);
    path_0.lineTo(size.width*0.4541667,size.height*0.2966667);
    path_0.lineTo(size.width*0.4600000,size.height*0.2783333);
    path_0.lineTo(size.width*0.4683333,size.height*0.2416667);
    path_0.lineTo(size.width*0.4683333,size.height*0.2133333);
    path_0.lineTo(size.width*0.4691667,size.height*0.1916667);
    path_0.lineTo(size.width*0.4691667,size.height*0.1550000);
    path_0.lineTo(size.width*0.4691667,size.height*0.1466667);
    path_0.lineTo(size.width*0.4691667,size.height*0.1350000);
    path_0.lineTo(size.width*0.4691667,size.height*0.1350000);
    path_0.lineTo(size.width*0.4691667,size.height*0.1266667);
    path_0.lineTo(size.width*0.4683333,size.height*0.1166667);
    path_0.lineTo(size.width*0.4683333,size.height*0.1166667);

    canvas.drawPath(path_0, paint_fill_0);
  

  // Layer 1
  
  Paint paint_stroke_0 = Paint()
      ..color = const Color.fromARGB(255, 33, 150, 243)
      ..style = PaintingStyle.stroke
      ..strokeWidth = size.width*0.00
      ..strokeCap = StrokeCap.butt
      ..strokeJoin = StrokeJoin.miter;
     
         
    
    canvas.drawPath(path_0, paint_stroke_0);
  
    
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) {
    return true;
  }
  
}
