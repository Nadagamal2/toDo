import 'package:fluentui_icons/fluentui_icons.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:gap/gap.dart';
import 'package:provider/provider.dart';

import '../core/component/component.dart';
import '../model/tasks.dart';
import 'package:to_list/core/app_style.dart';

import 'bottom.dart';

class ToDoItem extends StatelessWidget {
  final ToDo todo;
  final onToDoChanged;
  final onDeleteItem;
  final inEdited;

  ToDoItem({
    Key? key,
    required this.todo,
    required this.onToDoChanged,
    required this.onDeleteItem,
    required this.inEdited,
  }) : super(key: key);
  late final _todoController = TextEditingController(text: todo.todoText);
  final todosList = ToDo.todoList();

  // void editToDoItem(String id,String newTask) {
  //   if(todo.isDone ){
  //     final indexOfOld = todosList.map((e) => e.id).toList().indexOf(id);
  //     if (indexOfOld == -1) return;
  //     todosList.removeAt(indexOfOld);
  //     todosList.insert(indexOfOld, ToDo(
  //
  //
  //
  //       id: '$indexOfOld', todoText: newTask,
  //     ));
  //     //   notifyListeners();
  //   }
  // }

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(bottom: 20),
      child: ListTile(
        onTap: () {
          print('${todo.id}');
          onToDoChanged(todo);
        },
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(20),
        ),
        contentPadding: EdgeInsets.symmetric(horizontal: 20, vertical: 5),
        tileColor: Colors.white,
        leading: Icon(
          todo.isDone ? Icons.check_box : Icons.check_box_outline_blank,
          color: Styles.defualtColor5,
        ),
        title: Text(
          todo.todoText!,
          style: TextStyle(
            fontSize: 16,
            color: tdBlack,
            decoration: todo.isDone ? TextDecoration.lineThrough : null,
          ),
        ),
        trailing: Container(
          padding: EdgeInsets.all(0),
          margin: EdgeInsets.symmetric(vertical: 12),
          height: 35,
          width: 100,
          decoration: BoxDecoration(
            color: Colors.transparent,
            borderRadius: BorderRadius.circular(5),
          ),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              IconButton(
                icon: Icon(
                  FluentSystemIcons.ic_fluent_delete_filled,
                  color: Styles.defualtColor6,
                ),
                onPressed: () {
                  // print('Clicked on delete icon');
                  onDeleteItem(todo.id);
                },
              ),
              IconButton(
                color: Colors.transparent,
                iconSize: 18,
                icon: Icon(
                  FluentSystemIcons.ic_fluent_edit_regular,
                  color: Styles.defualtColor5,
                ),
                onPressed: () {
                  // print('Clicked on delete icon');

                  showDialog(
                      context: context,
                      builder: (context) => Dialog(
                            backgroundColor: Styles.white,
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(15),
                            ),
                            child: SizedBox(
                              height: 210.h,
                              width: 250.w,
                              child: Container(
                                color: Styles.white,
                                child: Column(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    Padding(
                                      padding: EdgeInsets.all(10.0),
                                      child: defaultFieldForm(
                                        controller: _todoController,
                                        padding:
                                            EdgeInsets.symmetric(vertical: 3.h),
                                        Type: TextInputType.text,
                                        // prefix: FluentSystemIcons.ic_fluent_lock_regular,
                                        lable: "Task Name",
                                        hint: "Task Name",
                                      ),
                                    ),
                                    Gap(20.h),
                                    Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.center,
                                      children: [
                                        SizedBox(
                                          width: 100.w,
                                          child: ElevatedButton(
                                            onPressed: () {
                                              Navigator.pop(context);
                                            },
                                            style: ElevatedButton.styleFrom(
                                              fixedSize:
                                                  Size(double.infinity, 45.h),
                                              maximumSize:
                                                  Size(double.infinity, 45.h),
                                              minimumSize:
                                                  Size(double.infinity, 45.h),
                                              backgroundColor:
                                                  Styles.defualtColor,
                                              shape: RoundedRectangleBorder(
                                                borderRadius:
                                                    BorderRadius.circular(5.r),
                                              ),
                                            ),
                                            child: Center(
                                              child: Text(
                                                'Cancel',
                                                style: TextStyle(
                                                  fontFamily: 'Tajawal7',
                                                  fontWeight: FontWeight.w500,
                                                  color: Styles.white,
                                                  fontSize: 14.sp,
                                                ),
                                              ),
                                            ),
                                          ),
                                        ),
                                        Gap(20.h),
                                        SizedBox(
                                          width: 100.w,
                                          child: ElevatedButton(
                                            onPressed: () {
                                              inEdited(todo.id, todo.todoText);
                                            },
                                            style: ElevatedButton.styleFrom(
                                              fixedSize:
                                                  Size(double.infinity, 45.h),
                                              maximumSize:
                                                  Size(double.infinity, 45.h),
                                              minimumSize:
                                                  Size(double.infinity, 45.h),
                                              backgroundColor:
                                                  Styles.defualtColor,
                                              shape: RoundedRectangleBorder(
                                                borderRadius:
                                                    BorderRadius.circular(5.r),
                                              ),
                                            ),
                                            child: Center(
                                              child: Text(
                                                'Save',
                                                style: TextStyle(
                                                  fontFamily: 'Tajawal7',
                                                  fontWeight: FontWeight.w500,
                                                  color: Styles.white,
                                                  fontSize: 14.sp,
                                                ),
                                              ),
                                            ),
                                          ),
                                        )
                                      ],
                                    )
                                  ],
                                ),
                              ),
                            ),
                          ));
                  //editToDoItem('${todo!.id}',_todoController.text.toString(),);
                  //  onDeleteItem(todo.id);
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}
