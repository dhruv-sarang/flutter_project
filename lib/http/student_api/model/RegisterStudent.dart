import 'student.dart';

class RegisterStudent{
  String? status;
  String? messages;
  Student? student;

  RegisterStudent({this.status, this.messages, this.student});

  Map<String, dynamic> toJson() {
    return {
      'status': this.status,
      'messages': this.messages,
      'student': this.student,
    };
  }

  RegisterStudent.fromJson(dynamic json) {
    status = json['status'];
    messages = json['message'];
    student = json['user'] != null ? Student.fromJson(json['user']) : null;
  }

}