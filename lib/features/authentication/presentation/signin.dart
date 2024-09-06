// ignore_for_file: must_be_immutable

import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:marchic/features/authentication/presentation/widgets/CustomButton.dart';
import 'package:marchic/features/authentication/presentation/widgets/phoneField.dart';
import 'package:marchic/features/authentication/presentation/widgets/signupChoices.dart';
import 'package:marchic/themes/theme_context.dart';
import 'package:marchic/themes/tokens.dart';

class SignIn extends StatelessWidget {
  TextEditingController _phoneController = TextEditingController();

  SignIn({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        body: Center(
          child: Padding(
            padding: EdgeInsets.symmetric(horizontal: 25.w),
            child: Column(
              children: [
                SizedBox(
                  height: 65.h,
                ),
                Text(
                  "Connexion",
                  style: context.textTheme.bodyLarge!.copyWith(
                    color: kGray[900],
                    fontWeight: FontWeight.w600,
                  ),
                ),
                SizedBox(
                  height: 18.h,
                ),
                Text(
                  "Bonjour! Heureux de vous revoir!",
                  style: context.textTheme.bodySmall!
                      .copyWith(color: kGray[500], fontWeight: FontWeight.w400),
                ),
                SizedBox(
                  height: 103.h,
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text("Numéro de téléphone",
                        textAlign: TextAlign.start,
                        style: context.textTheme.bodySmall!.copyWith(
                            fontWeight: FontWeight.w600, color: kGray[900])),
                    SizedBox(
                      height: 5.h,
                    ),
                    CustomInputField(
                        prefixText: "+213",
                        hintText: "06 666 66 66 66",
                        width: double.infinity,
                        height: 45.h,
                        controller: _phoneController),
                  ],
                ),
                SizedBox(
                  height: 20.h,
                ),
                CustomButton(text: 'Suivant'),
                SizedBox(
                  height: 30.h,
                ),
                Row(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    SvgPicture.asset(
                      "assets\\Line Divider.svg",
                    ),
                    SizedBox(
                      width: 6.w,
                    ),
                    Text(
                      "ou",
                      style: context.textTheme.bodySmall!.copyWith(
                          color: kGray[500], fontWeight: FontWeight.w500),
                    ),
                    SizedBox(
                      width: 6.w,
                    ),
                    SvgPicture.asset(
                      "assets\\Line Divider.svg",
                    ),
                  ],
                ),
                SizedBox(
                  height: 30.h,
                ),
                CustomContainer(
                  text: "Continuer avec Google",
                  icon: SvgPicture.asset("assets\\Logos\\Google Logo.svg"),
                ),
                SizedBox(
                  height: 30.h,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      "N'avez-vous pas de compte ?",
                      style: context.textTheme.bodySmall!.copyWith(
                          color: kGray[900], fontWeight: FontWeight.w500),
                    ),
                    SizedBox(
                      width: 6.w,
                    ),
                    Text(
                      "Inscrivez-vous",
                      style: context.textTheme.bodySmall!.copyWith(
                          color: kPrimaryColor, fontWeight: FontWeight.w500),
                    ),
                  ],
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
