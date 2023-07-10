import 'package:flutter/material.dart';
import 'package:medical_consultation/constants/colors.dart';
import 'package:medical_consultation/constants/text_styles.dart';
import 'package:medical_consultation/data/appointments_mock.dart';

class AppionmentStackCard extends StatefulWidget {
  const AppionmentStackCard({super.key});

  @override
  State<AppionmentStackCard> createState() => _AppionmentStackCardState();
}

class _AppionmentStackCardState extends State<AppionmentStackCard> {
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 220,
      child: Stack(
        alignment: Alignment.center,
        children: <Widget>[
          Positioned(
            bottom: 20,
            child: Card(
              elevation: 8,
              color: AppColors.primary().withOpacity(0.05),
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(17)),
              child: SizedBox(
                height: 170,
                width: MediaQuery.of(context).size.width - 90,
              ),
            ),
          ),
          Positioned(
            bottom: 30,
            child: Card(
              elevation: 8,
              color: AppColors.primary().withOpacity(0.4),
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(17)),
              child: SizedBox(
                height: 170,
                width: MediaQuery.of(context).size.width - 65,
              ),
            ),
          ),
          Positioned(
            bottom: 40,
            child: Card(
              elevation: 8,
              color: AppColors.primary(),
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(17)),
              child: SizedBox(
                height: 170,
                width: MediaQuery.of(context).size.width - 50,
                child: Padding(
                  padding:
                      const EdgeInsets.symmetric(horizontal: 10, vertical: 10),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          CircleAvatar(
                            radius: 30,
                            backgroundImage: NetworkImage(
                              userAppointment.last.doctorImage ?? '',
                            ),
                          ),
                          const CircleAvatar(
                            radius: 30,
                            child: Icon(
                              Icons.chat_outlined,
                              size: 26,
                            ),
                          )
                        ],
                      ),
                      const SizedBox(
                        height: 20,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            userAppointment.last.doctorName ?? '',
                            style: TextStyles.semibold22
                                .copyWith(color: Colors.white),
                          ),
                          Text(
                            userAppointment.last.appointmentTime ?? '',
                            style: TextStyles.semibold22
                                .copyWith(color: Colors.white),
                          ),
                        ],
                      ),
                      const SizedBox(
                        height: 5,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(userAppointment.last.reason ?? '',
                              style: TextStyles.regular16.withFadeText()),
                          Text(userAppointment.last.appointmentDate ?? '',
                              style: TextStyles.regular16.withFadeText()),
                        ],
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
