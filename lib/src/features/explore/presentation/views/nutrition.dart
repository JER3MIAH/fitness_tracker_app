import 'package:fitness_tracker_app/src/shared/shared.dart';
import 'package:flutter/material.dart';

class Nutrition extends StatelessWidget {
  const Nutrition({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Padding(
        padding: EdgeInsets.symmetric(horizontal: 15.dx),
        child: Column(
          children: [
            SparkleContainer(
              height: 148.dy,
              isBgWhite: true,
              decoration: BoxDecoration(
                color: appColors.white,
                borderRadius: BorderRadius.circular(10),
              ),
            ),
            _buildHeaderText('Suggested Meals'),
            SparkleContainer(
              height: 75.dy,
              isBgWhite: true,
              decoration: BoxDecoration(
                color: appColors.white,
                borderRadius: BorderRadius.circular(10),
              ),
            ),
            YBox(15.dy),
            SparkleContainer(
              height: 75.dy,
              decoration: BoxDecoration(
                color: appColors.black,
                borderRadius: BorderRadius.circular(10),
              ),
            ),
            YBox(15.dy),
            SparkleContainer(
              height: 75.dy,
              decoration: BoxDecoration(
                color: appColors.green,
                borderRadius: BorderRadius.circular(10),
              ),
            ),
            _buildHeaderText('Healthy recipes'),
            SparkleContainer(
              height: 148.dy,
              isBgWhite: true,
              decoration: BoxDecoration(
                color: appColors.white,
                borderRadius: BorderRadius.circular(10),
              ),
            ),
            YBox(15.dy),
            SparkleContainer(
              height: 148.dy,
              isBgWhite: true,
              decoration: BoxDecoration(
                color: appColors.white,
                borderRadius: BorderRadius.circular(10),
              ),
            ),
            YBox(15.dy),
            SparkleContainer(
              height: 148.dy,
              isBgWhite: true,
              decoration: BoxDecoration(
                color: appColors.white,
                borderRadius: BorderRadius.circular(10),
              ),
            ),
            YBox(30.dy),
          ],
        ),
      ),
    );
  }

  Widget _buildHeaderText(String text) {
    return Padding(
      padding: EdgeInsets.symmetric(vertical: 20.dy),
      child: AppText(
        isStartAligned: true,
        text: text,
        fontSize: 16.sp,
        fontWeight: FontWeight.w500,
      ),
    );
  }
}
