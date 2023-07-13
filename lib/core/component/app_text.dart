
import 'package:flutter/material.dart';
import '../themes/app_colors.dart';
import 'font_manager.dart';

class AppText extends StatelessWidget {
  final String title;
  final TextAlign? textAlign;
  final TextDecoration? textDecoration;

  final FontWeight? fontWeight;
  final double? size;
  final Color? color;
  const AppText(
      {Key? key,
      required this.title,
      this.fontWeight,
      this.size,
      this.color, this.textAlign, this.textDecoration,
      })
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Text( textAlign:textAlign?? TextAlign.center,
      title,
      overflow: TextOverflow.visible,
      style: TextStyle(
        decoration: textDecoration,
          color: color ?? AppColors.primary,
          fontWeight: fontWeight ?? FontWeightManager.medium,
          fontSize: size ?? FontSize.s14,
          fontFamily: FontConstants.fontFamily,

      ),
    );
  }
}
