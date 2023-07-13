import 'package:flutter/material.dart';
import 'package:medical_consultation/constants/colors.dart';
import 'package:medical_consultation/constants/text_styles.dart';

PreferredSizeWidget doctorDeatilAppBar(BuildContext context) {
  return AppBar(
    elevation: 0,
    backgroundColor: AppColors.primary(),
    leading: GestureDetector(
      onTap: () {
        Navigator.pop(context);
      },
      child: Padding(
        padding: const EdgeInsets.all(10.0),
        child: Container(
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(40),
              color: AppColors.containerBackground().withOpacity(0.2)),
          child: Center(
            child: Icon(
              Icons.arrow_back_ios_new_rounded,
              color: AppColors.containerBackground(),
              size: 18,
            ),
          ),
        ),
      ),
    ),
    title: Text(
      'Detail Doctor',
      style: TextStyles.semibold22.withColor(AppColors.containerBackground()),
    ),
  );
}
