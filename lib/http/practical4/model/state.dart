class States {
  String? stateName;

  States({
    this.stateName,
  });

  States.fromJson(dynamic json) {
    stateName = json['state_name'];
  }

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['state_name'] = stateName;
    return map;
  }
}
