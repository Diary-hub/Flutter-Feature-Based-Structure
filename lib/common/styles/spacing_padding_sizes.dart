import 'package:flutter/painting.dart';
import 'package:kumics/utils/constants/sizes.dart';

class KSpacingPaddingSizes {
  static const EdgeInsetsGeometry paddingWithAppBarHeight = EdgeInsets.only(
    top: KSizes.appBarHeight - 30,
    left: KSizes.defaultSpace,
    bottom: KSizes.defaultSpace,
    right: KSizes.defaultSpace - 15,
  );
}
