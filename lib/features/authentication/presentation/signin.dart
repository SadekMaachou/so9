// ignore_for_file: use_build_context_synchronously, library_private_types_in_public_api, avoid_print

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:marchic/features/authentication/presentation/widgets/CustomButton.dart';
import 'package:marchic/features/authentication/presentation/widgets/phoneField.dart';
import 'package:marchic/themes/tokens.dart';

import 'signupInfos.dart';

class SignIn extends ConsumerStatefulWidget {
  const SignIn({super.key});

  @override
  _SignInState createState() => _SignInState();
}

class _SignInState extends ConsumerState<SignIn> {
  final TextEditingController _phoneController = TextEditingController();

  @override
  Widget build(BuildContext context) {

    return GestureDetector(
      onTap: () {
        FocusScope.of(context).unfocus();
      },
      child: Scaffold(
        body: SingleChildScrollView(
          child: Center(
            child: Padding(
              padding: EdgeInsets.symmetric(horizontal: 25.w),
              child: Column(
                children: [
                  SizedBox(height: 20.h),
                  SvgPicture.asset("assets/Logos/Free shipping-rafiki 1.svg"),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "Numéro de téléphone",
                        textAlign: TextAlign.start,
                        style: TextStyle(
                          fontWeight: FontWeight.w600,
                          color: kGray[900],
                          fontSize: 12.sp,
                        ),
                      ),
                      SizedBox(height: 5.h),
                      CustomInputField(
                        width: double.infinity,
                        height: 45.h,
                        controller: _phoneController,
                      ),
                    ],
                  ),
                  SizedBox(height: 70.h),
                  CustomButton(
                    text: 'Suivant',
                    onPressed: () {
                      FocusScope.of(context).unfocus();
                      print(_phoneController.text);
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => SignUpInfos(),
                        ),
                      );
                    },
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
