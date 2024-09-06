import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:marchic/shared/widgets/AppBar.dart';
import 'package:marchic/themes/theme_context.dart';
import 'package:marchic/themes/tokens.dart';
import 'widgets/CustomButton.dart';
import 'widgets/phoneField.dart';

class SignUpPhoneNumber extends StatefulWidget {
  const SignUpPhoneNumber({super.key});

  @override
  State<SignUpPhoneNumber> createState() => _SignUpPhoneNumberState();
}

class _SignUpPhoneNumberState extends State<SignUpPhoneNumber> {
  TextEditingController _controller = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomAppBar(),
      body: Padding(
        padding: EdgeInsets.symmetric(horizontal: 25.w),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(
              height: 32.h,
            ),
            Text(
              "Saisis votre numéro",
              style: context.textTheme.bodyLarge!
                  .copyWith(color: kGray[900], fontWeight: FontWeight.w500),
            ),
            SizedBox(
              height: 10.h,
            ),
            SizedBox(
              width: 293.w,
              child: Text(
                "Veuillez ajouter un numéro de téléphone valide, pour que nous puissons confirmer qu’il sagit bien de vous.",
                style: context.textTheme.bodySmall!
                    .copyWith(color: kGray[500], fontWeight: FontWeight.w400),
              ),
            ),
            SizedBox(
              height: 36.h,
            ),
            CustomInputField(
              controller: _controller,
              prefixText: '+213',
              hintText: '0 666 66 66 66',
              width: double.infinity,
              height: 45.h,
            ),
            SizedBox(
              height: 166.h,
            ),
            CustomButton(
              text: 'Suivant',
            ),
          ],
        ),
      ),
    );
  }
}
