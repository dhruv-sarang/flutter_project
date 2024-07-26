import 'package:flutter/foundation.dart';
import 'package:flutter_project/sqlite_crud_provider/database/db_helper.dart';
import 'package:flutter_project/sqlite_crud_provider/model/task.dart';

class TaskProvider with ChangeNotifier {
  DbHelper _helper = DbHelper();

  List<Task> _tasks = [];

  List<Task> get tasks => _tasks;

  String buttonValue = 'Add Task';

  changeButtonNameAdd() {
    buttonValue = 'Add Task';
    notifyListeners();
  }

  changeButtonNameUpdate() {
    buttonValue = 'Update Task';
    notifyListeners();
  }

  loadTask() async {
    _tasks = await _helper.getAllRecords();
    notifyListeners();
  }

  insert(Task task) async {
    if (await _helper.insertTask(task) != -1) {
      loadTask();
    }
  }

  update(Task task) async {

    if (await _helper.updateTask(task) > 0) {
      loadTask();
    }
  }

  delete(int id) async {
    if (await _helper.deleteRecord(id) > 0) {
      loadTask();
    }
  }
}
