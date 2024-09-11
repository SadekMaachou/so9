import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:marchic/shared/widgets/AppBar.dart';
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
                  "Saisis le code à 6 chiffres",
                  style: TextStyle(
                    color: kGray[900], fontWeight: FontWeight.w500, fontSize: 16.sp,
                  )
                ),
                SizedBox(
                  height: 10.h,
                ),
                SizedBox(
                  width: 293.w,
                  child: Text(
                    "Un SMS contenant un code de vérification à 6 chiffres vient d’être envoyé au +213 0698355033",
                    style: TextStyle(
                      color: kGray[500], fontWeight: FontWeight.w400, fontSize: 12.sp,
                    )
                  ),
                ),
                SizedBox(
                  height: 36.h,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    OtpField(
                      first: true,
                      last: false,
                      otpController: signupOtp1Controller,
                    ),
                    OtpField(
                      first: false,
                      last: false,
                      otpController: signupOtp2Controller,
                    ),
                    OtpField(
                      first: false,
                      last: false,
                      otpController: signupOtp3Controller,
                    ),
                    OtpField(
                      first: false,
                      last: false,
                      otpController: signupOtp4Controller,
                    ),
                    OtpField(
                      first: false,
                      last: false,
                      otpController: signupOtp5Controller,
                    ),
                    OtpField(
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
                  style: TextStyle(
                    fontWeight: FontWeight.w500, color: kPrimaryColor, fontSize: 12.sp,
                  )
                ),
                SizedBox(
                  height: 100.h,
                ),
                CustomButton(
                  text: 'Vérifier',
                  onPressed: () {
                    final otp = signupOtp1Controller.text +
                        signupOtp2Controller.text +
                        signupOtp3Controller.text +
                        signupOtp4Controller.text +
                        signupOtp5Controller.text +
                        signupOtp6Controller.text;
                    print(otp);
                  },
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
