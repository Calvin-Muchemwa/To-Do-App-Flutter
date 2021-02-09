import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:todo/Models/task_data.dart';
import 'package:todo/Widgets/tasks_list.dart';
import 'package:todo/Widgets/tasks_tile.dart';
import 'package:todo/Screens/add_task_screen.dart';
import 'package:todo/Models/task.dart';
import 'package:provider/provider.dart';


class TaskScreen extends StatelessWidget{
  Widget buildBottomSheet(BuildContext context)=> AddTaskScreen();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.lightBlueAccent,
      floatingActionButton: FloatingActionButton(backgroundColor: Colors.lightBlueAccent,
        child: Icon(Icons.add),
        onPressed: (){
  showModalBottomSheet(context: context,builder: buildBottomSheet);//look at how we used our BuildBottomSheet
        },
      ), //notice how our floating action button is actually in our scaffold!! it is very important to know this.
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            padding: EdgeInsets.only(top: 60.0, left: 25.0, bottom: 30.0),
            child: Column(
              children: <Widget>[
                CircleAvatar(
                  child: Icon(
                    Icons.list,
                    size: 30.0,
                    color: Colors.lightBlueAccent,
                  ),
                  backgroundColor: Colors.white,
                  radius: 30.0,
                ),
                SizedBox(
                  height: 10.0,
                ), //Circle Avatar to create that circular background effect
                Text(
                  'TO-DO',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 25,
                    fontWeight: FontWeight.w700,
                  ),
                ),
                SizedBox(height: 2.0),
                Text(
                  '${Provider.of<TaskData>(context).tasks.length} tasks',//We made our TaskData a provider noe this is how we tapping into it
                  style: TextStyle(
                    color: Colors.white,
                  ),
                ),
                SizedBox(
                  height: 10.0,
                ),
              ],
            ),
          ),
          Expanded(
            child: Container(
              padding: EdgeInsets.symmetric(horizontal:
              20.0),
              child: TasksList(),
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(20),
                    topRight: Radius.circular(20),
                  ),
                  color: Colors.white),
            ),
          )
        ],
      ),

    );
  }
}

class NumberOfTasks extends ChangeNotifier{
int Number;

void UpdatenumberTasks(){

}
}


