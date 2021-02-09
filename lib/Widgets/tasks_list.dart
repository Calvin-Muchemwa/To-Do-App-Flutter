import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:todo/Models/task_data.dart';
import 'package:todo/Widgets/tasks_tile.dart';
import 'package:todo/Models/task.dart';

class TasksList extends StatelessWidget {




  @override
  Widget build(BuildContext context) {
    return Consumer<TaskData>(//Consumer widget helps us avoid the repetetiveness of using  Provider.of<TaskData>(context) instead we'll use 'taskdata.'
      builder: (context,taskdata,child){
        return ListView.builder(//Listview builder is very useful for dynamic display of items in a list dont have to put them in 1 by 1 or as they typed in manually
          itemBuilder: (context, index) {//itembuilder property is very good,only going to rebuild as many items as the user sees
            return TaskTile(
                TaskTitle: taskdata.tasks[index].name,//this is an example of copnsumer widget use
                isChecked: Provider.of<TaskData>(context).tasks[index].isDone,
                checkBoxCallBack:(checkBoxState){//callback from the changed listtile always think of OnChanged(value) callback will happen automatically
                 taskdata.updateTask(taskdata.tasks[index]);
                }
                ,longPressCallBack: (){
                  taskdata.deleteTask(taskdata.tasks[index]);
            },
            );
          },
          itemCount: Provider.of<TaskData>(context).tasks.length,//we want the count to be as long as our list
        );
      },

    );
  }
}
