import 'package:flutter/material.dart';
import 'package:medical_consultation/constants/strings.dart';
import 'package:medical_consultation/constants/text_styles.dart';
import 'package:medical_consultation/features/dashboard/widgets/appointment_card.dart';
import 'package:medical_consultation/models/appointment.dart';

class AppointmentDashboardWidget extends StatelessWidget {
  final List<UserAppointment> userAppointment;
  const AppointmentDashboardWidget({super.key, required this.userAppointment});

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
              child: Text(Strings.seeAll,
                  style: TextStyles.regular16.withPrimary()),
            ),
          ],
        ),
        const SizedBox(
          height: 10,
        ),
        AppionmentStackCard(
          userAppointment: userAppointment,
        ),
      ],
    );
  }
}
