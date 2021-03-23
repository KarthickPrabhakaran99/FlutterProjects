import 'package:flutter/material.dart';

class TodoTile extends StatefulWidget {



  @override
  _TodoTileState createState() => _TodoTileState();
}

class _TodoTileState extends State<TodoTile> {
  bool tick = false;
  @override
  Widget build(BuildContext context) {
    return ListTile(

      title: Text("hello",
        style: TextStyle(
          decoration: tick ?TextDecoration.lineThrough:null ,
        ),
      ),
      trailing: TodoCheckBox(tick: tick,todocallback: (newTick){
        setState(() {
          tick = newTick;
        });
      },),

    );
  }
}

class TodoCheckBox extends StatelessWidget {
  final bool tick ;
  final Function todocallback;
 TodoCheckBox({this.tick,this.todocallback
  });

  @override
  Widget build(BuildContext context) {
    return Checkbox(
      value: tick,
      onChanged: todocallback,
    );
  }
}
