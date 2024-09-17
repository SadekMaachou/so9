// ignore_for_file: must_be_immutable

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:marchic/themes/tokens.dart';

class CustomField extends StatelessWidget {
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
  final String fieldName;
  final String hintText;
  TextEditingController fieldController = TextEditingController();

  CustomField({
    super.key,
    required this.fieldName,
    required this.hintText,
    required this.fieldController,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(fieldName,
            textAlign: TextAlign.start,
            style: TextStyle(
              fontWeight: FontWeight.w600, color: kGray[900], fontSize: 12.sp
            )),
        SizedBox(
          height: 5.h,
        ),
        SizedBox(
          height: 44.h,
          child: TextField(
            controller: fieldController,
            style: TextStyle(
              color: kGray[900], fontWeight: FontWeight.w500, fontSize: 12.sp
            ),
            decoration: InputDecoration(
              contentPadding:
                  EdgeInsets.symmetric(vertical: 12.h, horizontal: 18.w),
              enabledBorder: outlineInputBorder,
              border: outlineInputBorder,
              focusedBorder: focusedInputBorder,
              hintText: hintText,
              hintStyle: TextStyle(
                color: kGray[300], fontWeight: FontWeight.w500, fontSize: 12.sp
              ),
            ),
          ),
        ),
      ],
    );
  }
}
