import 'dart:ui';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

Color primary = const Color(0xffffffff);
const Color tdRed = Color(0xFFDA4040);
const Color tdBlue = Color(0xFF5F52EE);

const Color tdBlack = Color(0xFF3A3A3A);
const Color tdGrey = Color(0xFF717171);

const Color tdBGColor = Color(0xFFEEEFF5);
class Styles {
  static Color defualtColor=Color(0xff4CB2F1);
  static Color defualtColor2=Color(0xff195ABD);
  static Color defualtColor3=Color(0xffBCBCBB);
  static Color defualtColor5=Colors.black;
  static Color defualtColor6=Colors.red;

  // static Color defualtColor3=  Color(0xff77b297);
   static Color white = primary;
  // static Color ScafoldColor2 =  Color(0xffF5F5F5);
  // static Color buttomColor = const Color(0xff22D27F);
  // static Color IconColor = const Color(0xff4CB2F1);
  // static Color borderColor = const Color(0xff52a1ce);

  static TextStyle buttomStyle = TextStyle(
    color: Styles.white,
    fontWeight: FontWeight.w600,
    fontSize: 16.sp,
  );
  static TextStyle headLineGray1 = TextStyle(
    color: Colors.grey.shade500,
    fontSize: 12.sp,
  );
  static TextStyle headLine1 = TextStyle(
    color: Color(0xff22D27F),
    fontSize: 15.sp,
    fontWeight: FontWeight.w600,
  );
  static TextStyle headLine2 = TextStyle(
    fontSize: 18.sp,
    fontWeight: FontWeight.bold,
  );
  static TextStyle headLine3 = TextStyle(
    fontSize: 14.sp,
    color: Colors.black54,
  );
  static TextStyle textButtom = TextStyle(
    fontSize: 12.sp,
    fontWeight: FontWeight.w600,
    color: Colors.black,
    decoration: TextDecoration.underline,
  );


  static TextStyle headLineGray2 = TextStyle(
    fontSize: 15.sp,
    fontWeight: FontWeight.w600,
    color: Colors.grey.shade600,
  );
  static TextStyle lable_Hint =  TextStyle(color: Color(0xffB6B6B6), fontWeight: FontWeight.w600,fontSize: 14.sp,);
}


// floatingActionButton: new FloatingActionButton(
//           elevation: 5.0,
//           child: new Icon(Icons.add),
//           backgroundColor: Styles.white,
//           onPressed: (){
//
//             showDialog(
//                 context: context,
//                 builder: (context) => Dialog(
//                   backgroundColor: Styles.white,
//                   shape: RoundedRectangleBorder(
//                       borderRadius:
//                       BorderRadius.circular(15),
//                   ),
//                   child: SizedBox(
//                     height: 210.h,
//                     width: 250.w,
//                     child: Container(
//                       color: Styles.white,
//                       child: Column(
//                         mainAxisAlignment:
//                         MainAxisAlignment.center,
//                         children: [
//                           Padding(
//                             padding:   EdgeInsets.all(10.0),
//                             child: defaultFieldForm(
//                              // controller: passwordController,
//                               padding:  EdgeInsets.symmetric(vertical: 3.h),
//                               Type: TextInputType.text,
//                              // prefix: FluentSystemIcons.ic_fluent_lock_regular,
//                               lable: "Task Name" ,
//                               hint: "Task Name",),
//                           ),
//                           Gap(20.h),
//                           Row(
//                             mainAxisAlignment:
//                             MainAxisAlignment.center,
//                             children: [
//                               InkWell(
//                                 onTap: () {
//
//                                 },
//                                 child: Container(
//                                   height: 40.h,
//                                   width: 80.h,
//                                   decoration: BoxDecoration(
//                                     borderRadius:
//                                     BorderRadius
//                                         .circular(5.h),
//                                     color:
//                                     Styles.defualtColor,
//                                   ),
//                                   child: Center(
//                                     child: Text(
//                                      'Cancel',
//                                       style: TextStyle(
//                                         fontFamily:
//                                         'Tajawal7',
//                                         fontWeight:
//                                         FontWeight.w500,
//                                         color: Styles
//                                             .white,
//                                         fontSize: 14.sp,
//                                       ),
//                                     ),
//                                   ),
//                                 ),
//                               ),
//                               Gap(20.h),
//                               InkWell(
//                                 onTap: () {
//
//                                 },
//                                 child: Container(
//                                   height: 40.h,
//                                   width: 80.h,
//                                   decoration: BoxDecoration(
//                                     borderRadius:
//                                     BorderRadius
//                                         .circular(5.h),
//                                     color:
//                                     Styles.defualtColor,
//                                   ),
//                                   child: Center(
//                                     child: Text(
//                                      'Save',
//                                       style: TextStyle(
//                                         fontFamily:
//                                         'Tajawal7',
//                                         fontWeight:
//                                         FontWeight.w500,
//                                         color: Styles
//                                             .white,
//                                         fontSize: 14.sp,
//                                       ),
//                                     ),
//                                   ),
//                                 ),
//                               ),
//                             ],
//                           )
//                         ],
//                       ),
//                     ),
//                   ),
//                 ));
//           }
//       ),