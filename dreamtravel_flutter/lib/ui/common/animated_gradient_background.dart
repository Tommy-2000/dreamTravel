import 'package:dreamtravel/ui/common/cards/padding_card.dart';
import 'package:flutter/material.dart';
import 'package:vector_math/vector_math_64.dart';

class AnimatedGradientBackground extends StatefulWidget {
  final Size gradientSize;
  final Duration animDuration;
  final List<Color> gradientColors;

  const AnimatedGradientBackground({
    super.key,
    required this.gradientSize,
    required this.animDuration,
    required this.gradientColors,
  });

  @override
  State<AnimatedGradientBackground> createState() =>
      _AnimatedGradientBackgroundState();
}

class _AnimatedGradientBackgroundState extends State<AnimatedGradientBackground>
    with SingleTickerProviderStateMixin {
  late AnimationController animController;

  @override
  void initState() {
    super.initState();

    animController =
        AnimationController(
            duration: widget.animDuration,
            vsync: this, // Sync with TickerProvider
          )
          ..forward() // Run animation forwards
          ..addListener(() {
            if (animController.isCompleted) {
              animController.repeat();
            } // Call on the controller to repeat the animation
          });
  }

  @override
  Widget build(BuildContext context) {
    final gradientAspectRatio =
        widget.gradientSize.height / widget.gradientSize.width;
    return AnimatedBuilder(
      animation: animController,
      builder: (context, _) {
        return PaddingCard(
          child: Container(
            width: widget.gradientSize.width,
            height: widget.gradientSize.height,
            decoration: BoxDecoration(
              gradient: RadialGradient(
                tileMode: TileMode.repeated,
                transform: CustomGradientTransform(
                  animController.value,
                  widget.gradientSize.height * gradientAspectRatio,
                ),
                colors: widget.gradientColors,
              ),
            ),
          ),
        );
      },
    );
  }

  @override
  void dispose() {
    super.dispose();
    // Dispose of the animController to terminate its lifecycle
    animController.dispose();
  }
}

class CustomGradientTransform implements GradientTransform {
  final double transformValue;
  final double transformOffset;

  CustomGradientTransform(this.transformValue, this.transformOffset);

  @override
  Matrix4? transform(Rect bounds, {TextDirection? textDirection}) {
    final radialDist = transformValue * (bounds.width + transformOffset);
    return Matrix4.identity()..translateByVector3(Vector3(radialDist, 0, 0));
  }
}
