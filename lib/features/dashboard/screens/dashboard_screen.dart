import 'package:flutter/material.dart';
import 'package:medical_consultation/features/dashboard/widgets/appointments.dart';
import 'package:medical_consultation/features/dashboard/widgets/dashboard_title.dart';
import 'package:medical_consultation/features/dashboard/widgets/search_consultion.dart';
import 'package:medical_consultation/features/dashboard/widgets/top_buttons.dart';
import 'package:medical_consultation/features/dashboard/widgets/top_doctors.dart';

class DashboardScreen extends StatefulWidget {
  const DashboardScreen({super.key});

  @override
  State<DashboardScreen> createState() => _DashboardScreenState();
}

class _DashboardScreenState extends State<DashboardScreen> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(10.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: const [
              DashboardTitle(),
              SearchConsultaionField(),
              TopButtons(),
              AppointmentDashboardWidget(),
              TopDoctors(),
            ],
          ),
        ),
      ),
    );
  }
}
