import 'package:flutter/material.dart';
import 'TodoTile.dart';
import 'package:todolist/Model/Tasks.dart';
class TodoView extends StatefulWidget {


  @override
  _TodoViewState createState() => _TodoViewState();
}

class _TodoViewState extends State<TodoView> {
  List<Tasks> tasks = [
    Tasks(name: "hai1",ischecked: false),
    Tasks(name: "hai1",ischecked: false),
    Tasks(name: "hai1",ischecked: false)
  ];
  @override
  Widget build(BuildContext context) {
    return ListView.builder(itemBuilder: (context,index){
      return TodoTile(
        task: tasks[index].name,
        checkboxstatus: tasks[index].ischecked,
        toggler:(newvalue){
          setState(() {
            tasks[index].toggleCheckbox();
          });
        } ,
      );

    }
    ,
    itemCount:tasks.length,);
  }
}