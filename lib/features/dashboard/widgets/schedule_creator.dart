import 'package:flutter/material.dart';
import 'package:medical_consultation/constants/strings.dart';
import 'package:medical_consultation/constants/text_styles.dart';
import 'package:medical_consultation/features/dashboard/widgets/appointment_day.dart';
import 'package:medical_consultation/features/dashboard/widgets/appointment_time.dart';
import 'package:medical_consultation/models/doctor_details.dart';

class ScheduleCreator extends StatelessWidget {
  final List<DoctorAvailableDate> doctorAvailablity;
  const ScheduleCreator({super.key, required this.doctorAvailablity});

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

        //date selector
        Container(
          margin: const EdgeInsets.only(bottom: 15.0, top: 10),
          height: 70,
          child: ListView.builder(
            padding: EdgeInsets.zero,
            scrollDirection: Axis.horizontal,
            itemCount: doctorAvailablity.length,
            itemBuilder: (context, index) {
              return Appointmentday(
                appointmentDate: doctorAvailablity[index].date ?? '',
                appointmentDay: doctorAvailablity[index].day ?? '',
              );
            },
          ),
        ),

        //time selector
        Container(
          margin: const EdgeInsets.only(
            bottom: 15.0,
            top: 10,
          ),
          height: 45,
          child: ListView.builder(
            padding: EdgeInsets.zero,
            scrollDirection: Axis.horizontal,
            itemCount:
                doctorAvailablity.first.doctorAvailableTimeOfTheDay?.length,
            itemBuilder: (BuildContext context, int index) {
              return AppointmentTime(
                appointmentTime: doctorAvailablity
                        .first.doctorAvailableTimeOfTheDay?[index].time ??
                    '',
              );
            },
          ),
        ),
      ],
    );
  }
}
