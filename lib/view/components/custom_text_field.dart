import 'package:flutter/material.dart';
import 'package:flutter_expense_tracker_sami/utils/app_colors.dart';

class CustomTextField extends StatelessWidget {
  final String? hintText;
  final IconData? suffixIcon;
  final IconData? prefixIcon;
  final void Function()? onSuffixTap;
  final bool? isObscure;
  final Color? filledColor;
  final bool? isFilled;

  const CustomTextField({
    super.key,
    this.hintText,
    this.suffixIcon,
    this.prefixIcon,
    this.onSuffixTap,
    this.isObscure,
    this.filledColor,
    this.isFilled,
  });

  @override
  Widget build(BuildContext context) {
    return TextField(
      obscureText: isObscure ?? false,
      decoration: InputDecoration(
        filled: isFilled,
        fillColor: filledColor,
        prefixIcon: Icon(prefixIcon, size: 23),
        suffixIcon: InkWell(onTap: onSuffixTap, child: Icon(suffixIcon)),
        hintText: hintText,
        enabledBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(15),
          borderSide: BorderSide(color: AppColors.whiteColor, width: 2),
        ),
        focusedBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(15),
          borderSide: BorderSide(color: AppColors.greenColor),
        ),
      ),
    );
  }
}
