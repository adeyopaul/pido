import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:pidoapp/core/constants/appColors.dart';
import 'package:pidoapp/core/constants/appSizes.dart';

class Textformfield extends StatefulWidget {
  final String title;
  final bool isPassword;

  const Textformfield({
    super.key,
    required this.title,
    this.isPassword = false,
  });

  @override
  State<Textformfield> createState() => _TextformfieldState();
}

class _TextformfieldState extends State<Textformfield> {
  bool _obscure = true;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: 48.h,
      decoration: BoxDecoration(
        color: Theme.of(context).colorScheme.tertiary,
        border: Border.all(color: AppColors.borderTextFormLight),
        borderRadius: BorderRadius.all(Radius.circular(AppSpacing.sm)),
      ),
      child: TextFormField(
        textAlignVertical: widget.isPassword ? TextAlignVertical.center : null,
        obscureText: widget.isPassword ? _obscure : false,
        decoration: InputDecoration(
          hintText: widget.title,
          hintStyle: Theme.of(context).textTheme.labelSmall,
          border: InputBorder.none,
          contentPadding: EdgeInsets.symmetric(
            horizontal: AppSpacing.md
          ),

          suffixIcon: widget.isPassword
              ? GestureDetector(
            onTap: () {
              setState(() {
                _obscure = !_obscure;
              });
            },
            child: Row(
              mainAxisSize: MainAxisSize.min,
              children: [
                Icon(
                  _obscure ? Icons.visibility_off : Icons.visibility,
                  size: AppRadius.medium,
                ),
                SizedBox(width: 4.w),
                Text(
                  _obscure ? "Show" : "Hide",
                  style: Theme.of(context)
                      .textTheme
                      .labelSmall
                      ?.copyWith(fontSize: 12.sp),
                ),
                SizedBox(width: 8.w),
              ],
            ),
          )
              : null,
        ),
      ),
    );
  }
}