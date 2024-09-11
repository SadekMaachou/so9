import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:marchic/themes/tokens.dart';

class CustomButton extends StatelessWidget {
  final String text;
  final VoidCallback? onPressed; 

  const CustomButton({
    super.key,
    required this.text,
    this.onPressed,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      height: 45.h,
      child: ElevatedButton(
        onPressed: onPressed,
        style: ButtonStyle(
          backgroundColor: WidgetStateProperty.all(kPrimaryColor),
          elevation: WidgetStateProperty.all(0),
          shape: WidgetStateProperty.all<RoundedRectangleBorder>(
            RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(8.0),
            ),
          ),
        ),
        child: Text(text,
            style: TextStyle(
              color: Colors.white, fontWeight: FontWeight.w500, fontSize: 14.sp
            )),
      ),
    );
  }
}
