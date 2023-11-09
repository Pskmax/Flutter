import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:to_do_list/constants/color.dart';
import 'package:to_do_list/modules/todo/todo_ctl.dart';
import 'package:to_do_list/modules/todo/widget/todo_widget.dart';

class ToDoScr extends StatelessWidget {
  const ToDoScr({super.key});

  @override
  Widget build(BuildContext context) {
    TextEditingController title = TextEditingController();
    GlobalKey<FormState> kf = GlobalKey<FormState>();
    Get.put(ToDoCtl());
    var c = Get.find<ToDoCtl>();
    return Scaffold(
      backgroundColor: bg,
      appBar: AppBar(
        backgroundColor: fg,
        // elevation: 0,
        title: Row(
          children: <Widget>[
            Icon(
              Icons.menu,
              color: fontColor,
            ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          showDialog(
            context: context,
            builder: (context) => AlertDialog(
              title: const Text('Add To Do'),
              content: Form(
                key: kf,
                child: TextFormField(
                  controller: title,
                  decoration: const InputDecoration(
                    hintText: 'Enter title: ...',
                  ),
                ),
              ),
              actions: [
                TextButton(
                  onPressed: () {
                    // kf.currentState.save();
                    c.addTodo(title.text);
                    title.text = '';
                    Navigator.pop(context);
                  },
                  child: const Text('Add'),
                ),
                TextButton(
                  onPressed: () {
                    title.text = '';
                    Navigator.pop(context);
                  },
                  child: const Text('Cancel'),
                ),
              ],
            ),
          );
        },
        child: const Icon(
          Icons.add,
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(20),
        child: ListView(
          scrollDirection: Axis.vertical,
          children: [
            Container(
              padding: const EdgeInsets.only(
                top: 20,
                bottom: 20,
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "TO DOs",
                    style: TextStyle(
                      color: fontColor,
                      fontWeight: FontWeight.bold,
                      fontSize: 30,
                    ),
                  ),
                  TextButton(
                    onPressed: () {
                      showDialog(
                        context: context,
                        builder: (context) => AlertDialog(
                          title: const Text('Delete All'),
                          content: Text(
                            'Are you sure?',
                            style: TextStyle(
                              color: alertMessage,
                            ),
                          ),
                          actions: [
                            TextButton(
                              onPressed: () {
                                c.clear();
                                Navigator.pop(context);
                              },
                              child: const Text('Delete'),
                            ),
                            TextButton(
                              onPressed: () {
                                Navigator.pop(context);
                              },
                              child: const Text('Cancel'),
                            ),
                          ],
                        ),
                      );
                    },
                    child: const Text(
                      'Clear',
                    ),
                  )
                ],
              ),
            ),
            Obx(() {
              return Column(
                children: <Widget>[
                  for (var todo in c.todos.value)
                    ToDo(
                      todo: todo,
                      onDelete: () {
                        showDialog(
                          context: context,
                          builder: (context) => AlertDialog(
                            title: Text('Delete <${todo.title}>'),
                            content: Text(
                              'Are you sure?',
                              style: TextStyle(
                                color: alertMessage,
                              ),
                            ),
                            actions: [
                              TextButton(
                                onPressed: () {
                                  c.deleteTodo(todo.id);
                                  Navigator.pop(context);
                                },
                                child: const Text('Delete'),
                              ),
                              TextButton(
                                onPressed: () {
                                  Navigator.pop(context);
                                },
                                child: const Text('Cancel'),
                              ),
                            ],
                          ),
                        );
                      },
                      onEdit: () {
                        TextEditingController edit = TextEditingController();
                        GlobalKey<FormState> kf = GlobalKey<FormState>();
                        edit.text = todo.title;
                        showDialog(
                          context: context,
                          builder: (context) => AlertDialog(
                            title: const Text('Edit To Do'),
                            content: Form(
                              key: kf,
                              child: TextFormField(
                                controller: edit,
                                decoration: const InputDecoration(
                                  hintText: 'Enter title:...',
                                ),
                              ),
                            ),
                            actions: [
                              TextButton(
                                onPressed: () {
                                  // kf.currentState.save();
                                  c.editTodo(todo.id, edit.text);
                                  edit.text = '';
                                  Navigator.pop(context);
                                },
                                child: const Text('Edit'),
                              ),
                              TextButton(
                                onPressed: () {
                                  edit.text = '';
                                  Navigator.pop(context);
                                },
                                child: const Text('Cancel'),
                              ),
                            ],
                          ),
                        );
                      },
                      onCheck: () {
                        c.toggleTodo(todo.id);
                      },
                    ),
                ],
              );
            })
          ],
        ),
      ),
    );
  }
}
