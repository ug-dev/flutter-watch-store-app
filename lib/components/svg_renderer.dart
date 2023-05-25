import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

Widget renderSvg(String assetName, [ColorFilter? colorFilter]) {
  return SvgPicture.asset(
    assetName,
    // colorFilter: colorFilter,
  );
}
