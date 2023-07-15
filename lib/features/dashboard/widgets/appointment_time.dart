import 'package:flutter/material.dart';
import 'package:medical_consultation/constants/colors.dart';

class AppointmentTime extends StatelessWidget {
  final String appointmentTime;
  const AppointmentTime({super.key, required this.appointmentTime});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(
        horizontal: 5,
      ),
      padding: const EdgeInsets.all(10),
      decoration: BoxDecoration(
        color: AppColors.containerBackground(),
        borderRadius: BorderRadius.circular(15),
      ),
      child: Center(
        child: Text(
          appointmentTime,
          style: const TextStyle(fontWeight: FontWeight.bold),
        ),
      ),
    );
  }
}
