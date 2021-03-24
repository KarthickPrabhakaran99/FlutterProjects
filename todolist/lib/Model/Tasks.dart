class Tasks{
  final String name;
  bool ischecked;
  Tasks({this.name,this.ischecked ,});

  void toggleCheckbox()
  {
    ischecked=!ischecked;
  }
}