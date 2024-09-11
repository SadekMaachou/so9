import 'package:fluentui_system_icons/fluentui_system_icons.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:marchic/themes/tokens.dart';
import 'widgets/signupChoices.dart';

class SignUp extends StatelessWidget {
  const SignUp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        body: Center(
          child: Column(
            children: [
              SizedBox(
                height: 115.h,
              ),
              Text(
                "Inscription",
                style: TextStyle(
                  fontSize: 22.sp,color: kGray[900], fontWeight: FontWeight.w600
                ),
              ),
              SizedBox(
                height: 16.h,
              ),
              Text(
                "Créer un profil et faitez vos courses en ligne",
                style: TextStyle(
                  color: kGray[500], fontWeight: FontWeight.w400, fontSize: 12.sp
                )
              ),
              SizedBox(
                height: 128.h,
              ),
              const CustomContainer(
                text: 'Continuer avec téléphone',
                icon: Icon(FluentIcons.call_20_regular),
              ),
              SizedBox(
                height: 13.h,
              ),
              CustomContainer(
                text: 'Continuer avec Google',
                icon: SvgPicture.asset(
                  'assets/logos/Google.svg',
                  height: 18.h,
                  width: 18.w,
                ),
              ),
              SizedBox(
                height: 170.h,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    "Tu as déja un compte ?",
                    style: TextStyle(
                      color: kGray[900], fontWeight: FontWeight.w500, fontSize: 14.sp
                    )
                  ),
                  SizedBox(
                    width: 6.w,
                  ),
                  Text(
                    "Connexion",
                    style: TextStyle(
                      color: kPrimaryColor, fontWeight: FontWeight.w500, fontSize: 14.sp
                    )
                  ),
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
