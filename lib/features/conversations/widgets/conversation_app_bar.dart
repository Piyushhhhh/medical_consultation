import 'package:flutter/material.dart';
import 'package:medical_consultation/constants/colors.dart';
import 'package:medical_consultation/constants/text_styles.dart';

PreferredSizeWidget conversationAppBar() {
  return AppBar(
    backgroundColor: AppColors.background(),
    elevation: 0,
    centerTitle: false,
    title: Text(
      'Chat',
      style: TextStyles.semibold26.textColor(),
    ),
    actions: [
      Padding(
        padding: const EdgeInsets.all(8.0),
        child: Icon(
          Icons.more_horiz_sharp,
          color: AppColors.text(),
          size: 27,
        ),
      )
    ],
  );
}
