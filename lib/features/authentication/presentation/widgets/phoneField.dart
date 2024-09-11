import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:marchic/themes/tokens.dart';

class CustomInputField extends StatefulWidget {
  final double width;
  final double height;
  final TextEditingController controller;

  const CustomInputField({
      super.key,
      required this.width,
      required this.height,
      required this.controller,
    });

  @override
  State<CustomInputField> createState() => _CustomInputFieldState();
}

class _CustomInputFieldState extends State<CustomInputField> {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: widget.width,
      height: widget.height,
      decoration: BoxDecoration(
        border: Border.all(color: kGray[300]!),
        borderRadius: BorderRadius.circular(8.0),
      ),
      child: Row(
        children: [
          Padding(
            padding: EdgeInsets.only(left: 18.w, right: 11.w),
            child: Text(
              '+213',
              style: TextStyle(
                color: kGray[500], fontWeight: FontWeight.w500, fontSize: 12.sp
              ),
            ),
          ),
          Expanded(
            child: TextField(
              controller: widget.controller,
              keyboardType: TextInputType.number,
              style: TextStyle(
                color: kGray[900], fontWeight: FontWeight.w500, fontSize: 12.sp
              ),
              decoration: InputDecoration(
                contentPadding: EdgeInsets.symmetric(vertical: 12.h),
                hintText: "0 660 99 17 32",
                hintStyle: TextStyle(
                  color: kGray[300], fontWeight: FontWeight.w500, fontSize: 12.sp
                ),
                border: InputBorder.none,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
