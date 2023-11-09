import 'package:flutter/material.dart';
import 'package:to_do_list/constants/color.dart';
import 'package:to_do_list/modules/todo/data.dart';

class ToDo extends StatelessWidget {
  const ToDo({
    super.key,
    required this.todo,
    required this.onDelete,
    required this.onEdit,
    required this.onCheck,
  });

  final Data todo;
  final Null Function() onDelete;
  final Null Function() onEdit;
  final Null Function() onCheck;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.only(
        bottom: 20,
      ),
      child: ListTile(
        onTap: () {
          onEdit();
        },
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(20),
        ),
        tileColor: Colors.white,
        leading: IconButton(
          icon: Icon(
            todo.isChecked ? Icons.check_box : Icons.check_box_outline_blank,
            color: fontColor,
          ),
          onPressed: () {
            onCheck();
          },
        ),
        title: Text(
          todo.title,
          style: TextStyle(
            fontSize: 16,
            color: fontColor,
            decoration: todo.isChecked
                ? TextDecoration.lineThrough
                : TextDecoration.none,
          ),
        ),
        trailing: SizedBox(
          height: 35,
          width: 35,
          child: IconButton(
            color: Colors.red,
            iconSize: 25,
            padding: EdgeInsets.zero,
            icon: const Icon(
              Icons.delete,
            ),
            onPressed: () {
              onDelete();
            },
          ),
        ),
      ),
    );
  }
}
