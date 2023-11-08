import 'package:fluentui_icons/fluentui_icons.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:gap/gap.dart';
import 'package:get_storage/get_storage.dart';
import 'package:to_list/core/app_style.dart';

import '../model/tasks.dart';

class DashboardScreen extends StatelessWidget {
  final userData =GetStorage();
    DashboardScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Styles.white,
      appBar: AppBar(
        automaticallyImplyLeading: false,
        backgroundColor: Styles.white,
        title: Text(
          'To Do Dashboard',
          style: TextStyle(color: Styles.defualtColor5),
        ),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Divider(
              height: 20.h,
              thickness: .5,
              color: Styles.defualtColor3,
            ),
            Padding(
              padding: EdgeInsets.all(15.h),
              child: Container(
                  height: 70.h,
                  width: double.infinity,
                  decoration: BoxDecoration(
                    color: Styles.white,
                    boxShadow: [
                      BoxShadow(
                        color: Colors.grey.shade200,
                        spreadRadius: 1,
                        blurRadius: 3,
                        offset: Offset(0, 1), // changes position of shadow
                      ),
                    ],
                    borderRadius: BorderRadius.circular(10.r),
                  ),
                  child: Center(
                    child: Text(
                      'Total Tasks',
                      style: TextStyle(
                        fontSize: 20.sp,
                      ),
                    ),
                  )),
            ),
            Container(
                height: 70.h,
                width: 150.w,
                decoration: BoxDecoration(
                  color: Styles.defualtColor,
                  boxShadow: [
                    BoxShadow(
                      color: Colors.grey.shade200,
                      spreadRadius: 1,
                      blurRadius: 3,
                      offset: Offset(0, 1), // changes position of shadow
                    ),
                  ],
                  borderRadius: BorderRadius.circular(10.r),
                ),
                child: Center(
                  child: Text(
                    '${userData.read('key')}',
                    style: TextStyle(fontSize: 20.sp, color: Styles.white),
                  ),
                )),
            Padding(
              padding: EdgeInsets.all(15.h),
              child: Container(
                  height: 70.h,
                  width: double.infinity,
                  decoration: BoxDecoration(
                    color: Styles.white,
                    boxShadow: [
                      BoxShadow(
                        color: Colors.grey.shade200,
                        spreadRadius: 1,
                        blurRadius: 3,
                        offset: Offset(0, 1), // changes position of shadow
                      ),
                    ],
                    borderRadius: BorderRadius.circular(10.r),
                  ),
                  child: Center(
                    child: Text(
                      'Completed Tasks',
                      style: TextStyle(
                        fontSize: 20.sp,
                      ),
                    ),
                  )),
            ),
            Container(
                height: 70.h,
                width: 150.w,
                decoration: BoxDecoration(
                  color: Styles.defualtColor,
                  boxShadow: [
                    BoxShadow(
                      color: Colors.grey.shade200,
                      spreadRadius: 1,
                      blurRadius: 3,
                      offset: Offset(0, 1), // changes position of shadow
                    ),
                  ],
                  borderRadius: BorderRadius.circular(10.r),
                ),
                child: Center(
                  child: Text(
                      '${userData.read('key1')}',
                    style: TextStyle(fontSize: 20.sp, color: Styles.white),
                  ),
                )),
            Padding(
              padding: EdgeInsets.all(15.h),
              child: Container(
                  height: 70.h,
                  width: double.infinity,
                  decoration: BoxDecoration(
                    color: Styles.white,
                    boxShadow: [
                      BoxShadow(
                        color: Colors.grey.shade200,
                        spreadRadius: 1,
                        blurRadius: 3,
                        offset: Offset(0, 1), // changes position of shadow
                      ),
                    ],
                    borderRadius: BorderRadius.circular(10.r),
                  ),
                  child: Center(
                    child: Text(
                      'Non-Completed Tasks',
                      style: TextStyle(
                        fontSize: 20.sp,
                      ),
                    ),
                  )),
            ),
            Container(
                height: 70.h,
                width: 150.w,
                decoration: BoxDecoration(
                  color: Styles.defualtColor,
                  boxShadow: [
                    BoxShadow(
                      color: Colors.grey.shade200,
                      spreadRadius: 1,
                      blurRadius: 3,
                      offset: Offset(0, 1), // changes position of shadow
                    ),
                  ],
                  borderRadius: BorderRadius.circular(10.r),
                ),
                child: Center(
                  child: Text(
                    '${userData.read('key')-userData.read('key1')}',
                    style: TextStyle(fontSize: 20.sp, color: Styles.white),
                  ),
                )),
          ],
        ),
      ),
    );
  }
}
