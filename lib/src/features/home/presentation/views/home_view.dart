import 'package:fitness_tracker_app/src/shared/shared.dart';
import 'package:fitness_tracker_app/src/shared/widgets/bounce_in_animation.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get_connect/http/src/utils/utils.dart';
import 'package:google_fonts/google_fonts.dart';

enum HomeAct { first, second, third, fourth }

class HomeView extends StatelessWidget {
  const HomeView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: appColors.lightGrey,
      appBar: PreferredSize(
          preferredSize: Size(double.infinity, 122.dy), child: _buildAppBar()),
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 15.dx),
          child: Column(
            children: [
              YBox(20.dy),
              Row(
                children: [
                  Text.rich(
                    TextSpan(
                      text: 'Hello Simi,\n',
                      style: GoogleFonts.inter(
                        fontSize: 16.sp,
                        fontWeight: FontWeight.w600,
                      ),
                      children: [
                        TextSpan(
                          text: 'your boards are looking good',
                          style: GoogleFonts.inter(
                            fontSize: 13.sp,
                            fontWeight: FontWeight.w400,
                            color: appColors.grey80,
                          ),
                        ),
                      ],
                    ),
                  ),
                  const Spacer(),
                  SvgAsset(assetName: stagChart),
                  XBox(20.dx),
                ],
              ),
              _buildText('Activity'),
              SparkleContainer(
                height: 128.dy,
                isBgWhite: true,
                decoration: BoxDecoration(
                  color: appColors.white,
                  borderRadius: BorderRadius.circular(10),
                ),
                child: _buildActivityContent(HomeAct.first),
              ),
              YBox(20.dy),
              SparkleContainer(
                height: 128.dy,
                isBgWhite: true,
                decoration: BoxDecoration(
                  color: appColors.white,
                  borderRadius: BorderRadius.circular(10),
                ),
                child: _buildActivityContent(HomeAct.second),
              ),
              YBox(20.dy),
              SparkleContainer(
                height: 128.dy,
                isBgWhite: true,
                decoration: BoxDecoration(
                  color: appColors.white,
                  borderRadius: BorderRadius.circular(10),
                ),
                child: _buildActivityContent(HomeAct.third),
              ),
              YBox(20.dy),
              SparkleContainer(
                height: 128.dy,
                isBgWhite: true,
                decoration: BoxDecoration(
                  color: appColors.white,
                  borderRadius: BorderRadius.circular(10),
                ),
                child: _buildActivityContent(HomeAct.fourth),
              ),
              Container(
                height: 1.dy,
                width: double.infinity,
                margin: EdgeInsets.symmetric(vertical: 15.dy),
                decoration: BoxDecoration(
                  color: appColors.green,
                ),
              ),
              Container(
                height: 512.dy,
                width: double.infinity,
                padding:
                    EdgeInsets.symmetric(vertical: 15.dy, horizontal: 5.dx),
                decoration: BoxDecoration(
                  color: appColors.white,
                  borderRadius: BorderRadius.circular(10),
                ),
                child: Column(
                  children: [
                    _buildSplitTexts('Workouts'),
                    const Spacer(),
                    _buildWorkoutContainer(true),
                    YBox(10.dy),
                    _buildWorkoutContainer(false),
                    const Spacer(),
                  ],
                ),
              ),
              YBox(20.dy),
              Container(
                height: 297.dy,
                width: double.infinity,
                padding: EdgeInsets.symmetric(vertical: 15.dy),
                decoration: BoxDecoration(
                  color: appColors.white,
                  borderRadius: BorderRadius.circular(10),
                ),
                child: Column(
                  children: [
                    _buildSplitTexts('Rewards'),
                  ],
                ),
              ),
              YBox(20.dy),
            ],
          ),
        ),
      ),
    );
  }

  //?----------------------------------------------------------------------------------------------------

  Widget _buildWorkoutContainer(bool isPower) {
    return Column(
      children: [
        Card(
          elevation: 6,
          shadowColor: appColors.white,
          child: Container(
            height: 169.dy,
            decoration: BoxDecoration(
              color: appColors.white,
              borderRadius: BorderRadius.circular(12),
            ),
            child: Row(
              children: [
                Container(
                  width: 280.dx,
                  padding: EdgeInsets.all(10.dx),
                  decoration: BoxDecoration(
                    color: appColors.black,
                    borderRadius: const BorderRadius.horizontal(
                      left: Radius.circular(12),
                    ),
                  ),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.end,
                        children: [
                          SvgAsset(
                            assetName: trophyIcon,
                            height: 15.dy,
                            width: 13.dx,
                          ),
                          AppText(
                            text: ' Collectables',
                            color: appColors.white,
                            fontSize: 12.sp,
                            fontWeight: FontWeight.w500,
                          ),
                        ],
                      ),
                      YBox(10.dy),
                      AppText(
                        isStartAligned: T,
                        text: isPower
                            ? 'HIGH POWER\nROUTINE'
                            : 'QUICK BURST\nROUTINE',
                        color: appColors.white,
                        fontSize: 15.sp,
                        fontWeight: FontWeight.w700,
                      ),
                      YBox(30.dy),
                      Row(
                        children: [
                          AppText(
                            isStartAligned: T,
                            text: '4 workouts ',
                            color: appColors.white,
                            fontSize: 12.sp,
                            fontWeight: FontWeight.w400,
                          ),
                          Container(
                            height: 8.dy,
                            width: 8.dy,
                            decoration: BoxDecoration(
                              color: appColors.yellow,
                              shape: BoxShape.circle,
                            ),
                            child: Center(
                                child: Icon(
                              Icons.keyboard_arrow_right,
                              size: 8.dx,
                            )),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
                Padding(
                  padding: EdgeInsets.symmetric(vertical: 10.dy)
                      .copyWith(top: 15.dy),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      SvgAsset(assetName: addIcon),
                      SvgAsset(assetName: doublePlay),
                      SvgAsset(assetName: nrcIcon),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
        YBox(10.dy),
        Padding(
          padding: EdgeInsets.only(left: 10.dx),
          child: AppText(
            isStartAligned: true,
            text:
                'Build up better health and physique while achieving\nthe ultimate summer body goal!',
            fontSize: 11.sp,
            fontWeight: FontWeight.w500,
          ),
        )
      ],
    );
  }

  Widget _buildSplitTexts(String text) {
    return Row(
      children: [
        XBox(10.dx),
        AppText(
          text: text,
          fontSize: 14.sp,
          fontWeight: FontWeight.w500,
        ),
        const Spacer(),
        BounceInAnimation(
          child: AppText(
            text: 'see more',
            fontSize: 12.sp,
            fontWeight: FontWeight.w400,
            color: appColors.grey80,
          ),
        ),
        XBox(10.dx),
      ],
    );
  }

  Widget _buildActivityContent(HomeAct homeAct) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Padding(
          padding: EdgeInsets.symmetric(vertical: 20.dy).copyWith(left: 10.dx),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                children: [
                  homeAct == HomeAct.first
                      ? SvgAsset(assetName: fireIcon)
                      : homeAct == HomeAct.second
                          ? SvgAsset(assetName: stepsIcon)
                          : homeAct == HomeAct.third
                              ? SvgAsset(assetName: weightIcon)
                              : SvgAsset(assetName: foodIcon),
                  XBox(5.dx),
                  Text(
                    homeAct == HomeAct.first
                        ? 'Daily calories'
                        : homeAct == HomeAct.second
                            ? 'Daily steps'
                            : homeAct == HomeAct.third
                                ? 'Weight record'
                                : 'Food',
                    style: GoogleFonts.inter(
                      fontSize: 16.sp,
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                ],
              ),
              homeAct == HomeAct.first
                  ? Text.rich(
                      TextSpan(
                        text: '   167 ',
                        style: GoogleFonts.inter(
                          fontSize: 16.sp,
                          fontWeight: FontWeight.w600,
                        ),
                        children: [
                          TextSpan(
                            text: 'kcal',
                            style: GoogleFonts.inter(
                              fontSize: 12.sp,
                              fontWeight: FontWeight.w500,
                              color: appColors.grey80,
                            ),
                          ),
                        ],
                      ),
                    )
                  : homeAct == HomeAct.second
                      ? Text.rich(
                          TextSpan(
                            text: '   140',
                            style: GoogleFonts.inter(
                              fontSize: 16.sp,
                              fontWeight: FontWeight.w600,
                              color: appColors.green,
                            ),
                            children: [
                              TextSpan(
                                text: '/4000',
                                style: GoogleFonts.inter(
                                  fontSize: 16.sp,
                                  fontWeight: FontWeight.w600,
                                  color: appColors.black,
                                ),
                              ),
                            ],
                          ),
                        )
                      : homeAct == HomeAct.third
                          ? Text.rich(
                              TextSpan(
                                text: '   83.3 ',
                                style: GoogleFonts.inter(
                                  fontSize: 16.sp,
                                  fontWeight: FontWeight.w600,
                                ),
                                children: [
                                  TextSpan(
                                    text: 'kg',
                                    style: GoogleFonts.inter(
                                      fontSize: 12.sp,
                                      fontWeight: FontWeight.w500,
                                      color: appColors.grey80,
                                    ),
                                  ),
                                ],
                              ),
                            )
                          : Text.rich(
                              TextSpan(
                                text: '   0/1567 ',
                                style: GoogleFonts.inter(
                                  fontSize: 16.sp,
                                  fontWeight: FontWeight.w600,
                                ),
                                children: [
                                  TextSpan(
                                    text: 'kcal',
                                    style: GoogleFonts.inter(
                                      fontSize: 12.sp,
                                      fontWeight: FontWeight.w500,
                                      color: appColors.grey80,
                                    ),
                                  ),
                                ],
                              ),
                            ),
            ],
          ),
        ),
        SizedBox(
          width: 169.dx,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              homeAct == HomeAct.first
                  ? SvgAsset(assetName: dailyCal)
                  : homeAct == HomeAct.second
                      ? SvgAsset(assetName: dailySteps)
                      : homeAct == HomeAct.third
                          ? Column(
                              mainAxisSize: MainAxisSize.min,
                              children: [
                                Row(
                                  mainAxisAlignment: MainAxisAlignment.end,
                                  children: [
                                    Container(
                                      width: 33.dx,
                                      height: 15.dy,
                                      alignment: Alignment.center,
                                      margin: EdgeInsets.only(right: 26.dx),
                                      decoration: BoxDecoration(
                                        color: appColors.green,
                                        borderRadius: BorderRadius.circular(5),
                                      ),
                                      child: Text(
                                        '74.3kg',
                                        style: GoogleFonts.inter(
                                          fontSize: 7.sp,
                                          fontWeight: FontWeight.w500,
                                          color: appColors.white,
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                                SvgAsset(assetName: weightChart),
                                _recordButton(),
                              ],
                            )
                          : Column(
                              mainAxisSize: MainAxisSize.min,
                              children: [
                                YBox(50.dy),
                                _recordButton(),
                              ],
                            ),
            ],
          ),
        ),
      ],
    );
  }

  Widget _recordButton() {
    return BounceInAnimation(
      child: Container(
        height: 27.dy,
        width: 76.dx,
        decoration: BoxDecoration(
          color: appColors.yellow,
          borderRadius: BorderRadius.circular(12),
        ),
        child: AppText(
          text: 'Record',
          fontSize: 14.sp,
          fontWeight: FontWeight.w500,
        ),
      ),
    );
  }

  Widget _buildText(String text) {
    return Padding(
      padding: EdgeInsets.symmetric(vertical: 20.dy).copyWith(top: 30.dy),
      child: AppText(
        isStartAligned: true,
        text: text,
        fontSize: 16.sp,
        fontWeight: FontWeight.w500,
      ),
    );
  }

  Widget _buildAppBar() {
    return Container(
      height: 122.dy,
      width: double.infinity,
      color: appColors.white,
      padding: EdgeInsets.symmetric(horizontal: 20.dx),
      child: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            YBox(55.dy),
            Row(
              children: [
                SvgAsset(assetName: drawerIcon),
                const Spacer(),
                const Icon(CupertinoIcons.search),
                XBox(20.dx),
                const Icon(CupertinoIcons.bell),
              ],
            ),
            YBox(20.dy),
            Text(
              formatDate(DateTime.now()),
              style: GoogleFonts.inter(
                fontSize: 11.sp,
                fontWeight: FontWeight.w500,
                color: appColors.grey33,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
