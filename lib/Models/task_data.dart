import 'package:flutter/cupertino.dart';
import 'package:todo/Models/task.dart';

class TaskData extends ChangeNotifier{

  List<Task> tasks = [
    Task(name: 'Buy Milk'),
    Task(name: 'Buy eggs'),
    Task(name: 'Buy bread'),
  ];

  int get taskCount{
    return tasks.length;
  }

  void addTask(String taskname){
    tasks.add(Task(name: taskname));
    notifyListeners();
  }

  void updateTask(Task task){
    task.toggleDone();
    notifyListeners();
  }

  void deleteTask(Task task){
    tasks.remove(task);
  }


}