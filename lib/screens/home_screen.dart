import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:gap/gap.dart';
import 'package:get_storage/get_storage.dart';
import 'package:to_list/screens/task_item.dart';

import '../core/app_style.dart';
import '../core/component/component.dart';
import '../model/tasks.dart';
import 'bottom.dart';



class HomeScreen extends StatefulWidget {
  HomeScreen({Key? key

  }) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  final todosList = ToDo.todoList();
  List<ToDo> _foundToDo = [];
  final todoController = TextEditingController();
  final userData =GetStorage();
  @override
  void initState() {
    _foundToDo = todosList;
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: tdBGColor,
      appBar:AppBar(
        automaticallyImplyLeading: false,
        backgroundColor:tdBGColor,
        title: Text('Welcome ${userData.read('UserName')}',
          style: TextStyle(
              color: Styles.defualtColor5

          ),),
      ),
      floatingActionButton: new FloatingActionButton(
          elevation: 5.0,
          child: new Icon(Icons.add),
          backgroundColor: Styles.white,
          onPressed: (){

            showDialog(
                context: context,
                builder: (context) => Dialog(
                  backgroundColor: Styles.white,
                  shape: RoundedRectangleBorder(
                      borderRadius:
                      BorderRadius.circular(15),
                  ),
                  child: SizedBox(
                    height: 210.h,
                    width: 250.w,
                    child: Container(
                      color: Styles.white,
                      child: Column(
                        mainAxisAlignment:
                        MainAxisAlignment.center,
                        children: [
                          Padding(
                            padding:   EdgeInsets.all(10.0),
                            child: defaultFieldForm(
                             controller: todoController,
                              padding:  EdgeInsets.symmetric(vertical: 3.h),
                              Type: TextInputType.text,
                             // prefix: FluentSystemIcons.ic_fluent_lock_regular,
                              lable: "Task Name" ,
                              hint: "Task Name",),
                          ),
                          Gap(20.h),
                          Row(
                            mainAxisAlignment:
                            MainAxisAlignment.center,
                            children: [
                              InkWell(
                                onTap: () {
                                  Navigator.pop(context);

                                },
                                child: Container(
                                  height: 40.h,
                                  width: 80.h,
                                  decoration: BoxDecoration(
                                    borderRadius:
                                    BorderRadius
                                        .circular(5.h),
                                    color:
                                    Styles.defualtColor,
                                  ),
                                  child: Center(
                                    child: Text(
                                     'Cancel',
                                      style: TextStyle(
                                        fontFamily:
                                        'Tajawal7',
                                        fontWeight:
                                        FontWeight.w500,
                                        color: Styles
                                            .white,
                                        fontSize: 14.sp,
                                      ),
                                    ),
                                  ),
                                ),
                              ),
                              Gap(20.h),
                              InkWell(
                                onTap: () {
                                  _addToDoItem(todoController.text);
                                  Navigator.pop(context);

                                },
                                child: Container(
                                  height: 40.h,
                                  width: 80.h,
                                  decoration: BoxDecoration(
                                    borderRadius:
                                    BorderRadius
                                        .circular(5.h),
                                    color:
                                    Styles.defualtColor,
                                  ),
                                  child: Center(
                                    child: Text(
                                     'Save',
                                      style: TextStyle(
                                        fontFamily:
                                        'Tajawal7',
                                        fontWeight:
                                        FontWeight.w500,
                                        color: Styles
                                            .white,
                                        fontSize: 14.sp,
                                      ),
                                    ),
                                  ),
                                ),
                              ),
                            ],
                          )
                        ],
                      ),
                    ),
                  ),
                ));
          }
      ),
      body: Stack(
        children: [
          Container(
            padding: EdgeInsets.symmetric(
              horizontal: 20,
              vertical: 15,
            ),
            child: Column(
              children: [
               // searchBox(),
                Expanded(
                  child: ListView(
                    children: [

                      for (ToDo todoo in _foundToDo.reversed)
                        ToDoItem(
                          todo: todoo,
                          onToDoChanged: _handleToDoChange,
                          onDeleteItem: _deleteToDoItem,
                          inEdited: _editToDoItem,
                        ),
                    ],
                  ),
                )
              ],
            ),
          ),
          // Align(
          //   alignment: Alignment.bottomCenter,
          //   child: Row(children: [
          //     Expanded(
          //       child: Container(
          //         margin: EdgeInsets.only(
          //           bottom: 20,
          //           right: 20,
          //           left: 20,
          //         ),
          //         padding: EdgeInsets.symmetric(
          //           horizontal: 20,
          //           vertical: 5,
          //         ),
          //         decoration: BoxDecoration(
          //           color: Colors.white,
          //           boxShadow: const [
          //             BoxShadow(
          //               color: Colors.grey,
          //               offset: Offset(0.0, 0.0),
          //               blurRadius: 10.0,
          //               spreadRadius: 0.0,
          //             ),
          //           ],
          //           borderRadius: BorderRadius.circular(10),
          //         ),
          //         child: TextField(
          //           controller: _todoController,
          //           decoration: InputDecoration(
          //               hintText: 'Add a new todo item',
          //               border: InputBorder.none),
          //         ),
          //       ),
          //     ),
          //     Container(
          //       margin: EdgeInsets.only(
          //         bottom: 20,
          //         right: 20,
          //       ),
          //       child: ElevatedButton(
          //         child: Text(
          //           '+',
          //           style: TextStyle(
          //             fontSize: 40,
          //           ),
          //         ),
          //         onPressed: () {
          //           _addToDoItem(_todoController.text);
          //         },
          //         style: ElevatedButton.styleFrom(
          //           primary: tdBlue,
          //           minimumSize: Size(60, 60),
          //           elevation: 10,
          //         ),
          //       ),
          //     ),
          //   ]),
          // ),
        ],
      ),
    );
  }
int c=0;
int c1=0;
  void _handleToDoChange(ToDo todo,) {
    setState(() {
      todo.isDone = !todo.isDone;
      if(todo.isDone==true){
        c++;
      }else c1--;
      print( c);
      userData.write('key1', c);
      userData.write('key2', c1);
    });
  }

  void _deleteToDoItem(String id) {
    setState(() {
      todosList.removeWhere((item) => item.id == id);

    });
  }

  void _addToDoItem(String toDo) {
    setState(() {
      todosList.add(ToDo(
        id: DateTime.now().second.toString(),
        todoText: toDo,
      ));
      print(todosList.length);
      userData.write('key', todosList.length);
    });
   // todoController.clear();
  }

  late final ToDo todosList2 ;
  List<ToDo> foundToDo = [];
  void _editToDoItem(String id,String newTask) {

    // final indexOfOld = foundToDo.firstWhere((e) => e.id == id);
    // print(indexOfOld);
    // indexOfOld.todoText==newTask;
    // if (indexOfOld == -1) return log('kkkkk');
    //
    //  foundToDo.removeAt(indexOfOld);
    //  foundToDo.insert(indexOfOld,
    //      ToDo(
    //        id: '$indexOfOld', todoText: newTask,
    //      ));
setState(() {


  final indexOfOld = foundToDo.map((e) => e.id).toList().indexOf(id);
  print(indexOfOld);
  if (indexOfOld == -1) return;
  foundToDo.removeAt(indexOfOld);
  todosList2.isEdited==true;
  foundToDo.insert(indexOfOld, ToDo(



      id: '$indexOfOld', todoText: newTask));
  navigateTo(context, BottomBar());

});


  }



}
