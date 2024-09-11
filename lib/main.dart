import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:marchic/features/authentication/presentation/otpVerification.dart';
import 'package:marchic/features/authentication/presentation/signin.dart';
import 'package:marchic/features/authentication/presentation/signup.dart';
import 'package:marchic/features/authentication/presentation/signupPhoneNumber.dart';
import 'package:marchic/themes/app_theme.dart';

import 'features/authentication/presentation/signupInfos.dart';

void main() {
  runApp(MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      designSize: const Size(360, 800),
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        theme: AppTheme.lightTheme,
        home: SignIn(),
      ),
    );
  }
}
