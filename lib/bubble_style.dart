part of 'bubble.dart';

/// A style for the Bubble.
class BubbleStyle {
  final Radius? radius;
  final bool? showNip;
  final BubbleNip? nip;
  final double? nipHeight;
  final double? nipWidth;
  final double? nipOffset;
  final double? nipRadius;
  final bool? stick;
  final Color? color;
  final Color? borderColor;
  final double? borderWidth;
  final bool? borderUp;
  final Shadow? shadow;
  final BubbleEdges? padding;
  final BubbleEdges? margin;
  final AlignmentGeometry? alignment;

  const BubbleStyle({
    this.radius,
    this.showNip,
    this.nip,
    this.nipWidth,
    this.nipHeight,
    this.nipOffset,
    this.nipRadius,
    this.stick,
    this.color,
    this.borderColor,
    this.borderWidth,
    this.borderUp,
    this.shadow,
    this.padding,
    this.margin,
    this.alignment,
  });
}
