// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';

import 'package:t_store/utils/constants/colors.dart';

class TCircularContainer extends StatelessWidget {
  final double radius;
  final double? height;
  final double? width;
  final double padding;
  final Widget? child;
  final EdgeInsetsGeometry? margin;
  final Color backgroundColor;

  const TCircularContainer({
    Key? key,
    this.radius = 400,
    this.height = 400,
    this.width = 400,
    this.padding = 0,
    this.child,
    this.margin,
    this.backgroundColor = TColors.white,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: height,
      width: width,
      padding: EdgeInsets.all(padding),
      margin: margin,
      decoration: BoxDecoration(
          color: backgroundColor, borderRadius: BorderRadius.circular(radius)),
      child: child,
    );
  }
}
