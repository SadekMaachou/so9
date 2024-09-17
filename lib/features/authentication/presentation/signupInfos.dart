// ignore_for_file: unused_field


import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:marchic/features/authentication/presentation/widgets/dropDown.dart';
import 'package:marchic/features/authentication/presentation/widgets/name_emailField.dart';
import 'package:marchic/shared/widgets/AppBar.dart';
import 'package:marchic/themes/tokens.dart';
import 'widgets/CustomButton.dart';

class SignUpInfos extends StatefulWidget {
  const SignUpInfos({super.key});

  @override
  State<SignUpInfos> createState() => _SignUpInfosState();
}

class _SignUpInfosState extends State<SignUpInfos> {
  final TextEditingController _nameController = TextEditingController();
  final TextEditingController _emailController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        FocusScope.of(context).unfocus();
      },
      child: Scaffold(
        appBar: const CustomAppBar(),
        body: SingleChildScrollView(
          child: Padding(
            padding: EdgeInsets.symmetric(horizontal: 25.w),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(
                  height: 35.h,
                ),
                Text(
                  "Compléter vos information",
                  style: TextStyle(
                    color: kGray[900], fontWeight: FontWeight.w500, fontSize: 16.sp
                  )
                ),
                SizedBox(
                  height: 50.h,
                ),
                CustomField(
                    fieldName: "Nom Complet", hintText: "Maachou Yahya", fieldController: _nameController,),
                SizedBox(
                  height: 9.h,
                ),
                const DropDown(
                  fieldName: 'Wilaya',
                ),
                SizedBox(
                  height: 100.h,
                ),
                CustomButton(
                  text: 'Inscrire',
                  onPressed: () {
                  },
                ),
                SizedBox(
                  height: 20.h,
                ),
                Container(
                  child: RichText(
                    textAlign: TextAlign.center,
                    text: TextSpan(
                      style: TextStyle(
                        fontWeight: FontWeight.w500, color: kGray[500], fontSize: 10.sp
                      ),
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
      ),
    );
  }
}
