import 'package:flutter/material.dart';

class FadingText extends StatelessWidget {
  const FadingText(this.text, {super.key, this.color, this.textAlign});

  final String text;
  final Color? color;
  final TextAlign? textAlign;

  @override
  Widget build(BuildContext context) {
    return Text(text,
        maxLines: 1,
        overflow: TextOverflow.fade,
        textAlign: textAlign,
        softWrap: false,
        style: TextStyle(
            fontSize: 16, fontWeight: FontWeight.normal, color: color));
  }
}
