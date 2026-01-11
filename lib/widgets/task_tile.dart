import 'package:flutter/material.dart';

class TaskTile extends StatelessWidget {

  final bool isChecked;
  final String taskTitle;
  final Function(bool?) checboxCallBack;
  final Function(bool?) deleteTask;


  TaskTile({required this.taskTitle, this.isChecked = false, required this.checboxCallBack, required this.deleteTask});



  @override
  Widget build(BuildContext context) {
    return ListTile(
      title: Text(taskTitle, style: TextStyle(
          decoration: isChecked ? TextDecoration.lineThrough : null

      ),
      ),
      trailing: Checkbox(
          activeColor: Colors.lightBlueAccent,
          value: isChecked,
          onChanged: checboxCallBack,
      ),
      onLongPress: (){
        deleteTask(true);
      },
    );
  }
}

/*(bool? checkboxState){
            setState(() {
              isChecked= checkboxState!;
            });
      }),*/
