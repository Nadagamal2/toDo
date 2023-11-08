import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get_storage/get_storage.dart';

import '../core/app_style.dart';

class ProfileScreen extends StatelessWidget {
    ProfileScreen({Key? key}) : super(key: key);
  final userData = GetStorage();
  @override
  Widget build(BuildContext context) {
    return   Scaffold(
      backgroundColor: Styles.white,
      appBar: AppBar(
        automaticallyImplyLeading: false,
        backgroundColor: Styles.white,
        title: Text(
          'Profile',
          style: TextStyle(color: Styles.defualtColor5),
        ),
      ),

      body: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Divider(
            height: 20.h,
            thickness: .5,
            color: Styles.defualtColor3,
          ),
          Center(
            child: Container(
              height: 100.h,
              width: 100.w,
              decoration: BoxDecoration(
                shape: BoxShape.circle,
                image: DecorationImage(
                  image: AssetImage('assets/2345.png'),

                )
              ),

            ),
          ),
          Padding(
            padding:   EdgeInsets.symmetric(horizontal: 15.w),
            child: Text('Name :'),
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
                    '${userData.read('UserName')}',
                    style: TextStyle(
                      fontSize: 20.sp,
                    ),
                  ),
                )),
          ),
          Padding(
            padding:   EdgeInsets.symmetric(horizontal: 15.w),
            child: Text('Password :'),
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
                    '${userData.read('Password')}',
                    style: TextStyle(
                      fontSize: 20.sp,
                    ),
                  ),
                )),
          ),

        ],
      ),

    );
  }
}
