import 'package:get/get.dart';
import 'package:to_do_list/modules/todo/data.dart';

class ToDoCtl extends GetxController {
  RxList<Data> todos = [
    Data(
      id: -2,
      title: 'To do 1',
      isChecked: false,
    ),
    Data(
      id: -1,
      title: 'To do 2',
      isChecked: true,
    ),
  ].obs;

  var currentId = 0;

  // add to do
  void addTodo(String title) {
    if (title != '') {
      todos.add(Data(
        id: currentId,
        title: title,
        isChecked: false,
      ));
      currentId++;
    }
  }

  // edit to do
  void editTodo(int id, String title) {
    var todo = todos.firstWhere((element) => element.id == id);
    todo.title = title;
    todos.refresh();
  }

  // delete to do by index
  void deleteTodo(int id) {
    todos.removeWhere((element) => element.id == id);
    todos.refresh();
  }

  // toggle to do checkbox
  void toggleTodo(int id) {
    var todo = todos.firstWhere((element) => element.id == id);
    todo.isChecked = !todo.isChecked;
    todos.refresh();
  }

  // clear to do
  void clear() {
    todos.clear();
  }
}
