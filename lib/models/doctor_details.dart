class DoctorDetail {
  late int doctorId;
  String? name;
  String? imageUrl;
  int? numberOfReviews;
  double? rating;
  String? specialty;
  int? yearsOfExperience;
  int? noOfPatient;
  String? doctorDescription;
  List<DoctorAvailableDate>? doctorAvailablity;

  DoctorDetail(
      {required this.doctorId,
      this.name,
      this.imageUrl,
      this.numberOfReviews,
      this.rating,
      this.specialty,
      this.yearsOfExperience,
      this.noOfPatient,
      this.doctorDescription,
      this.doctorAvailablity});

  DoctorDetail.fromJson(Map<String, dynamic> json) {
    doctorId = json['doctor_id'];
    name = json['name'];
    imageUrl = json['image_url'];
    numberOfReviews = json['number_of_reviews'];
    rating = json['rating'];
    specialty = json['specialty'];
    yearsOfExperience = json['years_of_experience'];
    noOfPatient = json['no_of_patient'];
    doctorDescription = json['description'];
    doctorAvailablity = List<DoctorAvailableDate>.from(
      json['doctor_availablity'].map(
        (model) => DoctorAvailableDate.fromJson(model),
      ),
    );
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['doctor_id'] = doctorId;
    data['name'] = name;
    data['image_url'] = imageUrl;
    data['number_of_reviews'] = numberOfReviews;
    data['rating'] = rating;
    data['specialty'] = specialty;
    data['years_of_experience'] = yearsOfExperience;
    return data;
  }
}

class DoctorAvailableDate {
  //it should be datetime but hardcoding it as a string for now
  String? day;
  String? date;

  // every date should be map to a list of its on times of the day but for now i am making it constant for all
  List<DoctorAvailableTimeOfTheDay>? doctorAvailableTimeOfTheDay;

  DoctorAvailableDate({this.date, this.day, this.doctorAvailableTimeOfTheDay});

  DoctorAvailableDate.fromJson(Map<String, dynamic> json) {
    day = json["day"];
    date = json["date"];
    doctorAvailableTimeOfTheDay = List<DoctorAvailableTimeOfTheDay>.from(
      json['doctor_availablity_time'].map(
        (model) => DoctorAvailableDate.fromJson(model),
      ),
    );
  }
}

class DoctorAvailableTimeOfTheDay {
  String? time;
  DoctorAvailableTimeOfTheDay({this.time});
  DoctorAvailableTimeOfTheDay.fromJson(Map<String, dynamic> json) {
    time = json["time"];
  }
}
