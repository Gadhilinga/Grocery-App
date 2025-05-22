import 'package:flutter/material.dart';

class CommonHeaderTitle extends StatelessWidget {
  final String title;
  final double? fontSize;
  final FontWeight? fontWeight;
  final int? maxLines;
  final Color? color;
  final Color? decorationClor;
  final TextOverflow? textOverflow;
  final TextDecoration? decoration;
  final TextAlign? textAlign;

  const CommonHeaderTitle({
    super.key,
    required this.title,
    this.fontSize,
    this.fontWeight,
    this.maxLines,
    this.color,
    this.decorationClor,
    this.textOverflow,
    this.decoration,
    this.textAlign,
  });

  @override
  Widget build(BuildContext context) {
    return Text(
      title,
      maxLines: maxLines,
      textAlign: textAlign,
      overflow: textOverflow,
      style: TextStyle(
        decoration: decoration,
        decorationColor: decorationClor ?? Colors.black,
        color: color,
        fontSize: fontSize ?? 16,
        fontWeight: fontWeight ?? FontWeight.w500,
      ),
    );
  }
}
