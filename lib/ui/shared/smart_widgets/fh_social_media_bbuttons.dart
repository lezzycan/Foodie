import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:foodhub/ui/shared/fh_spacing.dart';

class SocialMediaButton extends StatelessWidget {
  const SocialMediaButton(
      {super.key,
      required this.text,
      required this.imageIcon,
      required this.onPressed,
      this.backGroundColor});
  final String text;
  final String imageIcon;
  final VoidCallback onPressed;
  final Color? backGroundColor;
  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.max,
      children: [
        AnimatedContainer(
          duration: const Duration(milliseconds: 500),
          decoration: BoxDecoration(
            border: Border.all(
              color: Colors.black,
            ),
            borderRadius: BorderRadius.all(Radius.circular(50.r)),
            color: backGroundColor,
          ),
          constraints: BoxConstraints.tightFor(
            height: 49.h,
            width: MediaQuery.of(context).size.width,
          ),
          padding: const EdgeInsets.symmetric(
            vertical: 8,
            horizontal: 16,
          ),
          child: TextButton(
            onPressed: onPressed,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                // ignore: deprecated_member_use
                SvgPicture.asset(
                  imageIcon,
                  width: 10.w,
                  height: 20.h,
                ),
                const FHSpacing.tinyWidth(),
                Text(text, style: Theme.of(context).textTheme.bodySmall)
              ],
            ),
          ),
        ),
      ],
    );
  }
}
