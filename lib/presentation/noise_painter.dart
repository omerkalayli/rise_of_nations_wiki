import 'package:fast_noise/fast_noise.dart';
import 'package:flutter/material.dart';

class NoisePainter extends CustomPainter {
  @override
  void paint(Canvas canvas, Size size) {
    final paint = Paint();
    List<List<double>> noiseValue = noise2(
      size.width.toInt(),
      size.height.toInt(),
      noiseType: NoiseType.perlinFractal,
      frequency: 0.2,
    );

    for (int x = 0; x < size.width.toInt(); x++) {
      for (int y = 0; y < size.height.toInt(); y++) {
        paint.color = Color.fromRGBO(
            (noiseValue[x][y] * 255).toInt(),
            (noiseValue[x][y] * 255).toInt(),
            (noiseValue[x][y] * 255).toInt(),
            0.05);

        canvas.drawRect(Rect.fromLTWH(x.toDouble(), y.toDouble(), 1, 1), paint);
      }
    }
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) {
    return false;
  }
}
