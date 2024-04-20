import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class SvgAsset extends StatelessWidget {
  final String assetName;
  final Color? color;
  const SvgAsset({
    super.key,
    required this.assetName,
    this.color,
  });

  @override
  Widget build(BuildContext context) {
    return SvgPicture.asset(
      assetName,
      colorFilter: color == null
          ? null
          : ColorFilter.mode(
              color!,
              BlendMode.srcIn,
            ),
    );
  }
}
