import 'package:flutter/material.dart';

import '../constants/app_colors.dart';
import '../constants/app_text_styles.dart';

class PrimaryButton extends StatelessWidget {
  final VoidCallback? onPressed;
  final String text;

  const PrimaryButton({
    super.key,
    this.onPressed,
    required this.text,
  });

  final BorderRadius _borderRardius =
      const BorderRadius.all(Radius.circular(24.0));

  @override
  Widget build(BuildContext context) {
    return Ink(
      height: 48.0,
      decoration: BoxDecoration(
          borderRadius: _borderRardius,
          gradient: LinearGradient(
              colors: onPressed != null
                  ? AppColors.greeGradient
                  : AppColors.greyGradient,
              begin: Alignment.topCenter,
              end: Alignment.bottomCenter)),
      child: InkWell(
        borderRadius: _borderRardius,
        onTap: onPressed,
        child: Align(
          child: Text(
            text,
            style: AppTextStyles.mediumText18.apply(color: AppColors.white),
          ),
        ),
      ),
    );
  }
}
