import 'package:flutter/material.dart';
import 'package:medical_consultation/constants/colors.dart';
import 'package:medical_consultation/features/dashboard/widgets/rounded_button.dart';

class TopButtons extends StatefulWidget {
  const TopButtons({super.key});

  @override
  State<TopButtons> createState() => _TopButtonsState();
}

class _TopButtonsState extends State<TopButtons> {
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        RoundedButton(
          label: 'Hospital',
          icons: Icons.local_convenience_store,
          color: AppColors.negative(),
        ),
        RoundedButton(
          label: 'Consulation',
          icons: Icons.monitor_heart,
          color: AppColors.positive(),
        ),
        RoundedButton(
          label: 'Recipe',
          icons: Icons.receipt_long_rounded,
          color: AppColors.accent(),
        ),
        RoundedButton(
          label: 'Appointment',
          icons: Icons.app_registration_outlined,
          color: AppColors.negative(),
        ),
      ],
    );
  }
}
