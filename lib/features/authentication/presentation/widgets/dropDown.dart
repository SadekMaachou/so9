// ignore_for_file: must_be_immutable, prefer_final_fields

import 'package:fluentui_system_icons/fluentui_system_icons.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:marchic/themes/tokens.dart';

class DropDown extends StatefulWidget {
  final String fieldName;

  const DropDown({
    super.key,
    required this.fieldName,
  });

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

  String? chosenWilaya;
  String? chosenCommune;

  // Mapping of Wilaya (province) to Commune (city) options
  Map<String, List<String>> levels = {
    'Oran': ['Bir El Djir', 'Centre Ville'],
    'Sidi Bel Abbès': ['Centre Ville', 'El Wiam'],
    'Mascara': ['Dar El Bayda', 'Zone 8'],
    'Ain Tmouchent': ['Sidi Ben Ada', 'Hay Zitoun'],
  };

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        // Wilaya Dropdown
        Text(
          "Wilaya",
          textAlign: TextAlign.start,
          style: TextStyle(
              fontWeight: FontWeight.w600, color: kGray[900], fontSize: 12.sp),
        ),
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
                'Ain Tmouchent',
                style: TextStyle(
                  color: kGray[300],
                  fontWeight: FontWeight.w500,
                  fontSize: 12.sp,
                ),
              ),
              // Populate the Wilaya dropdown
              items: levels.keys.map(buildMenuItem).toList(),
              onChanged: (value) => setState(() {
                chosenWilaya = value;
                // When Wilaya changes, reset chosen Commune to null
                chosenCommune = null;
              }),
              value: chosenWilaya, // Set selected value
            ),
          ),
        ),

        SizedBox(height: 15.h),

        // Commune Dropdown (depends on the selected Wilaya)
        if (chosenWilaya != null) // Only show Commune dropdown if Wilaya is selected
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                "Commune",
                textAlign: TextAlign.start,
                style: TextStyle(
                    fontWeight: FontWeight.w600,
                    color: kGray[900],
                    fontSize: 12.sp),
              ),
              SizedBox(
                height: 5.h,
              ),
              SizedBox(
                height: 44.h,
                child: Center(
                  child: DropdownButtonFormField<String>(
                    decoration: InputDecoration(
                      contentPadding: EdgeInsets.symmetric(
                          vertical: 12.h, horizontal: 18.w),
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
                      'Sidi Ben Ada',
                      style: TextStyle(
                        color: kGray[300],
                        fontWeight: FontWeight.w500,
                        fontSize: 12.sp,
                      ),
                    ),
                    // Populate the Commune dropdown based on chosen Wilaya
                    items: chosenWilaya != null
                        ? levels[chosenWilaya]!.map(buildMenuItem).toList()
                        : [],
                    onChanged: (value) => setState(() {
                      chosenCommune = value;
                    }),
                    value: chosenCommune, // Set selected value
                  ),
                ),
              ),
            ],
          ),
      ],
    );
  }

  DropdownMenuItem<String> buildMenuItem(String item) {
    return DropdownMenuItem(
      value: item,
      child: Text(
        item,
        style: TextStyle(
          fontWeight: FontWeight.w500,
          fontSize: 12.sp,
          color: kGray[900],
        ),
      ),
    );
  }
}
