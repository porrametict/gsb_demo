import 'package:flutter/material.dart';

class PrimaryButton extends StatelessWidget {
  const PrimaryButton(
      {Key? key,
      required this.onPressed,
      required this.child,
      this.isOutlined = false,
      this.useSmallSize = false})
      : super(key: key);
  final VoidCallback onPressed;
  final Widget child;
  final bool isOutlined;
  final bool useSmallSize;
  // style config

  static RoundedRectangleBorder btnShape = RoundedRectangleBorder(
    borderRadius: BorderRadius.circular(8),
  );

  @override
  Widget build(BuildContext context) {
    final minSize = (useSmallSize) ? null : const Size(150, 30);
    final padding = (useSmallSize)
        ? const EdgeInsets.symmetric(vertical: 0, horizontal: 15)
        : const EdgeInsets.symmetric(vertical: 16);

    if (isOutlined) {
      return OutlinedButton(
        onPressed: onPressed,
        child: child,
        style: OutlinedButton.styleFrom(
            minimumSize: minSize,
            elevation: 0,
            padding: padding,
            side: BorderSide(width: 1.5, color: Theme.of(context).primaryColor),
            shape: btnShape),
      );
    } else {
      return ElevatedButton(
        onPressed: onPressed,
        child: child,
        style: ElevatedButton.styleFrom(
            minimumSize: minSize,
            elevation: 0,
            padding: padding,
            shape: btnShape),
      );
    }
  }
}
