import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class BottomNewTask extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Color(0xff757575) ,
      child: Container(
           child: Padding(
             padding: EdgeInsets.only(top: 50.0 ,left: 20.0,right: 20.0),
             child: Column(
crossAxisAlignment:CrossAxisAlignment.stretch,
               children: [
                 Text("Add Task",
                 textAlign: TextAlign.center,
                 style: TextStyle(

                color: Colors.red,
                   fontSize: 50.0,
                   fontWeight: FontWeight.w600
                 ),),

                 TextField(
autofocus: true,
                 ),
                FlatButton(onPressed: (){},
                    color:Colors.red,
                    child: Text("Add",style: TextStyle(
                  color: Colors.white
                ),))
               ],
             ),
           ),
        decoration: BoxDecoration(
            color: Colors.white,
          borderRadius: BorderRadius.only(topLeft: Radius.circular(20.0),
          topRight: Radius.circular(20.0))

        ),
      ),
    );
  }
}
