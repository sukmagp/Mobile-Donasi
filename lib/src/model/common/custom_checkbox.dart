import 'package:dana_abadi_app/src/theme_manager/color_manager.dart';
import 'package:flutter/material.dart';
import 'package:getwidget/getwidget.dart';

class CustomCheckbox extends StatefulWidget {
  const CustomCheckbox({super.key});

  @override
  State<CustomCheckbox> createState() => _CustomCheckboxState();
}

class _CustomCheckboxState extends State<CustomCheckbox> {
  bool isChecked = false;

  @override
  Widget build(BuildContext context) {
    // Color getColor(Set<MaterialState> states) {
    //   const Set<MaterialState> interactiveStates = <MaterialState>{
    //     MaterialState.pressed,
    //     MaterialState.hovered,
    //     MaterialState.focused,
    //   };
    //   if (states.any(interactiveStates.contains)) {
    //     return ColorManager.tertiary;
    //   }
    //   return ColorManager.secondary;
    // }

    return GFCheckbox(
      size: GFSize.SMALL,
      activeBgColor: ColorManager.primary,
      type: GFCheckboxType.circle,
      inactiveBorderColor: ColorManager.black60.withOpacity(0.3),
      activeBorderColor: ColorManager.primary,
      onChanged: (value) {
        setState(() {
          isChecked = value;
        });
      },
      value: isChecked,
      // inactiveIcon: null,
    );
  }
}
