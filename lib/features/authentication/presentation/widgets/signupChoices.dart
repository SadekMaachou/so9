import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:marchic/themes/theme_context.dart';
import 'package:marchic/themes/tokens.dart';

class CustomContainer extends StatelessWidget {
  final String text;
  final Widget icon;

  const CustomContainer({Key? key, required this.text, required this.icon})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 310.w,
      height: 45.h,
      padding: EdgeInsets.only(left: 15.w, right: 30.w),
      decoration: BoxDecoration(
        border: Border.all(width: 1, color: kGray[300]!),
        borderRadius: BorderRadius.circular(8),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          icon,
          Expanded(
            child: Text(
              text,
              textAlign: TextAlign.center,
              style: context.textTheme.bodyMedium!
                  .copyWith(color: kGray[900], fontWeight: FontWeight.w500),
            ),
          ),
        ],
      ),
    );
  }
}
