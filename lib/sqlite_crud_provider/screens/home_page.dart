import 'package:flutter/material.dart';
import 'package:flutter_project/sqlite_crud_provider/model/task.dart';
import 'package:flutter_project/sqlite_crud_provider/provider/task_provider.dart';
import 'package:provider/provider.dart';

class HomePage extends StatelessWidget {
  Task? selectedTask;

  final _titleController = TextEditingController();
  final _descController = TextEditingController();

  void _updateTask(Task? task) {
    selectedTask = task;
    if (selectedTask != null) {
      _titleController.text = task!.title;
      _descController.text = task.desc;
    }
  }

  @override
  Widget build(BuildContext context) {
    TaskProvider taskProvider =
        Provider.of<TaskProvider>(context, listen: false);

    return Scaffold(
      appBar: AppBar(
        title: Text('Task'),
      ),
      body: Padding(
        padding: EdgeInsets.all(16),
        child: Column(
          children: [
            TextField(
              controller: _titleController,
              decoration: InputDecoration(hintText: 'Enter Title'),
            ),
            SizedBox(
              height: 10,
            ),
            TextField(
              controller: _descController,
              decoration: InputDecoration(hintText: 'Enter Description'),
            ),
            SizedBox(
              height: 10,
            ),
            Row(
              children: [
                Expanded(
                  child: FilledButton(
                    onPressed: () {
                      String title = _titleController.text.trim();
                      String desc = _descController.text.trim();

                      if (title.isNotEmpty &&
                          desc.isNotEmpty &&
                          selectedTask == null) {
                        taskProvider.insert(Task(title: title, desc: desc));
                        _titleController.clear();
                        _descController.clear();
                      } else if (title.isNotEmpty &&
                          desc.isNotEmpty &&
                          selectedTask != null) {
                        taskProvider.update(Task(
                            title: title, desc: desc, id: selectedTask!.id));
                        _titleController.clear();
                        _descController.clear();
                        selectedTask = null;
                      }

                      Provider.of<TaskProvider>(context, listen: false)
                          .changeButtonNameAdd();

                    },
                    child: Text(
                      '${Provider.of<TaskProvider>(context).buttonValue}',
                    ),
                    //   child:
                    //       Text(selectedTask != null ? 'Update Task' : 'Add Task'),
                  ),
                ),
                SizedBox(
                  width: 10,
                ),
                // Expanded(
                //   child: FilledButton(
                //     onPressed: () {
                //       String title = _titleController.text.trim();
                //       String desc = _descController.text.trim();
                //
                //       if (title.isNotEmpty &&
                //           desc.isNotEmpty &&
                //           selectedTask != null) {
                //         taskProvider.update(Task(
                //             title: title, desc: desc, id: selectedTask!.id));
                //         _descController.clear();
                //         _titleController.clear();
                //         selectedTask = null;
                //       }
                //
                //       _titleController.clear();
                //     },
                //     child: Text('Update Task'),
                //   ),
                // ),
                // SizedBox(
                //   width: 10,
                // ),
                // Expanded(
                //   child: FilledButton(
                //     onPressed: () {},
                //     child: Text('Delete'),
                //   ),
                // )
              ],
            ),
            Expanded(
              child: Consumer<TaskProvider>(
                builder: (BuildContext context, TaskProvider provider,
                    Widget? child) {
                  return ListView.builder(
                    itemCount: provider.tasks.length,
                    itemBuilder: (context, index) {
                      return ListTile(
                        onTap: () {
                          Provider.of<TaskProvider>(context, listen: false)
                              .changeButtonNameUpdate();
                          _updateTask(provider.tasks[index]);
                        },
                        title: Text('${provider.tasks[index].title}'),
                        subtitle: Text('${provider.tasks[index].desc}'),
                        trailing: IconButton(
                            onPressed: () {
                              final taskId = provider.tasks[index].id;
                              if (taskId != null) {
                                taskProvider.delete(taskId);
                                print('$taskId');
                              }
                            },
                            icon: Icon(Icons.delete)),
                      );
                    },
                  );
                },
              ),
            )
          ],
        ),
      ),
    );
  }
}
