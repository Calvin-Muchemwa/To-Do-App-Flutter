import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:todo/Models/task_data.dart';
import 'package:todo/Screens/task_screen.dart';
void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {

  @override
  Widget build(context) {

    return ChangeNotifierProvider(//we wrap the highest widget where we want other widgets to listen to change of the data
      create: (context)=>TaskData(),
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        home: TaskScreen(),
      ),
    );
  }

}


