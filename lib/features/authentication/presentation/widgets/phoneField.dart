import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:marchic/themes/theme_context.dart';
import 'package:marchic/themes/tokens.dart';

class CustomInputField extends StatelessWidget {
  final String prefixText;
  final String hintText;
  final double width;
  final double height;

  const CustomInputField({
    Key? key,
    required this.prefixText,
    required this.hintText,
    required this.width,
    required this.height,
    required TextEditingController controller,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: width,
      height: height,
      decoration: BoxDecoration(
        border: Border.all(color: kGray[300]!),
        borderRadius: BorderRadius.circular(8.0),
      ),
      child: Row(
        children: [
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 10.w),
            child: Text(
              '+213',
              style: context.textTheme.labelLarge!.copyWith(color: kGray[500]),
            ),
          ),
          Expanded(
            child: TextField(
              style: context.textTheme.bodyMedium!
                  .copyWith(color: kGray[900], fontWeight: FontWeight.w500),
              decoration: InputDecoration(
                hintText: hintText,
                hintStyle: context.textTheme.bodyMedium!
                    .copyWith(color: kGray[300], fontWeight: FontWeight.w500),
                border: InputBorder.none,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
