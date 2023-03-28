import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

void main() {
  runApp(const LoginPage());
}

class LoginPage extends StatelessWidget {
  const LoginPage({super.key});

  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
        designSize: const Size(360, 800),
        builder: (BuildContext context, Widget? child) => const MaterialApp(
              title: 'Login',
              debugShowCheckedModeBanner: false,
              home: Login(),
            ));
  }
}

class Login extends StatelessWidget {
  const Login({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: true,
      backgroundColor: Color(0xffFFFFFF),
      body: SingleChildScrollView(
        child: Container(
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
                margin: EdgeInsets.fromLTRB(40, 120, 30, 30),
                height: 80,
                width: 80,
                child: Image.asset(
                  'assets/images/logo.png',
                  height: 80,
                  width: 80,
                ),
              ),
              Container(
                margin: EdgeInsets.fromLTRB(40, 20, 0, 30),
                child: Text(
                  "로그인",
                  style:
                      TextStyle(fontSize: 30.sp, fontWeight: FontWeight.w600),
                ),
              ),
              Column(children: [
                Row(children: [
                  Container(
                    margin: EdgeInsets.fromLTRB(40, 60, 40, 0),
                    child: const Text(
                      "학교 이메일 주소",
                      style: TextStyle(
                          fontSize: 13,
                          color: Color(0xff757575),
                          fontWeight: FontWeight.w300),
                    ),
                  ),
                ]),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: const <Widget>[
                    SizedBox(
                      width: 350,
                      child: TextField(
                          decoration: InputDecoration(
                              filled: true,
                              fillColor: Color(0xffF5F5F5),
                              enabledBorder: OutlineInputBorder(
                                  borderSide: BorderSide.none))),
                    ),
                  ],
                ),
              ]),
              Column(children: [
                Row(children: [
                  Container(
                    margin: EdgeInsets.fromLTRB(40, 20, 40, 0),
                    child: const Text(
                      "비밀번호",
                      style: TextStyle(
                          fontSize: 13,
                          color: Color(0xff757575),
                          fontWeight: FontWeight.w300),
                    ),
                  ),
                ]),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: const <Widget>[
                    SizedBox(
                      width: 350,
                      child: TextField(
                          decoration: InputDecoration(
                              filled: true,
                              fillColor: Color(0xffF5F5F5),
                              enabledBorder: OutlineInputBorder(
                                  borderSide: BorderSide.none)),
                          obscureText: true),
                    ),
                  ],
                ),
              ]),
              SizedBox(
                height: 100.h,
              ),
              // ignore: sort_child_properties_last

              SizedBox(
                height: 15.h,
              ),
              Padding(
                padding: EdgeInsets.only(left: 20.w, right: 20.w),
                child: ElevatedButton(
                  onPressed: () {},
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
      ),
    );
  }
}
