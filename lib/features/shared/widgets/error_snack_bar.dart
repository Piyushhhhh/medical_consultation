import 'package:flutter/material.dart';
import 'package:medical_consultation/constants/colors.dart';
import 'package:medical_consultation/constants/text_styles.dart';

buildErrorSnackBar(BuildContext context, {String? message}) {
  ScaffoldMessenger.of(context).showSnackBar(
    SnackBar(
      behavior: SnackBarBehavior.floating,
      content: Text(
        message ?? 'Unknown error',
        style: TextStyles.semibold16.textColor(),
      ),
      backgroundColor: AppColors.negative(),
    ),
  );
}
