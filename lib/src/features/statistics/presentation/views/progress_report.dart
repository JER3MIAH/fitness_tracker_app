import 'package:fitness_tracker_app/src/shared/shared.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class ProgressReport extends StatelessWidget {
  const ProgressReport({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Padding(
        padding: EdgeInsets.symmetric(horizontal: 15.dx),
        child: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                SparkleContainer(
                  height: 157.dy,
                  width: 142.dx,
                  isBgWhite: true,
                  fit: BoxFit.cover,
                  decoration: BoxDecoration(
                    color: appColors.white,
                    borderRadius: BorderRadius.circular(5),
                  ),
                ),
                SparkleContainer(
                  height: 157.dy,
                  width: 142.dx,
                  fit: BoxFit.cover,
                  decoration: BoxDecoration(
                    color: appColors.green,
                    borderRadius: BorderRadius.circular(5),
                  ),
                ),
              ],
            ),
            YBox(30.dy),
            SparkleContainer(
              height: 148.dy,
              width: double.infinity,
              isBgWhite: true,
              decoration: BoxDecoration(
                color: appColors.white,
                borderRadius: BorderRadius.circular(5),
              ),
            ),
            YBox(30.dy),
            SparkleContainer(
              height: 148.dy,
              isBgWhite: true,
              decoration: BoxDecoration(
                color: appColors.white,
                borderRadius: BorderRadius.circular(5),
              ),
            ),
            YBox(30.dy),
            SparkleContainer(
              height: 128.dy,
              decoration: BoxDecoration(
                color: appColors.black,
                borderRadius: BorderRadius.circular(5),
              ),
              child: AppText(
                text: 'Yooooooooooo',
                color: appColors.white,
              ),
            ),
            YBox(30.dy),
          ],
        ),
      ),
    );
  }
}
