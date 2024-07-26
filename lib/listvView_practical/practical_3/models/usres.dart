class User{
  String? id, name, email, contact;
  bool isLike = false, isCheck = false;
  User({this.id, this.name, this.email, this.contact, required this.isLike, required this.isCheck});
}