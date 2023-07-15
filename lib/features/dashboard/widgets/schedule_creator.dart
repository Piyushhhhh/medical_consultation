import 'package:flutter/material.dart';
import 'package:medical_consultation/constants/strings.dart';
import 'package:medical_consultation/constants/text_styles.dart';

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
          margin: const EdgeInsets.only(
            bottom: 15.0,
          ),
          height: 60,
          child: ListView(
            padding: EdgeInsets.zero,
            scrollDirection: Axis.horizontal,
            children: <Widget>[
              appointmentDays("Monday", "June 15th", context),
              appointmentDays("Tuesday", "June 19th`", context),
              appointmentDays("Wednesday", "July 24th", context),
              appointmentDays("Thursday", "July 12th", context),
              appointmentDays("Friday", "July 13th", context),
              appointmentDays("Saturday", "August 7th", context),
              appointmentDays("Sunday", "August 9th", context),
            ],
          ),
        ),
        Container(
          margin: const EdgeInsets.only(
            bottom: 15.0,
          ),
          height: 50,
          child: ListView(
            padding: EdgeInsets.zero,
            scrollDirection: Axis.horizontal,
            children: <Widget>[
              appointmentTimes("9:00 AM", context),
              appointmentTimes("9:30 AM", context),
              appointmentTimes("10:00 AM", context),
              appointmentTimes("10:30 AM", context),
              appointmentTimes("11:00 AM", context),
            ],
          ),
        ),
      ],
    );
  }
}

Material appointmentDays(
    String appointmentDay, String appointmentDate, context) {
  return Material(
    color: Colors.white,
    child: Container(
      margin: const EdgeInsets.only(
        right: 1.0,
        left: 20.0,
        top: 5.0,
        bottom: 5.0,
      ),
      child: Container(
        color: Colors.transparent,
        // splashColor: Theme.of(context).primaryColor,
        padding: EdgeInsets.only(
          left: 30,
          right: 30,
          top: 6,
        ),
        // onPressed: () {},
        // textColor: Theme.of(context).primaryColor,
        // shape: RoundedRectangleBorder(
        //   borderRadius: BorderRadius.circular(7.5),
        // ),
        child: Align(
          alignment: Alignment.center,
          child: Column(
            children: [
              Text(
                appointmentDay ?? "error",
                style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
              ),
              Text(
                appointmentDate ?? "error",
                style: TextStyle(fontWeight: FontWeight.normal),
              ),
            ],
          ),
        ),
      ),
    ),
  );
}

Material appointmentTimes(String appointmentDay, context) {
  return Material(
    color: Colors.white,
    child: Container(
      margin: const EdgeInsets.only(
        right: 1.0,
        left: 20.0,
        top: 5.0,
        bottom: 5.0,
      ),
      child: Container(
        // style: ButtonStyle(),
        color: Colors.transparent,
        // splashColor: Theme.of(context).primaryColor,
        padding: EdgeInsets.only(
          left: 20,
          right: 20,
        ),
        // textColor: Theme.of(context).primaryColor,
        // shape: RoundedRectangleBorder(
        //   borderRadius: BorderRadius.circular(7.5),
        // ),
        child: Align(
          alignment: Alignment.center,
          child: Text(
            appointmentDay ?? "error",
            style: TextStyle(fontWeight: FontWeight.bold),
          ),
        ),
      ),
    ),
  );
}
