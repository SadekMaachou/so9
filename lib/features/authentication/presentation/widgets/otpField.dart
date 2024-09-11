// ignore_for_file: must_be_immutable

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:marchic/themes/tokens.dart';

class OtpField extends StatefulWidget {
  final bool first;
  final bool last;
  final TextEditingController otpController;

  OtpField({
    Key? key,
    required this.first,
    required this.last,
    required this.otpController,
  }) : super(key: key);

  @override
  _OtpFieldState createState() => _OtpFieldState();
}

class _OtpFieldState extends State<OtpField> {
  var focusedInputBorder = OutlineInputBorder(
    borderRadius: BorderRadius.circular(8.0),
    borderSide: BorderSide(
      width: 1,
      color: kGray[900]!,
    ),
  );
  var outlineInputBorder = OutlineInputBorder(
    borderRadius: BorderRadius.circular(8.0),
    borderSide: BorderSide(
      width: 1,
      color: kGray[300]!,
    ),
  );

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 45.w,
      child: Center(
        child: TextFormField(
          autovalidateMode: AutovalidateMode.always,
          controller: widget.otpController,
          autofocus: true,
          inputFormatters: [
            LengthLimitingTextInputFormatter(1),
            FilteringTextInputFormatter.digitsOnly,
          ],
          cursorColor: kGray[300],
          keyboardType: TextInputType.number,
          style: TextStyle(
            fontWeight: FontWeight.w400,
            fontSize: 14.sp,
            color: kGray[900],
          ),
          textAlign: TextAlign.center,
          decoration: InputDecoration(
            enabledBorder: outlineInputBorder,
            border: outlineInputBorder,
            focusedBorder: focusedInputBorder,
            fillColor: Colors.white,
            contentPadding: EdgeInsets.symmetric(vertical: 12.h),
            filled: true,
          ),
          onChanged: (value) {
            if (value.length == 1 && !widget.last) {
              FocusScope.of(context).nextFocus();
            }
            if (value.isEmpty && !widget.first) {
              FocusScope.of(context).previousFocus();
            }
            if (value.length == 1 && widget.last) {
              FocusScope.of(context).unfocus();
            }
          },
        ),
      ),
    );
  }
}
