import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:todo/Models/task_data.dart';
import 'package:todo/Widgets/tasks_list.dart';
import 'package:todo/Widgets/tasks_tile.dart';
import 'task_screen.dart';

class AddTaskScreen extends StatelessWidget {

  final Messagecontroller=TextEditingController();


  @override
  String newTaskTitle;
  Widget build(BuildContext context) {
    return Container(
        color: Color(0xff757575),//this container was a nifty trick we used to decorate our bottomshees radius to make it round
        child: Container(
          padding: EdgeInsets.all(25.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: <Widget>[
              Text(
                'ADD TASK',
                textAlign: TextAlign.center,
                style: TextStyle(

                    color: Colors.lightBlueAccent,
                    fontWeight: FontWeight.w700,
                    fontSize: 20.0),
              ),
              SizedBox(height: 10.0,),
              TextField(style: TextStyle(color: Colors.black),
              autofocus: true,
              textAlign: TextAlign.center,//this makes the cursor to automatically be focused on the center of our textfield
            // controller: Messagecontroller,
              onChanged: (value){
                print(value);
               newTaskTitle=value;
              },),
              SizedBox(height: 70.0,),
            TextButton(
              style:ButtonStyle(backgroundColor:MaterialStateProperty.all<Color>(Colors.lightBlueAccent),elevation:MaterialStateProperty.all(10.0),),
              child: Text('ADD Task',style: TextStyle(color: Colors.white),),
            onPressed: (){
             // print(newTaskTitle);
              Provider.of<TaskData>(context,listen: false).addTask(newTaskTitle);

              Navigator.pop(context);//passing value into our callback ,value we passing back to our taskScreen Screen
            },)],
          ),
          decoration: BoxDecoration(
              borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(20), topRight: Radius.circular(20)),
              color: Colors.white),
        ));
  }
}
