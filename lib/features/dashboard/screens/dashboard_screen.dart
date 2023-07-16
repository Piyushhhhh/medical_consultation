import 'package:flutter/material.dart';
import 'package:medical_consultation/features/dashboard/provider/dashboard_provider.dart';
import 'package:medical_consultation/features/dashboard/widgets/appointments.dart';
import 'package:medical_consultation/features/dashboard/widgets/dashboard_title.dart';
import 'package:medical_consultation/features/dashboard/widgets/search_consultion.dart';
import 'package:medical_consultation/features/dashboard/widgets/top_buttons.dart';
import 'package:medical_consultation/features/dashboard/widgets/top_doctors.dart';
import 'package:medical_consultation/features/shared/notifiers/base_provider.dart';
import 'package:medical_consultation/features/shared/widgets/error_snack_bar.dart';
import 'package:provider/provider.dart';

class DashboardScreen extends StatefulWidget {
  const DashboardScreen({super.key});

  @override
  State<DashboardScreen> createState() => _DashboardScreenState();
}

class _DashboardScreenState extends State<DashboardScreen> {
  TextEditingController searchController = TextEditingController();
  DashboardProvider dashboardProvider = DashboardProvider();
  @override
  void initState() {
    Future.wait([dashboardProvider.init()]);
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return BaseProvider.value(
      value: dashboardProvider,
      onError: (notifier, message) =>
          buildErrorSnackBar(context, message: message),
      builder: (context, child) {
        return Consumer<DashboardProvider>(
          builder: (context, provider, child) {
            return SafeArea(
              child: SingleChildScrollView(
                child: Padding(
                  padding: const EdgeInsets.all(10.0),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const DashboardTitle(),
                      const SearchConsultaionField(),
                      const TopButtons(),
                      AppointmentDashboardWidget(
                        userAppointment:
                            dashboardProvider.userCurrentAppointment,
                      ),
                      TopDoctors(
                        topDoctors: dashboardProvider.topRecomendedDoctor,
                      ),
                    ],
                  ),
                ),
              ),
            );
          },
        );
      },
    );
  }
}
