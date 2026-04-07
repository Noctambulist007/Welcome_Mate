class User {
  final String id;
  final String email;
  final String fullName;
  final String countryCode;
  final String? university;
  final String preferredLang;
  final String role;
  final String? arrivalDate;
  final String bio;
  final String phoneNumber;
  final String? avatar;

  User({
    required this.id,
    required this.email,
    required this.fullName,
    required this.countryCode,
    this.university,
    required this.preferredLang,
    required this.role,
    this.arrivalDate,
    required this.bio,
    required this.phoneNumber,
    this.avatar,
  });

}
