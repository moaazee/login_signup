class UserModel {
  String? email;
  String? firstName;
  String? lastName;
  String? age;
  String? uid;

  UserModel({this.email, this.firstName, this.lastName, this.age, this.uid});

  // Modtager data fra server
  factory UserModel.fromMap(map) {
    return UserModel(
      email: map['email'],
      firstName: map['firstName'],
      lastName: map['lastName'],
      age: map['age'],
      uid: map['uid'],
    );
  }

  // Sender data til vores server
  Map<String, dynamic> toMap() {
    return {
      'email': email,
      'firstName': firstName,
      'lastName': lastName,
      'age': age,
      'uid': uid,
    };
  }
}
