import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import './task_tile.dart';
import '../models/task_data.dart';

class TasksList extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Consumer<TaskData>(
      builder: (ctx, taskData, _) {
        return taskData.taskCount == 0
            ? Center(
                child: Text(
                  'No task is added',
                  style: TextStyle(
                    fontSize: 20,
                    color: Colors.black38,
                  ),
                ),
              )
            : ListView.builder(
                itemCount: taskData.taskCount,
                itemBuilder: (ctx, index) {
                  final task = taskData.tasks[index];
                  return TaskTile(
                    taskTitle: task.name,
                    isChecked: task.isDone,
                    checkboxCallback: (checkboxState) {
                      taskData.updateTask(task);
                    },
                    longPressCallback: () {
                      taskData.deleteTask(task);
                    },
                  );
                },
              );
      },
    );
  }
}
