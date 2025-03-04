class Albums {

  int? userId;
  int? id;
  String? title;

  Albums({
    this.userId,
    this.id,
    this.title,
  });

  Albums.fromJson(dynamic json) {
    userId = json['userId'];
    id = json['id'];
    title = json['title'];
  }

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['userId'] = userId;
    map['id'] = id;
    map['title'] = title;
    return map;
  }
}
