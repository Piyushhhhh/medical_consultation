import 'package:medical_consultation/constants/strings.dart';
import 'package:medical_consultation/data/mock_data/appointments_mock.dart';
import 'package:medical_consultation/data/mock_data/recomended_doctor_mock.dart';
import 'package:medical_consultation/features/shared/notifiers/base_notifier.dart';
import 'package:medical_consultation/models/appointment.dart';
import 'package:medical_consultation/models/doctor_details.dart';

class DashboardProvider extends BaseNotifier {
  List<DoctorDetail> topRecomendedDoctor = [];
  List<UserAppointment> userCurrentAppointment = [];

  Future<void> init() async {
    try {
      fetchRecomendedDoctor();
      userAppointments();
    } on Error catch (error) {
      sendError(message: error.toString());
    } catch (_) {
      sendError(message: Strings.defaultErrorMessage);
      rethrow;
    }
  }

  Future fetchRecomendedDoctor() async {
    try {
      sendLoading();
      topRecomendedDoctor = recomendedDoctor;
      sendSuccess();
    } on Error catch (error) {
      sendError(message: error.toString());
    } catch (_) {
      sendError(message: Strings.defaultErrorMessage);
      rethrow;
    }
  }

  Future userAppointments() async {
    try {
      sendLoading();
      userCurrentAppointment = userAppointment;
      sendSuccess();
    } on Error catch (error) {
      sendError(message: error.toString());
    } catch (_) {
      sendError(message: Strings.defaultErrorMessage);
      rethrow;
    }
  }
}
