

import 'package:fluentui_icons/fluentui_icons.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:gap/gap.dart';
import 'package:get_storage/get_storage.dart';

import '../core/app_style.dart';
import '../core/component/component.dart';
import 'bottom.dart';




class SignInScreen extends StatefulWidget {

  const SignInScreen({Key? key}) : super(key: key);

  @override
  State<SignInScreen> createState() => _SignInScreenState();
}

class _SignInScreenState extends State<SignInScreen> {

  final userData =GetStorage();
  final emailController=TextEditingController();
  final passwordController=TextEditingController();


  @override
  void dispose(){
    emailController.dispose();
    passwordController.dispose();
    super.dispose();
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Padding(
          padding:   EdgeInsets.symmetric(horizontal: 20.h),
          child: Column(
            children: [
              Gap(100.h),
              Center(
                  child: Image.asset(
                    'assets/1 (4).png',
                    fit: BoxFit.fill,
                    height: 175.h,
                    width: 175.h,
                  )),
              Gap(8.h),
              Text(
                "Log in to continue",
                style: TextStyle(
                  color: Styles.defualtColor,
                  fontFamily: 'Tajawal7',
                  fontSize: 20.sp,
                ),
              ) ,
              Gap(15.h),

              Gap(29.h),
              defaultFieldForm(


                controller: emailController,

                padding:  EdgeInsets.symmetric(vertical: 3.h),
                Type: TextInputType.emailAddress,
                prefix: FluentSystemIcons.ic_fluent_mail_regular,
                lable: "UserName" ,
                hint:  "UserName" ,),
              Gap(15.h),
              defaultFieldForm(
                controller: passwordController,
                padding:  EdgeInsets.symmetric(vertical: 3.h),
                Type: TextInputType.text,
                prefix: FluentSystemIcons.ic_fluent_lock_regular,
                lable: "Password" ,
                hint: "Password",),

              Gap(30.h),
              SizedBox(
                width:double.infinity,
                height: 34.h,
                child: ElevatedButton(
                  onPressed: () {
                   userData.write('UserName', emailController.text.toString());
                   userData.write('Password', passwordController.text.toString());
                   navigateTo(context, BottomBar());
                  },
                  child: Text(
                    'LogIn',
                    style: TextStyle(
                      color: Styles.white,
                      fontFamily: 'Tajawal7',
                      fontSize: 15.sp,
                    ),
                  ),
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Styles.defualtColor,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(5.r),
                    ),
                  ),
                ),
              ),
              // buildBottum(height: 42.h, width: 290.h,
              //   decoration: BoxDecoration(
              //     color: Styles.buttomColor,
              //     borderRadius: BorderRadius.circular(7.5.r),
              //   ),
              //   text:  Text(
              //     "LOG IN".tr(),
              //
              //   style: Styles.buttomStyle ,
              //   textAlign: TextAlign.center,
              // ),
              //   onTap: (){login(emailController.text.toString(), passwordController.text.toString());},
              //
              // ),
              Gap(10.h),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  // InkWell(
                  //   onTap:(){
                  //
                  //   },
                  //   child: Container(
                  //     height: 30.h,
                  //     width: 30.h,
                  //     decoration: BoxDecoration(
                  //         color: Styles.defaultColor5,
                  //
                  //         shape: BoxShape.circle,
                  //         boxShadow: [
                  //           BoxShadow(
                  //             color: Colors.grey.shade300,
                  //             spreadRadius: 1,
                  //             blurRadius: 2,
                  //             offset: Offset(1,2),
                  //           )
                  //         ]
                  //     ),
                  //     child: Stack(alignment: Alignment.center,
                  //       children: [
                  //         Container(
                  //
                  //
                  //
                  //           height: 15.h,
                  //           width: 15.h,
                  //           decoration: BoxDecoration(
                  //               borderRadius: BorderRadius.circular(2.r),
                  //               image: DecorationImage(
                  //                 fit: BoxFit.cover,
                  //                 image: AssetImage('assets/ff.png'),
                  //               )
                  //           ),
                  //         ),
                  //       ],
                  //     ),
                  //   ),
                  // ),
                  // Gap(20.h),
                  // InkWell(
                  //   onTap:()async{
                  //     var user=await LoginApi.login();
                  //     // userData.write('isLoggedByGoogle', true);
                  //     // userData.write('isLogged', false);
                  //     //
                  //     // if(user!=null){
                  //     //   print('Done');
                  //     //   userData.write('name', user.displayName);
                  //     //   userData.write('img', user.photoUrl);
                  //     //   userData.write('email', user.email);
                  //     //   print(user.displayName);
                  //     //   print(user.email);
                  //     //   print(userData.read('name'));
                  //     //   print(userData.read('email'));
                  //     //  // Get.offAll(BottomNav());
                  //     //
                  //     //
                  //     // }
                  //   },
                  //   child: Container(
                  //     height: 30.h,
                  //     width: 30.h,
                  //     decoration: BoxDecoration(
                  //         color: Colors.white,
                  //
                  //         shape: BoxShape.circle,
                  //         boxShadow: [
                  //           BoxShadow(
                  //             color: Colors.grey.shade300,
                  //             spreadRadius: 1,
                  //             blurRadius: 2,
                  //             offset: Offset(1,2),
                  //           )
                  //         ]
                  //     ),
                  //     child: Stack(alignment: Alignment.center,
                  //       children: [
                  //         Container(
                  //
                  //
                  //
                  //           height: 15.h,
                  //           width: 15.h,
                  //           decoration: BoxDecoration(
                  //               borderRadius: BorderRadius.circular(2.r),
                  //               image: DecorationImage(
                  //                 fit: BoxFit.cover,
                  //                 image: AssetImage('assets/ggg.png'),
                  //               )
                  //           ),
                  //         ),
                  //       ],
                  //     ),
                  //   ),
                  // ),
                ],
              ),
              Gap(3.h),
              // Row(
              //   mainAxisAlignment: MainAxisAlignment.center,
              //   children: [
              //     Text(
              //       "Don\\'t have an account ?".tr(),
              //       style: Styles.headLineGray1,
              //     ),
              //     defaultTextBottom(onPressed:  () {
              //       Get.offAll(SignUpScreen());
              //     }, text:   "SIGN UP".tr(),),
              //
              //   ],
              // )
            ],
          ),
        ),
      ),
    );
  }
}
