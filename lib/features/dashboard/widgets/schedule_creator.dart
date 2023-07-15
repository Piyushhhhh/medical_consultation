import 'package:flutter/material.dart';
import 'package:medical_consultation/constants/strings.dart';
import 'package:medical_consultation/constants/text_styles.dart';
import 'package:medical_consultation/features/dashboard/widgets/appointment_day.dart';
import 'package:medical_consultation/features/dashboard/widgets/appointment_time.dart';

class ScheduleCreator extends StatelessWidget {
  const ScheduleCreator({super.key});

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
        Container(
          margin: const EdgeInsets.only(bottom: 15.0, top: 10),
          height: 70,
          child: ListView(
            padding: EdgeInsets.zero,
            scrollDirection: Axis.horizontal,
            children: const <Widget>[
              Appointmentday(
                appointmentDate: "Mon",
                appointmentDay: "15",
              ),
              Appointmentday(
                appointmentDate: "Tue",
                appointmentDay: "17",
              ),
              Appointmentday(
                appointmentDate: "Wed",
                appointmentDay: "18",
              ),
              Appointmentday(
                appointmentDate: "Thu",
                appointmentDay: "19",
              ),
              Appointmentday(
                appointmentDate: "Fri",
                appointmentDay: "21",
              ),
              Appointmentday(
                appointmentDate: "Sat",
                appointmentDay: "25",
              ),
              Appointmentday(
                appointmentDate: "Sun",
                appointmentDay: "28",
              ),
            ],
          ),
        ),
        Container(
          margin: const EdgeInsets.only(
            bottom: 15.0,
            top: 10,
          ),
          height: 45,
          child: ListView(
            padding: EdgeInsets.zero,
            scrollDirection: Axis.horizontal,
            children: const <Widget>[
              AppointmentTime(
                appointmentTime: "9:00 AM",
              ),
              AppointmentTime(
                appointmentTime: "10:00 AM",
              ),
              AppointmentTime(
                appointmentTime: "10:30 AM",
              ),
              AppointmentTime(
                appointmentTime: "11:00 AM",
              ),
              AppointmentTime(
                appointmentTime: "12:00 AM",
              ),
              AppointmentTime(
                appointmentTime: "1:00 PM",
              ),
              AppointmentTime(
                appointmentTime: "2:00 PM",
              ),
            ],
          ),
        ),
      ],
    );
  }
}
