import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:todo_list_app/models/todo_model.dart';

class TodoCubit extends Cubit<List<Todo>> {
  TodoCubit() : super([]);

  void addTodo(String title) {
    if(title.isEmpty){
      addError('Title is empty');
    }
    final todo = Todo(
      name: title,
      createdAt: DateTime.now(),
    );

    emit([...state, todo]);
  }

  @override
  void onChange(Change<List<Todo>> change) {
    print(change);
    super.onChange(change);
  }

@override
void onError(Object error, StackTrace stackTrace) {
  // Handle the error here
  super.onError(error, stackTrace);
  print(error);
}
}