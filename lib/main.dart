import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import './screens/user/login.dart';

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
      body: Container(
        decoration: const BoxDecoration(
          image: DecorationImage(
            fit: BoxFit.cover,
            image: AssetImage('assets/images/banner.png'), // 배경 이미지
          ),
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              margin: EdgeInsets.fromLTRB(40, 140, 30, 30),
              height: 120,
              width: 120,
              child: Image.asset(
                'assets/images/logo.png',
                height: 100,
                width: 100,
              ),
            ),
            Container(
              margin: EdgeInsets.fromLTRB(40, 20, 0, 50),
              child: Text(
                "학생청원,\n학생의 목소리를 듣다",
                style: TextStyle(fontSize: 32.sp, fontWeight: FontWeight.w600),
              ),
            ),
            SizedBox(
              height: 180.h,
            ),
            Padding(
              padding: EdgeInsets.only(left: 30.w, right: 30.w),
              child: ElevatedButton(
                onPressed: () {
                  Navigator.push(
                      context, MaterialPageRoute(builder: (_) => Login()));
                },
                // ignore: sort_child_properties_last
                child: Container(
                  child: Text(
                    "로그인",
                    style: TextStyle(
                      fontSize: 15.sp,
                      color: Color(0xff111111),
                      fontWeight: FontWeight.w300,
                    ),
                  ),
                ),
                style: TextButton.styleFrom(
                  elevation: 0,
                  backgroundColor: Colors.white,
                  minimumSize: Size(double.infinity, 45.h),
                  shape: RoundedRectangleBorder(
                      side: const BorderSide(
                          width: 1.0, color: Color(0xffD6A7D7)),
                      borderRadius: BorderRadius.circular(10.h)),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
