// ignore_for_file: must_be_immutable

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:marchic/themes/theme_context.dart';
import 'package:marchic/themes/tokens.dart';

class otpField extends StatelessWidget {
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

  otpField({
    Key? key,
    required this.first,
    required this.last,
    required this.otpController,
  }) : super(key: key);

  final bool first;
  final TextEditingController otpController;
  final bool last;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 45.w,
      child: Center(
        child: TextFormField(
          autovalidateMode: AutovalidateMode.always,
          controller: otpController,
          autofocus: true,
          inputFormatters: [
            LengthLimitingTextInputFormatter(1),
            FilteringTextInputFormatter.digitsOnly
          ],
          cursorColor: kGray[300],
          keyboardType: TextInputType.number,
          style: context.textTheme.bodyMedium!
              .copyWith(fontWeight: FontWeight.w500),
          textAlign: TextAlign.center,
          decoration: InputDecoration(
            enabledBorder: outlineInputBorder,
            border: outlineInputBorder,
            focusedBorder: focusedInputBorder,
            fillColor: Colors.white,
            contentPadding: EdgeInsets.symmetric(vertical: 10.h),
            filled: true,
          ),
          onChanged: (value) => {
            if (value.length == 1 && last == false)
              {
                FocusScope.of(context).nextFocus(),
              },
            if (value.isEmpty && first == false)
              {
                FocusScope.of(context).previousFocus(),
              },
            if (value.length == 1 && last == true)
              {
                FocusScope.of(context).unfocus(),
              },
          },
        ),
      ),
    );
  }
}
