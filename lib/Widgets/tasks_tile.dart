import 'package:flutter/material.dart';

class TaskTile extends StatelessWidget {

  final bool isChecked;
  final String TaskTitle;
  final Function checkBoxCallBack;//this is the Callback function we will be passing to TaskList Callback will contain a value
  final Function longPressCallBack;
  TaskTile({this.isChecked,this.TaskTitle,this.checkBoxCallBack,this.longPressCallBack});

  @override
  Widget build(BuildContext context) {
    return ListTile(
      onLongPress:longPressCallBack,
      title: Text(TaskTitle,style: TextStyle(decoration: isChecked?TextDecoration.lineThrough:null,)),
      trailing:  Checkbox(
        activeColor: Colors.lightBlueAccent,
        value: isChecked,
        onChanged: checkBoxCallBack//basically giving onChanged value to result of checkBoxCallBack ,which we will use in other Screen

      ),
    );
  }
}


