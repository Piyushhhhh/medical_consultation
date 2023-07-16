import 'package:flutter/material.dart';
import 'package:medical_consultation/constants/colors.dart';
import 'package:medical_consultation/constants/strings.dart';
import 'package:medical_consultation/constants/text_styles.dart';
import 'package:medical_consultation/features/dashboard/screens/doctor_details_screen.dart';
import 'package:medical_consultation/models/doctor_details.dart';

class TopDoctors extends StatelessWidget {
  final List<DoctorDetail> topDoctors;
  const TopDoctors({super.key, required this.topDoctors});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              Strings.topDocsForYou,
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
        ListView.builder(
          itemCount: topDoctors.length,
          physics: const NeverScrollableScrollPhysics(),
          shrinkWrap: true,
          itemBuilder: (context, index) {
            return GestureDetector(
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (_) => DoctorDetailsScreen(
                      doctorDetail: topDoctors[index],
                    ),
                  ),
                );
              },
              child: Container(
                padding: const EdgeInsets.all(10),
                margin: const EdgeInsets.symmetric(
                  vertical: 5,
                ),
                decoration: BoxDecoration(
                    color: AppColors.containerBackground(),
                    borderRadius: BorderRadius.circular(15)),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Image.network(
                      topDoctors[index].imageUrl ?? '',
                    ),
                    const SizedBox(
                      width: 10,
                    ),
                    Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          '${topDoctors[index].specialty ?? ''} ${Strings.specialist}',
                          style: TextStyles.regular16.withFadeText(),
                        ),
                        const SizedBox(
                          height: 5,
                        ),
                        Text(
                          'dr. ${topDoctors[index].name ?? ''}',
                          style: TextStyles.semibold22.textColor(),
                        ),
                        const SizedBox(
                          height: 5,
                        ),
                        Row(
                          children: [
                            Icon(
                              Icons.star,
                              color: AppColors.accent(),
                            ),
                            const SizedBox(
                              width: 2,
                            ),
                            Text(
                              (topDoctors[index].rating ?? '').toString(),
                              style: TextStyles.regular16.textColor(),
                            ),
                            const SizedBox(
                              width: 5,
                            ),
                            Text(
                              '•',
                              style: TextStyles.semibold20.textColor(),
                            ),
                            const SizedBox(
                              width: 5,
                            ),
                            Text(
                              '${topDoctors[index].numberOfReviews ?? ''} ${Strings.reviews}',
                              style: TextStyles.regular16.textColor(),
                            ),
                          ],
                        )
                      ],
                    ),
                  ],
                ),
              ),
            );
          },
        ),
      ],
    );
  }
}
