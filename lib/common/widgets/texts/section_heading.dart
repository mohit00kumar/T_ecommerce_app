// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';

class TSectionHeading extends StatelessWidget {
  final String title;
  final Color? textColor;
  final String buttonTitle;
  final bool showActionButton;
  final void Function()? onPressed;

  const TSectionHeading({
    Key? key,
    required this.title,
    this.textColor,
    this.buttonTitle = 'Show all',
    this.showActionButton = true,
    this.onPressed,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(
          title,
          style: Theme.of(context)
              .textTheme
              .headlineSmall!
              .apply(color: textColor),
          maxLines: 1,
          overflow: TextOverflow.ellipsis,
        ),
        if (showActionButton)
          TextButton(onPressed: onPressed, child: Text(buttonTitle))
      ],
    );
  }
}
