import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:marchic/shared/widgets/AppBar.dart';
import 'package:marchic/themes/tokens.dart';
import 'widgets/CustomButton.dart';
import 'widgets/phoneField.dart';

class SignUpPhoneNumber extends StatefulWidget {
  const SignUpPhoneNumber({super.key});

  @override
  State<SignUpPhoneNumber> createState() => _SignUpPhoneNumberState();
}

class _SignUpPhoneNumberState extends State<SignUpPhoneNumber> {
  final TextEditingController _controller = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        FocusScope.of(context).unfocus();
      },
      child: Scaffold(
        appBar: const CustomAppBar(),
        body: Padding(
          padding: EdgeInsets.symmetric(horizontal: 25.w),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(
                height: 35.h,
              ),
              Text(
                "Saisis votre numéro",
                style: TextStyle(
                  color: kGray[900], fontWeight: FontWeight.w500, fontSize: 16.sp
                )
              ),
              SizedBox(
                height: 10.h,
              ),
              SizedBox(
                width: 293.w,
                child: Text(
                  "Veuillez ajouter un numéro de téléphone valide, pour que nous puissons confirmer qu’il sagit bien de vous.",
                  style: TextStyle(
                    color: kGray[500], fontWeight: FontWeight.w400, fontSize: 12.sp
                  )
                ),
              ),
              SizedBox(
                height: 50.h,
              ),
              CustomInputField(
                controller: _controller,
                width: double.infinity,
                height: 45.h,
              ),
              SizedBox(
                height: 100.h,
              ),
              const CustomButton(
                text: 'Suivant',
              ),
            ],
          ),
        ),
      ),
    );
  }
}
