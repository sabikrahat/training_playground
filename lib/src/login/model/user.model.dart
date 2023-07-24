import '../../../experience.model.dart';

class User {
  String name;
  final String username;
  final String email;
  String password;
  String? profession;
  List<Experience>? experiences;

  User({
    required this.name,
    required this.username,
    required this.email,
    required this.password,
    this.profession,
    this.experiences,
  });

  //copywith
  User copyWith({
    String? name,
    String? username,
    String? email,
    String? password,
    String? profession,
    List<Experience>? experiences,
  }) {
    return User(
      name: name ?? this.name,
      username: username ?? this.username,
      email: email ?? this.email,
      password: password ?? this.password,
      profession: profession ?? this.profession,
      experiences: experiences ?? this.experiences,
    );
  }

  // from json
  factory User.fromJson(Map<String, dynamic> json) {
    return User(
      name: json['name'],
      username: json['username'],
      email: json['email'],
      password: json['password'],
      profession: json['profession'],
      experiences: json['experiences'] != null
          ? (json['experiences'] as List)
              .map((e) => Experience.fromJson(e))
              .toList()
          : null,
    );
  }

  // to json
  Map<String, dynamic> toJson() {
    return {
      'name': name,
      'username': username,
      'email': email,
      'password': password,
      'profession': profession,
      'experiences': experiences?.map((e) => e.toJson()).toList(),
    };
  }

  // to string
  @override
  String toString() =>
      'User(name: $name, username: $username, email: $email, password: $password, profession: $profession)';
}



/*

final user =  User('rahat', '30', 'CSE');

final userUpdated = user.copyWith(age: 32);

final userUpdated = User(
  name: 'rahat',
  age: 32,
  profession: 'CSE',
);

*/