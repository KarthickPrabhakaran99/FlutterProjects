import 'package:flutter/material.dart';
import 'package:todolist/Model/Tasks.dart';
class TodoTile extends StatelessWidget {
final String task;
final bool checkboxstatus;
final Function toggler;
TodoTile({this.checkboxstatus,this.task,this.toggler});

  @override
  Widget build(BuildContext context) {
    return ListTile(

      title: Text(task,
        style: TextStyle(
          decoration: checkboxstatus ?TextDecoration.lineThrough:null ,
        ),
      ),
      trailing:Checkbox(
        value: checkboxstatus,
        onChanged: toggler,
      ) ,

    );
  }
}

