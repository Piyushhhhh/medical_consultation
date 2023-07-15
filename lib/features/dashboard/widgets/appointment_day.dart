import 'package:flutter/material.dart';
import 'package:medical_consultation/constants/colors.dart';

class Appointmentday extends StatelessWidget {
  final String appointmentDay;
  final String appointmentDate;
  const Appointmentday(
      {super.key, required this.appointmentDay, required this.appointmentDate});

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
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            appointmentDay,
            style: const TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
          ),
          const SizedBox(
            height: 5,
          ),
          Text(
            appointmentDate,
            style: const TextStyle(fontWeight: FontWeight.normal),
          ),
        ],
      ),
    );
  }
}
