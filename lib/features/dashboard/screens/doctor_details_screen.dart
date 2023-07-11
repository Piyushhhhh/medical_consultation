import 'package:flutter/material.dart';
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
    return const Scaffold();
  }
}
