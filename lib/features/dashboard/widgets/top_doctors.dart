import 'package:flutter/material.dart';
import 'package:medical_consultation/constants/colors.dart';
import 'package:medical_consultation/constants/text_styles.dart';
import 'package:medical_consultation/data/recomended_doctor.dart';

class TopDoctors extends StatelessWidget {
  const TopDoctors({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              "Top Doctor's for you",
              style: TextStyles.semibold22.textColor(),
            ),
            GestureDetector(
              onTap: () {},
              child: Text(
                'See all',
                style:
                    TextStyles.regular16.copyWith(color: AppColors.positive()),
              ),
            ),
          ],
        ),
        const SizedBox(
          height: 10,
        ),
        ListView.builder(
          itemCount: recomendedDoctor.length,
          physics: const NeverScrollableScrollPhysics(),
          shrinkWrap: true,
          itemBuilder: (context, index) {
            return GestureDetector(
              onTap: () {},
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
                      recomendedDoctor[index].imageUrl ?? '',
                    ),
                    const SizedBox(
                      width: 10,
                    ),
                    Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          '${recomendedDoctor[index].specialty ?? ''} Specialist',
                          style: TextStyles.regular16.withFadeText(),
                        ),
                        const SizedBox(
                          height: 5,
                        ),
                        Text(
                          'dr. ${recomendedDoctor[index].name ?? ''}',
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
                              (recomendedDoctor[index].rating ?? '').toString(),
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
                              '${recomendedDoctor[index].numberOfReviews ?? ''} Reviews',
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
        )
      ],
    );
  }
}
