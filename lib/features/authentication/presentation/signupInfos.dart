// ignore_for_file: unused_field

import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:marchic/features/authentication/presentation/widgets/dropDown.dart';
import 'package:marchic/features/authentication/presentation/widgets/name_emailField.dart';
import 'package:marchic/shared/widgets/AppBar.dart';
import 'package:marchic/themes/theme_context.dart';
import 'package:marchic/themes/tokens.dart';
import 'widgets/CustomButton.dart';

class SignUpInfos extends StatefulWidget {
  const SignUpInfos({super.key});

  @override
  State<SignUpInfos> createState() => _SignUpInfosState();
}

class _SignUpInfosState extends State<SignUpInfos> {
  TextEditingController _controller = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomAppBar(),
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 25.w),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(
                height: 32.h,
              ),
              Text(
                "Compléter vos information",
                style: context.textTheme.bodyLarge!
                    .copyWith(color: kGray[900], fontWeight: FontWeight.w500),
              ),
              SizedBox(
                height: 32.h,
              ),
              CustomField(
                  fieldName: "Nom Complet", hintText: "Maatalah Abdallah"),
              SizedBox(
                height: 9.h,
              ),
              CustomField(
                  fieldName: "Email", hintText: "a.matallah@esi-sba.dz"),
              SizedBox(
                height: 9.h,
              ),
              DropDown(
                fieldName: 'Wilaya',
              ),
              SizedBox(
                height: 9.h,
              ),
              DropDown(
                fieldName: 'Commune',
              ),
              SizedBox(
                height: 88.h,
              ),
              CustomButton(
                text: 'Inscrire',
              ),
              SizedBox(
                height: 20.h,
              ),
              Container(
                child: RichText(
                  textAlign: TextAlign.center,
                  text: TextSpan(
                    style: context.textTheme.bodySmall!.copyWith(
                        fontWeight: FontWeight.w500, color: kGray[900]),
                    children: const [
                      TextSpan(
                          text:
                              'En cliquant sur le button inscrire, vous reconnaissez avoir lu et accepté les '),
                      TextSpan(
                        text: 'termes et conditions',
                        style: TextStyle(
                            height: 1.8,
                            fontWeight: FontWeight.w600,
                            decoration: TextDecoration.underline),
                      ),
                      TextSpan(text: ' et la '),
                      TextSpan(
                        text: 'charte de confidentialité',
                        style: TextStyle(
                            fontWeight: FontWeight.w600,
                            decoration: TextDecoration.underline),
                      ),
                    ],
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
