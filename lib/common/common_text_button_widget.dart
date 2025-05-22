import 'package:flutter/material.dart';
import 'package:grocery/grocery_view/colors.dart';

class CommonTextButtonWidget extends StatelessWidget {
  final String title;
  final Color? color;
  final FontWeight? fontWeight;
  final double? fontSize;
  final VoidCallback? onPressed;

  const CommonTextButtonWidget({
    super.key,
    required this.title,
    this.color,
    this.fontWeight,
    this.fontSize,
    this.onPressed,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(
        gradient: gradientColor,
      ),
      child: ElevatedButton(
        onPressed: onPressed,
        child: Text(
          title,
          style: TextStyle(
            color: color ?? Colors.white,
            fontSize: fontSize ?? 16.0,
            fontWeight: fontWeight ?? FontWeight.w500,
          ),
        ),
      ),
    );
  }
}
