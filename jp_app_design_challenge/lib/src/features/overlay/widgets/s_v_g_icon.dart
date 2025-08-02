import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class SVGIcon extends StatelessWidget {
  final String assetName;
  const SVGIcon({
    super.key, required this.assetName,
  });

  @override
  Widget build(BuildContext context) {
    return SvgPicture.asset(
      assetName,
      width: 18,
      height: 18,
      colorFilter: ColorFilter.mode(
        Colors.white,
        BlendMode.srcIn,
      ),
    );
  }
}
