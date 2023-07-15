import 'package:flutter/material.dart';
import 'package:medical_consultation/constants/colors.dart';
import 'package:medical_consultation/features/dashboard/widgets/doctor_description.dart';
import 'package:medical_consultation/features/dashboard/widgets/doctor_detail_app_bar.dart';
import 'package:medical_consultation/features/dashboard/widgets/doctor_name_pic_widget.dart';
import 'package:medical_consultation/features/dashboard/widgets/doctor_stats_card.dart';
import 'package:medical_consultation/features/dashboard/widgets/schedule_creator.dart';
import 'package:medical_consultation/models/doctor_details.dart';

class DoctorDetailsScreen extends StatefulWidget {
  final DoctorDetail doctorDetail;
  const DoctorDetailsScreen({super.key, required this.doctorDetail});

  @override
  State<DoctorDetailsScreen> createState() => _DoctorDetailsScreenState();
}

class _DoctorDetailsScreenState extends State<DoctorDetailsScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.primary(),
      appBar: doctorDeatilAppBar(context),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(10.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              DoctorProfilePictureAndName(
                doctorDetail: widget.doctorDetail,
              ),
              DoctorStatsCard(doctorDetail: widget.doctorDetail),
              const SizedBox(
                height: 10,
              ),
              DoctorDescription(
                descrition: widget.doctorDetail.doctorDescription ?? '',
              ),
              const SizedBox(
                height: 20,
              ),
              ScheduleCreator(
                  doctorAvailablity:
                      widget.doctorDetail.doctorAvailablity ?? []),
            ],
          ),
        ),
      ),
    );
  }
}
