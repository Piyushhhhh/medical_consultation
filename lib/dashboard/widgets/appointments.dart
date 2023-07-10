import 'package:flutter/material.dart';
import 'package:medical_consultation/constants/colors.dart';
import 'package:medical_consultation/constants/text_styles.dart';

class AppointmentDashboardWidget extends StatefulWidget {
  const AppointmentDashboardWidget({super.key});

  @override
  State<AppointmentDashboardWidget> createState() =>
      _AppointmentDashboardWidgetState();
}

class _AppointmentDashboardWidgetState
    extends State<AppointmentDashboardWidget> {
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
              'Appointment Today',
              style: TextStyles.semibold22.textColor(),
            ),
            GestureDetector(
              onTap: () {},
              child: Text(
                'See all',
                style:
                    TextStyles.regular16.copyWith(color: AppColors.positive()),
              ),
            ),
          ],
        )
      ],
    );
  }
}
