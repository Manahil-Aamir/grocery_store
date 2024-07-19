import 'package:flutter/material.dart';
import 'package:flutter_project/shared/resource/fonts/app_fonts.dart';
import 'package:flutter_project/shared/resource/theme/dark/darkcolor.dart';
import 'package:flutter_project/shared/utils/keyboard/keyboard_dismiss.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';

class CustomFormField extends StatelessWidget {
  final String? hint;
  final String? label;
  final double? labelSize;
  final TextEditingController? controller;
  final String? Function(String?)? validator;
  final Function(String?)? onFieldSubmit;
  final Function()? onEditingComplete;
  final Function()? onTap;
  final TextInputType? keyboardType;
  final FocusNode? focusNode;
  final bool? autoFocus;
  final bool? obscureText;
  final Widget? suffixIcon;
  final Widget? prefixIcon;
  final EdgeInsetsGeometry? contentPadding;
  final TextInputAction? textInputAction;
  final TextAlign? textAlign;
  // final Color? textColor;
  // final double? textSize;
  final Color? backgroundColor;
  final InputBorder? enabledBorder;
  final InputBorder? focusedBorder;
  final InputBorder? errorBorder;
  final double? borderRound;
  // final Color? enabledBorderColor;
  final Color? focusedBorderColor;
  final int? minLines;
  final int? maxLines;
  final String? initialValue;
  final bool? enabled;
  final bool? readOnly;
  final Function(String?)? onChanged;
  final bool? expands;
  final bool? isDense;
  final Color? hintColor;
  final double? hintFontSize;
  final FontWeight? hintFontWeight;
  // final bool isDatePicker;
  // final DateTime? firstDate;
  // final DateTime? lastDate;
  // final void Function(String)? onDateChanged;
  final Color? iconColor;
  final Rx<bool> isSearchField; // will show cancel prefix icon to cancel search
  final Function? onCanceled; // callback for cancel (if its search field)
  final BoxConstraints prefixIconConstraints;
  const CustomFormField(
      {super.key,
      this.hint,
      this.label,
      this.labelSize,
      this.controller,
      this.validator,
      this.onFieldSubmit,
      this.onEditingComplete,
      this.onTap,
      this.keyboardType,
      this.focusNode,
      this.autoFocus,
      this.obscureText,
      this.suffixIcon,
      this.prefixIcon,
      this.contentPadding,
      this.backgroundColor,
      this.textInputAction,
      this.textAlign,
      // this.textColor,
      // this.textSize,
      this.enabledBorder,
      this.focusedBorder,
      this.errorBorder,
      this.borderRound,
      // this.enabledBorderColor,
      this.focusedBorderColor,
      this.minLines,
      this.maxLines = 1,
      this.initialValue,
      this.enabled,
      this.readOnly,
      this.onChanged,
      this.expands,
      this.isDense,
      this.hintColor,
      this.hintFontSize,
      this.hintFontWeight,
      // this.isDatePicker = false,
      // this.firstDate,
      // this.lastDate,
      // this.onDateChanged,
      this.iconColor,
      required this.isSearchField,
      this.onCanceled,
      this.prefixIconConstraints = const BoxConstraints(maxWidth: 30)});

  @override
  Widget build(BuildContext context) {
    RxString text = ''.obs;
    return Material(
      color: Colors.transparent,
      child: Theme(
        data: Get.theme.copyWith(
            primaryColor: iconColor ?? Get.theme.primaryColor,
            colorScheme: Get.theme.colorScheme.copyWith(
              primary: iconColor ?? Get.theme.primaryColor,
            )),
        child: Obx(() => TextFormField(
              textAlign: textAlign ?? TextAlign.start,
              enabled: enabled,
              readOnly: readOnly ?? false,
              onTap: onTap,
              autofocus: autoFocus ?? false,
              autovalidateMode: AutovalidateMode.onUserInteraction,
              initialValue: initialValue,
              style: AppFonts.getAppFontType.copyWith(
                  fontSize: hintFontSize ?? 14.sp,
                  fontWeight: hintFontWeight ?? FontWeight.normal,
                  color: Get.isDarkMode
                      ? DarkThemeColors.headlinesTextColor
                      : Colors.black),
              onSaved: onFieldSubmit,
              onEditingComplete: onEditingComplete,
              onChanged: (value) {
                text.value = value;
                onCanceled?.call(value);
              },
              minLines: minLines,
              maxLines: maxLines,
              expands: expands ?? false,
              decoration: InputDecoration(
                label: label == null
                    ? null
                    : Text(
                        label ?? '',
                        style: TextStyle(fontSize: labelSize),
                      ),
                suffixIcon: isSearchField.value
                    ? text.value.isEmpty
                        ? null
                        : GestureDetector(
                            onTap: () {
                              controller?.clear();
                              text.value = '';
                              onCanceled?.call();
                              FocusScope.of(context).unfocus();
                            },
                            child: Icon(
                              Icons.close,
                              color: Get.theme.iconTheme.color,
                            ))
                    : suffixIcon,
                prefixIcon: prefixIcon,
                prefixIconConstraints: prefixIconConstraints,
                contentPadding: contentPadding ??
                    EdgeInsets.symmetric(vertical: 12.h, horizontal: 5.w),
                isDense: isDense,
                // filled: true,
                fillColor: backgroundColor ??
                    context.theme.canvasColor, // const Color(0xFFF9F9F9),
                hintStyle: AppFonts.getAppFontType.copyWith(
                    fontSize: hintFontSize ?? 14.sp,
                    fontWeight: hintFontWeight ?? FontWeight.normal,
                    color: hintColor ?? Get.theme.hintColor),
                hintText: hint,
                focusedErrorBorder: errorBorder ??
                    OutlineInputBorder(
                        borderSide: const BorderSide(
                            color: Colors.redAccent, width: 0.0),
                        borderRadius: BorderRadius.circular(borderRound ?? 10)),
                disabledBorder: OutlineInputBorder(
                    borderSide: BorderSide(
                        color: Colors.grey.withOpacity(0), width: 0.0),
                    borderRadius: BorderRadius.circular(borderRound ?? 10)),
                errorBorder: errorBorder ??
                    OutlineInputBorder(
                        borderSide: const BorderSide(
                            color: Colors.redAccent, width: 0.0),
                        borderRadius: BorderRadius.circular(borderRound ?? 10)),
                enabledBorder: enabledBorder ??
                    OutlineInputBorder(
                        borderSide: BorderSide(
                            color: enabledBorder == null
                                ? Colors.transparent
                                : Colors.grey[300]!,
                            width: 0.0),
                        borderRadius: BorderRadius.circular(borderRound ?? 10)),
                focusedBorder: focusedBorder ??
                    OutlineInputBorder(
                      borderSide: BorderSide(
                          color: focusedBorderColor ??
                              Theme.of(context).primaryColor,
                          width: 1.0),
                      borderRadius: BorderRadius.circular(borderRound ?? 10),
                    ),
              ),
              onTapOutside: (event) => dismissKeyboard(),
              validator: validator,
              controller: controller,
              onFieldSubmitted: onFieldSubmit,
              focusNode: focusNode,
              keyboardType: keyboardType,
              obscureText: obscureText ?? false,
              textInputAction: textInputAction ?? TextInputAction.next,
            )),
      ),
    );
  }
}
