import 'package:medical_consultation/models/appointment.dart';

final List<UserAppointment> userAppointment = [
  UserAppointment(
      appointmentId: 1,
      doctorName: "Vitia Wrefford",
      appointmentDate: "11/9/2022",
      appointmentTime: "7:01 PM",
      duration: 101,
      reason: "follow-up",
      notes:
          "Maecenas tristique, est et tempus semper, est quam pharetra magna, ac consequat metus sapien ut nunc. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia Curae; Mauris viverra diam vitae quam. Suspendisse potenti.\n\nNullam porttitor lacus at turpis. Donec posuere metus vitae ipsum. Aliquam non mauris.\n\nMorbi non lectus. Aliquam sit amet diam in magna bibendum imperdiet. Nullam orci pede, venenatis non, sodales sed, tincidunt eu, felis.",
      isConfirmed: false,
      roomNumber: 32,
      doctorImage: "https://robohash.org/idetexpedita.png?size=50x50&set=set1"),
  UserAppointment(
      appointmentId: 2,
      doctorName: "Lynnelle Sodory",
      appointmentDate: "8/5/2022",
      appointmentTime: "7:34 PM",
      duration: 65,
      reason: "consultation",
      notes:
          "Quisque id justo sit amet sapien dignissim vestibulum. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia Curae; Nulla dapibus dolor vel est. Donec odio justo, sollicitudin ut, suscipit a, feugiat et, eros.\n\nVestibulum ac est lacinia nisi venenatis tristique. Fusce congue, diam id ornare imperdiet, sapien urna pretium nisl, ut volutpat sapien arcu sed augue. Aliquam erat volutpat.",
      isConfirmed: true,
      roomNumber: 20,
      doctorImage:
          "https://robohash.org/accusamusquisdoloribus.png?size=50x50&set=set1"),
];
