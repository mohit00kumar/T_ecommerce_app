import 'package:flutter/material.dart';
import 'package:t_store/utils/constants/colors.dart';

class TShadowStyle {
  static final verticalProductShadow = BoxShadow(
      color: TColors.darkGrey.withOpacity(0.1),
      blurRadius: 50,
      offset: const Offset(0, 2),
      spreadRadius: 6);

  static final horizontalProductShadow = BoxShadow(
      color: TColors.darkGrey.withOpacity(0.1),
      blurRadius: 50,
      offset: const Offset(0, 2),
      spreadRadius: 6);
}
