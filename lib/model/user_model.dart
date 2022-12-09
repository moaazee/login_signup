class UserModel {
  String? email;
  String? firstName;
  String? lastName;
  String? uid;

  UserModel({this.email, this.firstName, this.lastName, this.uid});

  // Modtager data fra server
  factory UserModel.fromMap(map) {
    return UserModel(
      email: map['email'],
      firstName: map['firstName'],
      lastName: map['lastName'],
      uid: map['uid'],
    );
  }

  // Sender data til vores server
  Map<String, dynamic> toMap() {
    return {
      'email': email,
      'firstName': firstName,
      'lastName': lastName,
      'uid': uid,
    };
  }
}
