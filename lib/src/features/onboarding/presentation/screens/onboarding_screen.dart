import 'package:fitness_tracker_app/src/shared/shared.dart';
import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

class OnboardingScreen extends HookWidget {
  const OnboardingScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    final pageController = usePageController();
    return Scaffold(
      body: AppColumn(
        padding: EdgeInsets.symmetric(horizontal: 15.dx).copyWith(top: 55.dy),
        children: [
          SizedBox(
            width: double.infinity,
            child: Row(
              children: [
                Expanded(
                  child: SmoothPageIndicator(
                    controller: pageController,
                    count: 7,
                    effect: JumpingDotEffect(
                      dotHeight: 3,
                      dotWidth: 36.dx,
                      activeDotColor: theme.colorScheme.primary,
                      dotColor: theme.colorScheme.secondary,
                    ),
                  ),
                ),
                SvgPicture.asset(trophyIcon),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
