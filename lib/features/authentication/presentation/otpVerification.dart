import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:marchic/shared/widgets/AppBar.dart';
import 'package:marchic/themes/theme_context.dart';
import 'package:marchic/themes/tokens.dart';
import 'widgets/CustomButton.dart';
import 'widgets/otpField.dart';

class otpVerification extends StatefulWidget {
  const otpVerification({super.key});

  @override
  State<otpVerification> createState() => _otpVerificationState();
}

class _otpVerificationState extends State<otpVerification> {
  @override
  Widget build(BuildContext context) {
    var signupOtp1Controller = TextEditingController();
    var signupOtp2Controller = TextEditingController();
    var signupOtp3Controller = TextEditingController();
    var signupOtp4Controller = TextEditingController();
    var signupOtp5Controller = TextEditingController();
    var signupOtp6Controller = TextEditingController();
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
                "Saisis le code à 6 chiffres",
                style: context.textTheme.bodyLarge!
                    .copyWith(color: kGray[900], fontWeight: FontWeight.w500),
              ),
              SizedBox(
                height: 48.h,
              ),
              SizedBox(
                width: 293.w,
                child: Text(
                  "Un SMS contenant un code de vérification à 6 chiffres vient d’être envoyé au +213 0698355033",
                  style: context.textTheme.bodySmall!
                      .copyWith(color: kGray[500], fontWeight: FontWeight.w400),
                ),
              ),
              SizedBox(
                height: 36.h,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  otpField(
                    first: true,
                    last: false,
                    otpController: signupOtp1Controller,
                  ),
                  otpField(
                    first: false,
                    last: false,
                    otpController: signupOtp2Controller,
                  ),
                  otpField(
                    first: false,
                    last: false,
                    otpController: signupOtp3Controller,
                  ),
                  otpField(
                    first: false,
                    last: false,
                    otpController: signupOtp4Controller,
                  ),
                  otpField(
                    first: false,
                    last: false,
                    otpController: signupOtp5Controller,
                  ),
                  otpField(
                    first: false,
                    last: true,
                    otpController: signupOtp6Controller,
                  ),
                ],
              ),
              SizedBox(
                height: 23.h,
              ),
              Text(
                "Renvoyer le code (60s)",
                style: context.textTheme.bodySmall!.copyWith(
                    fontWeight: FontWeight.w500, color: kPrimaryColor),
              ),
              SizedBox(
                height: 62.h,
              ),
              CustomButton(
                text: 'Vérifier',
              ),
            ],
          ),
        ),
      ),
    );
  }
}
