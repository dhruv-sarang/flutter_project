class Task {
  int? id;
  String title;
  String desc;

  Task({this.id, required this.title, required this.desc});

  Map<String, dynamic> toMap() {
    return {
      'id': this.id,
      'title': this.title,
      'description': this.desc,
    };
  }

  factory Task.fromMap(Map<String, dynamic> map) {
    return Task(
      id: map['id'] as int,
      title: map['title'] as String,
      desc: map['description'] as String,
    );
  }
}
