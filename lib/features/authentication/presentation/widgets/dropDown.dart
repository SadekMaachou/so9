// ignore_for_file: must_be_immutable, prefer_final_fields

import 'package:fluentui_system_icons/fluentui_system_icons.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:marchic/themes/theme_context.dart';
import 'package:marchic/themes/tokens.dart';

class DropDown extends StatefulWidget {
  final String fieldName;
  DropDown({
    Key? key,
    required this.fieldName,
  }) : super(key: key);

  @override
  State<DropDown> createState() => _DropDownState();
}

class _DropDownState extends State<DropDown> {
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

  TextEditingController fieldController = TextEditingController();

  String? chosenYear;

  String? chosenGroup;

  Map<String, List<String>> levels = {
    '1CPI': ['A01', 'A02'],
    '2CP': ['A03', 'A04'],
    '1CS': ['A05', 'A06']
  };

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(widget.fieldName,
            textAlign: TextAlign.start,
            style: context.textTheme.bodySmall!
                .copyWith(fontWeight: FontWeight.w600, color: kGray[900])),
        SizedBox(
          height: 5.h,
        ),
        SizedBox(
          height: 44.h,
          child: Center(
            child: DropdownButtonFormField<String>(
              decoration: InputDecoration(
                contentPadding:
                    EdgeInsets.symmetric(vertical: 12.h, horizontal: 18.w),
                fillColor: Colors.white,
                filled: true,
                enabledBorder: outlineInputBorder,
                border: outlineInputBorder,
                focusedBorder: focusedInputBorder,
              ),
              icon: const Icon(FluentIcons.chevron_down_16_filled),
              iconEnabledColor: kGray[900],
              isExpanded: true,
              hint: Text(
                'Sidi Bel Abbès',
                style: context.textTheme.bodyMedium!
                    .copyWith(color: kGray[300], fontWeight: FontWeight.w500),
              ),
              items: levels.keys.map(buildMenuItem).toList(),
              onChanged: (value) => setState(() {
                chosenYear = value;
                chosenGroup = levels[chosenYear]![0];
              }),
            ),
          ),
        ),
      ],
    );
  }
}

DropdownMenuItem<String> buildMenuItem(String item) {
  return DropdownMenuItem(
    value: item,
    child: Text(
      item,
      style: TextStyle(
          fontWeight: FontWeight.w500, fontSize: 12.h, color: kGray[900]),
    ),
  );
}
