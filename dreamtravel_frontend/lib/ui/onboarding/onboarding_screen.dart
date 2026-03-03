import 'package:flutter/material.dart';

import 'onboarding_slide_1.dart';
import 'onboarding_slide_2.dart';
import 'onboarding_slide_3.dart';

class OnboardingScreen extends StatefulWidget {
  const OnboardingScreen({super.key});

  @override
  State<OnboardingScreen> createState() => _OnboardingScreenState();
}

class _OnboardingScreenState extends State<OnboardingScreen> {
  final List<Widget> onboardingSlides = [
    const OnboardingSlide1(),
    const OnboardingSlide2(),
    const OnboardingSlide3(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            // Expanded(child: child),
            // Expanded(child: child)
          ],
        ),
      ),
    );
  }
}
