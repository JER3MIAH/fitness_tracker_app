import 'package:fitness_tracker_app/src/features/onboarding/presentation/screens/widgets/top_container.dart';
import 'package:fitness_tracker_app/src/shared/shared.dart';
import 'package:flutter/material.dart';

class FirstView extends StatelessWidget {
  final int currentPage;
  final PageController pageController;
  const FirstView({
    super.key,
    required this.currentPage,
    required this.pageController,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        TopContainer(
          currentPage: currentPage,
          pageController: pageController,
        ),
        YBox(70.dy),
        _buildGenderContainer(true),
        YBox(30.dy),
        _buildGenderContainer(false),
      ],
    );
  }

  Widget _buildGenderContainer(bool isMale, {bool isSelected = false}) {
    return Column(
      children: [
        Container(
          height: 96.25.dy,
          width: 138.dx,
          // padding: EdgeInsets.all(11.dx),
          decoration: BoxDecoration(
            color: appColors.white,
            borderRadius: BorderRadius.circular(11),
            border: isSelected ? Border.all(color: appColors.green) : null,
          ),
          child: Icon(
            isMale ? Icons.male : Icons.female,
            size: 105.25,
          ),
        ),
        YBox(10.dy),
        Text(
          isMale ? 'Male' : 'Female',
          style: TextStyle(
            fontSize: 15.sp,
            fontWeight: FontWeight.w500,
          ),
        ),
      ],
    );
  }
}
