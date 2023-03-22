import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
        designSize: const Size(360, 800),
        builder: (BuildContext context, Widget? child) => const MaterialApp(
              title: 'StuPetition',
              debugShowCheckedModeBanner: false,
              home: Start(),
            ));
  }
}

class Start extends StatelessWidget {
  const Start({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              margin: EdgeInsets.all(30),
              height: 120,
              width: 120,
              child: Image.asset(
                'assets/images/logo.png',
                height: 100,
                width: 100,
              ),
            ),
            Container(
              margin: EdgeInsets.all(30),
              child: Text(
                "학생청원,\n학생의 목소리를 듣다",
                style: TextStyle(fontSize: 30.sp, fontWeight: FontWeight.w600),
              ),
            ),
            SizedBox(
              height: 200.h,
            ),
            // ignore: sort_child_properties_last
            Padding(
              padding: EdgeInsets.only(left: 20.w, right: 20.w, bottom: 5.h),
              child: ElevatedButton(
                onPressed: () {
                  // Navigator.push(
                  //     context,
                  //     MaterialPageRoute(
                  //         builder: (context) => const Start_signup()));
                },
                // ignore: sort_child_properties_last
                child: Text(
                  "새로 시작하기",
                  style: TextStyle(
                      fontSize: 15.sp,
                      color: Color(0xffA7D0D7),
                      fontWeight: FontWeight.w600),
                ),
                style: ElevatedButton.styleFrom(
                  primary: Colors.white,
                  minimumSize: Size(double.infinity, 45.h),
                  shape: RoundedRectangleBorder(
                      side: const BorderSide(
                          width: 1.0, color: Color(0xffA7D0D7)),
                      borderRadius: BorderRadius.circular(20.h)),
                ),
              ),
            ),
            Padding(
              padding: EdgeInsets.only(left: 20.w, right: 20.w),
              child: ElevatedButton(
                onPressed: () {},
                // ignore: sort_child_properties_last
                child: Text(
                  "로그인",
                  style: TextStyle(
                      fontSize: 15.sp,
                      color: Color(0xffD6A7D7),
                      fontWeight: FontWeight.w600),
                ),
                style: ElevatedButton.styleFrom(
                  primary: Colors.white,
                  minimumSize: Size(double.infinity, 45.h),
                  shape: RoundedRectangleBorder(
                      side: const BorderSide(
                          width: 1.0, color: Color(0xffD6A7D7)),
                      borderRadius: BorderRadius.circular(20.h)),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
