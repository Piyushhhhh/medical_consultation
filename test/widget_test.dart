import 'package:flutter_test/flutter_test.dart';
import 'package:medical_consultation/features/conversations/provider/conversation_provider.dart';
import 'package:medical_consultation/features/dashboard/provider/dashboard_provider.dart';

void main() {
  //dashboard tests
  group('DashboardProvider Tests', () {
    late DashboardProvider dashboardProvider;

    setUp(() {
      dashboardProvider = DashboardProvider();
    });

    test('Initialization Test', () async {
      await dashboardProvider.init();

      // Assert that topRecomendedDoctor and userCurrentAppointment lists are not empty after initialization.
      expect(dashboardProvider.topRecomendedDoctor.isNotEmpty, true);
      expect(dashboardProvider.userCurrentAppointment.isNotEmpty, true);
    });

    test('Fetch Recommended Doctor Test', () async {
      await dashboardProvider.fetchRecomendedDoctor();

      // Assert that topRecomendedDoctor list is not empty after fetching.
      expect(dashboardProvider.topRecomendedDoctor.isNotEmpty, true);
    });

    test('Fetch User Appointments Test', () async {
      await dashboardProvider.userAppointments();

      // Assert that userCurrentAppointment list is not empty after fetching.
      expect(dashboardProvider.userCurrentAppointment.isNotEmpty, true);
    });

    test('Switch Doctor Description Text Extended Test', () {
      // Assert that the initial value of isDoctorDescriptionTextExtended is true.
      expect(dashboardProvider.isDoctorDescriptionTextExtended, true);

      // Call the switchDoctorDescriptionTextExtended function and check if the value has changed.
      dashboardProvider.switchDoctorDescriptionTextExtended();
      expect(dashboardProvider.isDoctorDescriptionTextExtended, false);

      // Call the switchDoctorDescriptionTextExtended function again and check if the value has changed back to true.
      dashboardProvider.switchDoctorDescriptionTextExtended();
      expect(dashboardProvider.isDoctorDescriptionTextExtended, true);
    });
  });

//conversation  test cases

  group('ConversationProvider Tests', () {
    late ConversationProvider conversationProvider;

    setUp(() {
      conversationProvider = ConversationProvider();
    });

    test('Fetch User Current Conversations Test', () async {
      await conversationProvider.featchUserCurrentConversation();

      // Assert that userCurrentConversations list is not empty after fetching.
      expect(conversationProvider.userCurrentConversations.isNotEmpty, true);
    });
  });
}
