class UserAppointment {
  int? appointmentId;
  String? doctorName;
  String? appointmentDate;
  String? appointmentTime;
  int? duration;
  String? reason;
  String? notes;
  bool? isConfirmed;
  int? roomNumber;
  String? doctorImage;

  UserAppointment(
      {this.appointmentId,
      this.doctorName,
      this.appointmentDate,
      this.appointmentTime,
      this.duration,
      this.reason,
      this.notes,
      this.isConfirmed,
      this.roomNumber,
      this.doctorImage});

  UserAppointment.fromJson(Map<String, dynamic> json) {
    appointmentId = json['appointment_id'];
    doctorName = json['doctor_name'];
    appointmentDate = json['appointment_date'];
    appointmentTime = json['appointment_time'];
    duration = json['duration'];
    reason = json['reason'];
    notes = json['notes'];
    isConfirmed = json['is_confirmed'];
    roomNumber = json['room_number'];
    doctorImage = json['doctor_image'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['appointment_id'] = appointmentId;
    data['doctor_name'] = doctorName;
    data['appointment_date'] = appointmentDate;
    data['appointment_time'] = appointmentTime;
    data['duration'] = duration;
    data['reason'] = reason;
    data['notes'] = notes;
    data['is_confirmed'] = isConfirmed;
    data['room_number'] = roomNumber;
    data['doctor_image'] = doctorImage;
    return data;
  }
}
