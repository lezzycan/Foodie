import 'package:flutter/material.dart';

import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:foodhub/ui/shared/fh_spacing.dart';

class SignInDivider extends StatelessWidget {
  const SignInDivider({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        const Expanded(
          child: Divider(
            thickness: 1.0,
            color: Colors.white,
          ),
        ),
        const FHSpacing.smallWidth(),
        Text(
          ' sign in with',
          textAlign: TextAlign.center,
          style: TextStyle(
            color: Colors.white,
            fontSize: 16.sp,
            fontFamily: 'Sofia Pro',
            fontWeight: FontWeight.w500,
          ),
        ),
        const FHSpacing.smallWidth(),
        const Expanded(
          child: Divider(
            thickness: 1.0,
            color: Colors.white,
          ),
        ),
      ],
    );
  }
}
