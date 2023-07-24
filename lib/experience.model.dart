class Experience {
  String title;
  String company;
  String location;
  String date;
  String description;

  Experience({
    required this.title,
    required this.company,
    required this.location,
    required this.date,
    required this.description,
  });

  factory Experience.fromJson(Map<String, dynamic> json) {
    return Experience(
      title: json['title'],
      company: json['company'],
      location: json['location'],
      date: json['date'],
      description: json['description'],
    );
  }

  Map<String, dynamic> toJson() {
    return {
      'title': title,
      'company': company,
      'location': location,
      'date': date,
      'description': description,
    };
  }

  @override
  String toString() =>
      'Experience(title: $title, company: $company, location: $location, date: $date, description: $description)';
}
