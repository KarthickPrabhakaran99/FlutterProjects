import 'package:flutter/material.dart';
import 'TodoTile.dart';
class TodoView extends StatelessWidget {


  @override
  Widget build(BuildContext context) {
    return ListView(
      children: [
        TodoTile(),

      ],
    );
  }
}