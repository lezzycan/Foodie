import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:foodhub/core/constants/fh_colors.dart';
import 'package:foodhub/ui/shared/dubm_widgets/custom_button.dart';
import 'package:foodhub/ui/shared/fh_spacing.dart';
import 'package:foodhub/ui/views/startup/startup_view.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

import 'package:stacked/stacked.dart';

import 'onboarding_viewmodel.dart';

class OnboardingView extends StackedView<OnboardingViewModel> {
  const OnboardingView({Key? key}) : super(key: key);
  // int someInt({int x = 0}) => x;

  @override
  Widget builder(
    BuildContext context,
    OnboardingViewModel viewModel,
    Widget? child,
  ) {
    // onDispose(viewModel.controller);

    final textTheme = Theme.of(context).textTheme;
    final colorScheme = Theme.of(context).colorScheme;
    return Scaffold(
        backgroundColor: colorScheme.background,
        body: SafeArea(
            child: SizedBox(
          height: MediaQuery.of(context).size.height.h,
          child: PageView.builder(
              controller: viewModel.controller,
              onPageChanged: viewModel.updatePosition,
              itemCount: viewModel.contents.length,
              physics: const AlwaysScrollableScrollPhysics(),
              itemBuilder: (context, index) {
                return Padding(
                  padding: EdgeInsets.symmetric(horizontal: 16.w),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Image.asset(viewModel.contents[index].image),
                      const FHSpacing.largeHeight(),
                      RichTextWidget(
                        text1: viewModel.contents[index].title,
                        text2: viewModel.contents[index].rtitle!,
                        style1: textTheme.bodyLarge!.copyWith(
                            color: colorScheme.secondary,
                            fontSize: 24.sp,
                            fontWeight: FontWeight.w700),
                        style2: textTheme.bodyLarge!.copyWith(
                            color: colorScheme.primary,
                            fontSize: 24.sp,
                            fontWeight: FontWeight.w700),
                      ),
                      const FHSpacing.largeHeight(),
                      Text(
                        viewModel.contents[index].desc,
                        style: textTheme.bodySmall!.copyWith(
                            fontSize: 16.sp, color: FHColors.greyColor),
                      ),
                      const FHSpacing.largeHeight(),
                      SmoothPageIndicator(
                          controller: viewModel.controller,
                          count: viewModel.contents.length,
                          effect: WormEffect(
                              activeDotColor: colorScheme.primary,
                              dotColor: FHColors.greyColor,
                              type: WormType.underground,
                              paintStyle: PaintingStyle.fill,
                              dotHeight: 8.h,
                              dotWidth: 8.h)),
                      const FHSpacing.xxLargeHeight(),
                      viewModel.currentIndex == viewModel.contents.length - 1
                          ? CustomButton(
                              color: colorScheme.secondary,
                              onPressed: () {},
                              text: 'GET STARTED',
                            )
                          : Row(
                              children: [
                                Expanded(
                                  child: TextButton(
                                      onPressed: () {
                                        if (viewModel.currentIndex !=
                                            viewModel.contents.length - 1) {
                                          viewModel.controller.jumpToPage(2);
                                        }
                                      },
                                      child: Text(
                                        'Skip',
                                        style: textTheme.bodySmall!.copyWith(
                                          color: const Color(0xFF9F9F9F),
                                          fontSize: 14.sp,
                                          fontFamily: 'Product Sans',
                                          fontWeight: FontWeight.w700,
                                        ),
                                      )),
                                ),
                                const FHSpacing.xxLargeWidth(),
                                Expanded(
                                    child: CustomButton(
                                  color: colorScheme.secondary,
                                  onPressed: () {
                                    if (viewModel.currentIndex !=
                                        viewModel.contents.length) {
                                      viewModel.controller.nextPage(
                                          duration: const Duration(seconds: 1),
                                          curve: Curves.easeInToLinear);
                                    }
                                  },
                                  text: 'NEXT',
                                ))
                              ],
                            )
                    ],
                  ),
                );
              }),
        )));
  }

  @override
  OnboardingViewModel viewModelBuilder(
    BuildContext context,
  ) =>
      OnboardingViewModel();

//   String getDay(int day) {
//   return switch (day) {
//     1 => 'Monday',
//     2 => 'Tuesday',
//     3 => 'Wednesday',
//     4 => 'Thursday',
//     5 => 'Friday',
//     6 => 'Saturday',
//     7 => 'Sunday',
//     _ => 'The day does not exist',
//   };
// }
}
