import 'package:flutter/material.dart';
import 'package:medical_consultation/constants/colors.dart';
import 'package:medical_consultation/constants/strings.dart';
import 'package:medical_consultation/constants/text_styles.dart';
import 'package:medical_consultation/features/dashboard/widgets/appointment_card.dart';

class AppointmentDashboardWidget extends StatelessWidget {
  const AppointmentDashboardWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const SizedBox(
          height: 20,
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              Strings.appointmentToday,
              style: TextStyles.semibold22.textColor(),
            ),
            GestureDetector(
              onTap: () {},
              child: Text(
                Strings.seeAll,
                style:
                    TextStyles.regular16.copyWith(color: AppColors.positive()),
              ),
            ),
          ],
        ),
        const SizedBox(
          height: 10,
        ),
        const AppionmentStackCard(),
      ],
    );
  }
}
