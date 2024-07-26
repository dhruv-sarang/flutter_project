import 'dart:convert';
import 'package:connectivity_plus/connectivity_plus.dart';
import 'package:flutter_project/http/student_api/model/student.dart';
import 'package:http/http.dart' as http;
import 'package:http/http.dart';

import '../model/RegisterStudent.dart';

class ApiService {
  String url = "http://192.168.1.7/api/student.php?flag=4";

  static ApiService _instance = ApiService._internal();

  // factory constructor
  factory ApiService() {
    return _instance;
  }

  ApiService._internal();

  Future<List<Student>> getStudentList() async {
    List<Student> studentList = [];

    if (await checkConnection()) {
      try {
        http.Response response = await http.get(Uri.parse(url));
        if (response.statusCode == 200) {
          print(response.body);

          // List<dynamic> list = jsonDecode(response.body) as List<dynamic>;
          // studentList = List.generate(
          //     list.length, (index) => Student.fromJson(list[index])).toList();
          var studentMap = jsonDecode(response.body);
          print('studentMap : ${studentMap}');

          List<dynamic> studentData = studentMap['student'];
          print('studentData : ${studentData}');
          studentList = studentData.map((e) => Student.fromJson(e)).toList();
        } else {
          throw Exception('Failed to load Student');
        }
      } catch (e) {
        throw Exception('Failed to load Student \n$e');
      }
    } else {
      throw Exception('No internet connection');
    }
    return studentList;
  }

  Future<void> addStudent({name, email, contact}) async {
    var bodyMap = <String, dynamic>{
      'flag': "1",
      'name': name,
      'email': email,
      'mobile': contact,
    };

    var response = await post(Uri.parse('http://192.168.1.7/api/student.php'),
        body: bodyMap);

    if (response.statusCode == 201 || response.statusCode == 200) {
      // success

      RegisterStudent res = RegisterStudent.fromJson(jsonDecode(response.body));

      print(res.messages);
      if (res.status == "success") {
      }
    } else {
      throw Exception("failed to create an account");
    }
  }

  Future<void> updateStudent({name, email, contact}) async {
    var bodyMap = <String, dynamic>{
      'flag': "2",
      'name': name,
      'email': email,
      'mobile': contact,
    };

    var response = await post(Uri.parse('http://192.168.1.7/api/student.php'),
        body: bodyMap);

    if (response.statusCode == 201 || response.statusCode == 200) {
      // success

      RegisterStudent res = RegisterStudent.fromJson(jsonDecode(response.body));

      print(res.messages);
      if (res.status == "success") {
      }
    } else {
      throw Exception("failed to create an account");
    }
  }



  Future<bool> checkConnection() async {
    var connectivityResult = await (Connectivity().checkConnectivity());
    if (connectivityResult == ConnectivityResult.none) {
      return false;
    } else {
      return true;
    }
  }
}
