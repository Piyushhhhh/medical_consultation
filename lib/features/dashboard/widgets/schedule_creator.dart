import 'package:flutter/material.dart';
import 'package:medical_consultation/constants/strings.dart';
import 'package:medical_consultation/constants/text_styles.dart';

class ScheduleCreator extends StatefulWidget {
  const ScheduleCreator({super.key});

  @override
  State<ScheduleCreator> createState() => _ScheduleCreatorState();
}

class _ScheduleCreatorState extends State<ScheduleCreator> {
  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.start,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          Strings.selectSchedule,
          style: TextStyles.semibold22.textColor(),
        ),
        const SizedBox(
          height: 10,
        ),
      ],
    );
  }
}
