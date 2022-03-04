import 'package:flutter/material.dart';
import 'package:shop_app/constants.dart';

class TextApp extends StatelessWidget {
  final String text;
  final Color? color;
  final double? fontSize;
  final FontWeight? fontWeight;
  final TextAlign? textAlign;

  const TextApp({ 
    Key? key, 
    required this.text, 
    this.color,
    this.fontSize,
    this.fontWeight,
    this.textAlign
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      style: TextStyle(
        color: (color != null) ? color : whiteColor,
        fontSize: fontSize,
        fontWeight: FontWeight.bold,
      ),
      textAlign: textAlign,
    );
  }
}