import 'package:fitness_tracker_app/src/shared/shared.dart';
import 'package:flutter/material.dart';

class MyWorkout extends StatelessWidget {
  const MyWorkout({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Padding(
        padding: EdgeInsets.symmetric(horizontal: 15.dx),
        child: Column(
          children: [
            _buildText('Custom workouts'),
            SparkleContainer(
              height: 148.dy,
              decoration: BoxDecoration(
                color: appColors.black,
                borderRadius: BorderRadius.circular(10),
              ),
            ),
            _buildText(
              'Today\'s workouts',
              padding:
                  EdgeInsets.symmetric(vertical: 30.dy).copyWith(left: 6.dx),
            ),
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
              decoration: BoxDecoration(
                color: appColors.green,
                borderRadius: BorderRadius.circular(10),
              ),
            ),
            YBox(15.dy),
            SparkleContainer(
              height: 148.dy,
              decoration: BoxDecoration(
                color: appColors.black,
                borderRadius: BorderRadius.circular(10),
              ),
            ),
            YBox(30.dy),
          ],
        ),
      ),
    );
  }

  Widget _buildText(String text, {EdgeInsetsGeometry? padding}) {
    return Padding(
      padding: padding ?? EdgeInsets.only(left: 6.dx, bottom: 12.dy),
      child: AppText(
        isStartAligned: true,
        text: text,
        fontSize: 14.sp,
        fontWeight: FontWeight.w500,
      ),
    );
  }
}
