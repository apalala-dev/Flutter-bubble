part of 'bubble.dart';

/// A painter for the Bubble.
class BubblePainter extends CustomPainter {
  final CustomClipper<Path> clipper;
  final bool borderUp;
  final Shadow? shadow;
  final Paint _fillPaint;
  final Paint? _strokePaint;

  BubblePainter({
    required this.clipper,
    required Color color,
    required Color borderColor,
    required double borderWidth,
    required this.borderUp,
    required this.shadow,
  })  : _fillPaint = Paint()
          ..color = color
          ..style = PaintingStyle.fill,
        _strokePaint = borderWidth == 0 || borderColor == Colors.transparent
            ? null
            : (Paint()
              ..color = borderColor
              ..strokeWidth = borderWidth
              ..strokeCap = StrokeCap.round
              ..strokeJoin = StrokeJoin.round
              ..style = PaintingStyle.stroke);

  @override
  void paint(Canvas canvas, Size size) {
    final clip = clipper.getClip(size);

    if (shadow != null) {
      canvas.drawPath(
        clip.shift(shadow!.offset),
        Paint()
          ..color = shadow!.color
          ..maskFilter = MaskFilter.blur(
            BlurStyle.normal,
            shadow!.blurSigma,
          ),
      );
      // canvas.drawShadow(clip, shadowColor, elevation, false);
    }

    if (borderUp) canvas.drawPath(clip, _fillPaint);

    if (_strokePaint != null) {
      canvas.drawPath(clip, _strokePaint!);
    }

    if (!borderUp) canvas.drawPath(clip, _fillPaint);
  }

  @override
  bool shouldRepaint(covariant BubblePainter oldDelegate) => false;
}
