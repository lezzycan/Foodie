import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:foodhub/core/constants/fh_assets.dart';
import 'package:foodhub/core/constants/fh_colors.dart';
import 'package:foodhub/ui/shared/dubm_widgets/custom_button.dart';
import 'package:foodhub/ui/shared/dubm_widgets/sign_in_divider.dart';
import 'package:foodhub/ui/shared/fh_spacing.dart';
import 'package:foodhub/ui/shared/smart_widgets/fh_social_media_bbuttons.dart';
import 'package:stacked/stacked.dart';

import 'welcome_viewmodel.dart';

class WelcomeView extends StackedView<WelcomeViewModel> {
  const WelcomeView({Key? key}) : super(key: key);

  @override
  Widget builder(
    BuildContext context,
    WelcomeViewModel viewModel,
    Widget? child,
  ) {
    return Container(
      decoration: BoxDecoration(
        image: DecorationImage(
            image: AssetImage(FHAssets.background), fit: BoxFit.cover),
      ),
      child: Container(
        decoration: const BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment(-0.00, -1.00),
            end: Alignment(0, 1),
            colors: [Color(0x00494D62), Color(0xFF191B2E)],
          ),
        ),
        child: Scaffold(
          backgroundColor: Colors.transparent,
          body: SafeArea(
            child: Padding(
              padding: EdgeInsets.symmetric(horizontal: 30.0, vertical: 15.h),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const FHSpacing.xxxLargeHeight(),
                  Text.rich(
                    TextSpan(
                      children: [
                        TextSpan(
                          text: 'Welcome to\n',
                          style: TextStyle(
                            color: const Color(0xFF111719),
                            fontSize: 53.sp,
                            fontFamily: 'Sofia Pro',
                            fontWeight: FontWeight.w700,
                          ),
                        ),
                        TextSpan(
                          text: 'LezzyFood',
                          style: TextStyle(
                            color: const Color(0xFFFE724C),
                            fontSize: 45.sp,
                            fontFamily: 'Sofia Pro',
                            fontWeight: FontWeight.w700,
                          ),
                        ),
                      ],
                    ),
                  ),
                  const Opacity(
                    opacity: 0.87,
                    child: Text(
                      'Your favourite foods delivered\n fast at your door.',
                      style: TextStyle(
                        color: Color(0xFF2F384E),
                        fontSize: 18,
                        fontFamily: 'Sofia Pro',
                        fontWeight: FontWeight.w400,
                      ),
                    ),
                  ),
                  FHSpacing.height(20.h),
                  const Spacer(),
                  Column(
                    children: [
                      const SignInDivider(),
                      const FHSpacing.mediumHeight(),
                      Row(
                        children: [
                          Expanded(
                            child: SocialMediaButton(
                                text: 'Facebook',
                                imageIcon: FHAssets.facebook,
                                backGroundColor: FHColors.whiteColor,
                                onPressed: () {}),
                          ),
                          FHSpacing.width(10.w),
                          Expanded(
                            child: SocialMediaButton(
                                text: 'Google',
                                backGroundColor: FHColors.whiteColor,
                                imageIcon: FHAssets.google,
                                onPressed: () {}),
                          )
                        ],
                      ),
                      FHSpacing.height(15.h),
                      CustomButton(
                        onPressed: () {},
                        text: 'Start with email or phone',
                        color: Colors.white.withOpacity(0.20999999344348907),
                      ),
                      FHSpacing.height(15.h),
                      const Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text(
                            'Already have an account? ',
                            textAlign: TextAlign.center,
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 16,
                              fontFamily: 'Sofia Pro',
                              fontWeight: FontWeight.w400,
                              height: 0,
                            ),
                          ),
                          Text(
                            'Sign In',
                            textAlign: TextAlign.center,
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 16,
                              fontFamily: 'Sofia Pro',
                              fontWeight: FontWeight.w500,
                            ),
                          ),
                        ],
                      )
                    ],
                  )
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }

  @override
  WelcomeViewModel viewModelBuilder(
    BuildContext context,
  ) =>
      WelcomeViewModel();
}
