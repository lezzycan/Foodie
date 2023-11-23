import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class CustomButton extends StatelessWidget {
  const CustomButton(
      {super.key,
      required this.onPressed,
      required this.text,
      this.height,
      this.color});

  final Function()? onPressed;
  final String text;
  final double? height;
  final Color? color;
  @override
  Widget build(BuildContext context) {
    final colorScheme = Theme.of(context).colorScheme;
    return SizedBox(
      height: height ?? 40.h,
      width: double.infinity,
      child: ElevatedButton(
        onPressed: onPressed,
        style: ElevatedButton.styleFrom(
          backgroundColor: color ?? colorScheme.primary,
          shape:
              RoundedRectangleBorder(borderRadius: BorderRadius.circular(8.r)),
        ),
        child: Text(
          text,
          style: Theme.of(context).textTheme.bodySmall!.copyWith(
              fontSize: 14.sp,
              fontFamily: 'Product Sans',
              fontWeight: FontWeight.w400,
              color: colorScheme.background),
        ),
      ),
    );
  }
}
