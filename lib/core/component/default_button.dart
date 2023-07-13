import 'package:flutter/material.dart';

import '../themes/app_colors.dart';

class AppButton extends StatelessWidget {
  final double? height;
  final double? fontSize;
  final double? width;
  final double? radius;
  final double horizontalPadding;
  final String? title;
  final Widget? child;
  final Color color;
  final bool loading;
  final Color backgroundColor;
  final VoidCallback? onPressed;
  final Color? borderColor;
  final Color? textColor;
  final bool isOutlineBorder;
  const AppButton({
    Key? key,
    this.height,
    this.fontSize,
    this.width,
    this.child,
    this.color = AppColors.primary,
    this.onPressed,
    this.borderColor,
    this.horizontalPadding = 25,
    this.isOutlineBorder = false,
    this.backgroundColor = Colors.white,
    this.title,
    this.textColor,
    this.radius,
    this.loading = false,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return SizedBox(
      height: height ?? size.longestSide * 0.045,
      width: width,
      child: ElevatedButton(
        onPressed: loading == true ? () {} : onPressed,
        clipBehavior: Clip.antiAliasWithSaveLayer,
        style: ElevatedButton.styleFrom(
          disabledForegroundColor: AppColors.transparent,
          disabledBackgroundColor: AppColors.transparent,
          backgroundColor: isOutlineBorder ? backgroundColor : color ,
          elevation: 0,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(radius ?? 8),
            side: BorderSide(color: borderColor ?? color, width: 1.5),
          ),
        ),
        child: title == null
            ? child
            : Padding(
                padding: EdgeInsets.symmetric(horizontal: horizontalPadding),
                child: FittedBox(
                  child: Text(
                    "$title",
                    style: Theme.of(context).textTheme.button!.copyWith(
                        color: isOutlineBorder ? textColor : Colors.white,
                        fontSize: fontSize),
                  ),
                ),
              ),
      ),
    );
  }
}
