import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:marchic/themes/theme_context.dart';
import 'package:marchic/themes/tokens.dart';

class CustomButton extends StatelessWidget {
  final String text;

  CustomButton({
    Key? key,
    required this.text,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      height: 45.h,
      child: ElevatedButton(
        onPressed: () {
          // Add onPressed action here
        },
        style: ButtonStyle(
          backgroundColor: MaterialStateProperty.all(kPrimaryColor),
          elevation: MaterialStateProperty.all(0),
          shape: MaterialStateProperty.all<RoundedRectangleBorder>(
            RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(8.0),
            ),
          ),
        ),
        child: Text(text,
            style: context.textTheme.bodyMedium!
                .copyWith(color: Colors.white, fontWeight: FontWeight.w500)),
      ),
    );
  }
}
