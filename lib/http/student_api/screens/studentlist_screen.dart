import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:flutter_project/http/student_api/model/student.dart';
import 'package:flutter_project/http/student_api/service/api_service.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:http/http.dart';

import '../model/RegisterStudent.dart';

class StudentListScreen extends StatefulWidget {
  const StudentListScreen({super.key});

  @override
  State<StudentListScreen> createState() => _StudentListScreenState();
}

class _StudentListScreenState extends State<StudentListScreen> {
  final _nameController = TextEditingController();
  final _emailController = TextEditingController();
  final _contactController = TextEditingController();

  ApiService _service = ApiService();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Student List'),
      ),
      body: FutureBuilder(
        future: _service.getStudentList(),
        builder: (context, snapshot) {
          if (snapshot.connectionState == ConnectionState.waiting) {
            return Center(
              child: CircularProgressIndicator(),
            );
          } else if (snapshot.hasError) {
            return Center(
              child: Text('${snapshot.error.toString()}'),
            );
          } else {
            List<Student> studentList = snapshot.data ?? [];

            return ListView.builder(
              itemCount: studentList.length,
              itemBuilder: (context, index) {
                Student student = studentList[index];
                return Padding(
                  padding: const EdgeInsets.all(2.0),
                  child: Card(
                    child: ListTile(
                      onTap: () {
                        openBottomSheet(student: student);
                      },
                      title: Text('${student.name}'),
                      subtitle: Text(
                          'Email : ${student.email}\nMobile : ${student.mobile}'),
                      trailing: IconButton(
                          onPressed: () {
                            print(student.id);
                          },
                          icon: Icon(
                            Icons.delete,
                            color: Colors.redAccent,
                          )),
                    ),
                  ),
                );
              },
            );
          }
        },
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          openBottomSheet();
        },
        child: Icon(Icons.add),
      ),
    );
  }

  openBottomSheet({Student? student}) {
    final _nameController =
        TextEditingController(text: student != null ? student.name : '');
    final _emailController =
        TextEditingController(text: student != null ? student.email : '');
    final _contactController =
        TextEditingController(text: student != null ? student.mobile : '');

    showModalBottomSheet(
      context: context,
      builder: (BuildContext context) {
        return SingleChildScrollView(
          child: Container(
            padding: EdgeInsets.only(
                left: 16.0,
                right: 16.0,
                bottom: MediaQuery.of(context).viewInsets.bottom == 0
                    ? 20
                    : MediaQuery.of(context).viewInsets.bottom + 20),
            child: Column(
              mainAxisSize: MainAxisSize.min,
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: <Widget>[
                TextField(
                  controller: _nameController,
                  decoration: InputDecoration(labelText: 'Name'),
                ),
                TextField(
                  controller: _emailController,
                  decoration: InputDecoration(labelText: 'Email'),
                ),
                TextField(
                  controller: _contactController,
                  decoration: InputDecoration(labelText: 'Contact'),
                ),
                SizedBox(
                  height: 16,
                ),
                Padding(
                  padding: EdgeInsets.only(left: 30.0, right: 30.0),
                  child: FilledButton(
                    onPressed: () async {
                      String name = _nameController.text.trim();
                      String email = _emailController.text.trim();
                      String contact = _contactController.text.trim();

                      if (name != '' &&
                          email != '' &&
                          contact != '') {
                        if (student != null) {
                          // update
                          print('Update method');
                          Navigator.pop(context);
                          // await _service.updateStudent(
                          //     name: name, email: email, contact: contact);
                        } else {
                          // add
                          await _service.addStudent(
                              name: name, email: email, contact: contact);
                          Navigator.pop(context);
                        }
                      }else {
                        Fluttertoast.showToast(
                            msg: "Field can\'t be Empty",
                            toastLength: Toast.LENGTH_SHORT,
                            gravity: ToastGravity.BOTTOM,
                            timeInSecForIosWeb: 1,
                            backgroundColor: Colors.black,
                            textColor: Colors.white,
                            fontSize: 16.0
                        );
                      }
                      setState(() {});
                    },
                    child: Text(
                        student != null ? 'Update Student' : 'Add Student'),
                  ),
                ),
              ],
            ),
          ),
        );
      },
    );
  }
}
