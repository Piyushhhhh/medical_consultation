import 'package:flutter/material.dart';
import 'package:medical_consultation/constants/text_styles.dart';
import 'package:medical_consultation/models/doctor_details.dart';

class DoctorProfilePictureAndName extends StatelessWidget {
  final DoctorDetail doctorDetail;
  const DoctorProfilePictureAndName({super.key, required this.doctorDetail});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Center(
          child: CircleAvatar(
            backgroundImage: NetworkImage(doctorDetail.imageUrl ?? ''),
            maxRadius: 40,
          ),
        ),
        const SizedBox(
          height: 20,
        ),
        Center(
          child: Text(
            "dr.${doctorDetail.name}",
            style: TextStyles.semibold20.textColor(),
          ),
        ),
        const SizedBox(
          height: 5,
        ),
        Center(
          child: Text(
            '${doctorDetail.specialty} Specialist',
            style: TextStyles.regular18.withFadeText(),
          ),
        ),
      ],
    );
  }
}
