import 'package:fitness_tracker_app/src/shared/shared.dart';
import 'package:flutter/cupertino.dart';

class ProgressReport extends StatelessWidget {
  const ProgressReport({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 15.dx),
      child: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Container(
                height: 157.dy,
                width: 142.dx,
                decoration: BoxDecoration(
                  color: appColors.white,
                  borderRadius: BorderRadius.circular(5),
                ),
              ),
              Container(
                height: 157.dy,
                width: 142.dx,
                decoration: BoxDecoration(
                  color: appColors.green,
                  borderRadius: BorderRadius.circular(5),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
