import 'package:flutter/material.dart';
import 'package:medical_consultation/constants/strings.dart';
import 'package:medical_consultation/constants/text_styles.dart';

class DashboardTitle extends StatelessWidget {
  const DashboardTitle({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              '${Strings.hello} Luke,',
              style: TextStyles.semibold24.textColor(),
            ),
            const SizedBox(
              height: 5,
            ),
            Text(
              Strings.howDoYouFeel,
              style: TextStyles.regular18.withFadeText(),
            )
          ],
        ),
        const Icon(
          Icons.account_circle_rounded,
          size: 60,
        ),
      ],
    );
  }
}
