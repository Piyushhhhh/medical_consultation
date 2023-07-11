class DoctorDetail {
  int? doctorId;
  String? name;
  String? imageUrl;
  int? numberOfReviews;
  double? rating;
  String? specialty;
  int? yearsOfExperience;

  DoctorDetail(
      {this.doctorId,
      this.name,
      this.imageUrl,
      this.numberOfReviews,
      this.rating,
      this.specialty,
      this.yearsOfExperience});

  DoctorDetail.fromJson(Map<String, dynamic> json) {
    doctorId = json['doctor_id'];
    name = json['name'];
    imageUrl = json['image_url'];
    numberOfReviews = json['number_of_reviews'];
    rating = json['rating'];
    specialty = json['specialty'];
    yearsOfExperience = json['years_of_experience'];
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
