import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:todolist/Widgets/TodoView.dart';
import 'package:todolist/Screens/New_task_sheet.dart';
class TodoPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton(

        onPressed: (){
          showModalBottomSheet(context: context, builder: (context)=>BottomNewTask());
        },
        child: Icon(
          Icons.add,
          color: Colors.white,
        ),
        backgroundColor: Colors.red,
      ),
      backgroundColor: Colors.red,
      body: Container(

        padding: EdgeInsets.only(top: 40.0 ),
        child: Column(

          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: const EdgeInsets.only(left: 20.0),
              child: Column(
     crossAxisAlignment: CrossAxisAlignment.start,
               children: [
                 CircleAvatar(
                   radius: 30.0,
                   backgroundColor: Colors.white,
                   child: Icon(Icons.list,
                     color: Colors.red,
                     size: 30.0,

                   ),
                 ),
                 SizedBox(
                   height: 20.0,
                 ),
                 Text("Todo List",
                   style: TextStyle(
                     color: Colors.white,
                     fontSize: 50.0,
                     fontWeight: FontWeight.w500,
                   ),
                 ),
                 Text(" Tasks",
                 style: TextStyle(
                     color: Colors.white,

                 )),
               ],
              ),
            ),
            SizedBox(
              height: 30.0,
            ),
            Expanded(child: Container(
              padding: EdgeInsets.symmetric(horizontal: 30.0),
              child: TodoView(),
              decoration: BoxDecoration(
                  color: Colors.white,
                borderRadius: BorderRadius.only(topLeft: Radius.circular(30.0),topRight: Radius.circular(30.0))
              ),
            ))
          ],
        ),
      ),
    );
  }
}


