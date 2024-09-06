import 'package:fluentui_system_icons/fluentui_system_icons.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:marchic/themes/theme_context.dart';
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
                height: 65.h,
              ),
              Text(
                "Inscription",
                style: context.textTheme.bodyLarge!
                    .copyWith(color: kGray[900], fontWeight: FontWeight.w600),
              ),
              SizedBox(
                height: 16.h,
              ),
              Text(
                "Créer un profil et faitez vos courses en ligne",
                style: context.textTheme.bodySmall!
                    .copyWith(color: kGray[500], fontWeight: FontWeight.w400),
              ),
              SizedBox(
                height: 70.h,
              ),
              const CustomContainer(
                text: 'Continuer avec téléphone',
                icon: Icon(FluentIcons.call_20_regular),
              ),
              SizedBox(
                height: 13.h,
              ),
              const CustomContainer(
                text: 'Continuer avec Google',
                icon: Icon(FluentIcons.call_20_regular),
              ),
              SizedBox(
                height: 166.h,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    "Tu as déja un compte ?",
                    style: context.textTheme.bodySmall!.copyWith(
                        color: kGray[900], fontWeight: FontWeight.w500),
                  ),
                  SizedBox(
                    width: 6.w,
                  ),
                  Text(
                    "Connexion",
                    style: context.textTheme.bodySmall!.copyWith(
                        color: kPrimaryColor, fontWeight: FontWeight.w500),
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
