import 'package:flutter/material.dart';
import 'package:medical_consultation/constants/colors.dart';
import 'package:medical_consultation/constants/strings.dart';
import 'package:medical_consultation/constants/text_styles.dart';
import 'package:medical_consultation/models/doctor_details.dart';

class DoctorStatsCard extends StatelessWidget {
  final DoctorDetail doctorDetail;
  const DoctorStatsCard({super.key, required this.doctorDetail});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.all(10),
      padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 12),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(15),
        color: AppColors.accent().withOpacity(0.2),
      ),
      child: IntrinsicHeight(
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Column(
              children: [
                Text(
                  Strings.patients,
                  style: TextStyles.regular14
                      .withColor(AppColors.containerBackground()),
                ),
                const SizedBox(
                  height: 5,
                ),
                Text(
                  "${doctorDetail.noOfPatient}",
                  style: TextStyles.semibold20.withFadeText(),
                ),
              ],
            ),
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 5),
              child: VerticalDivider(
                color: AppColors.containerBackground(),
                thickness: 1,
              ),
            ),
            Column(
              children: [
                Text(
                  Strings.experience,
                  style: TextStyles.regular14
                      .withColor(AppColors.containerBackground()),
                ),
                const SizedBox(
                  height: 5,
                ),
                RichText(
                  text: TextSpan(
                    children: [
                      TextSpan(
                        text: "${doctorDetail.yearsOfExperience}",
                        style: TextStyles.semibold20.withFadeText(),
                      ),
                      TextSpan(
                        text: Strings.shortYrs,
                        style: TextStyles.semibold12.withFadeText(),
                      ),
                    ],
                  ),
                ),
              ],
            ),
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 5),
              child: VerticalDivider(
                color: AppColors.containerBackground(),
                thickness: 1,
              ),
            ),
            Column(
              children: [
                Text(
                  Strings.rating,
                  style: TextStyles.regular14
                      .withColor(AppColors.containerBackground()),
                ),
                const SizedBox(
                  height: 5,
                ),
                Text(
                  "${doctorDetail.rating}",
                  style: TextStyles.semibold20.withFadeText(),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
