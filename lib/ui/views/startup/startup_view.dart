import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:foodhub/core/constants/fh_assets.dart';
import 'package:foodhub/core/constants/fh_colors.dart';
import 'package:foodhub/ui/shared/dubm_widgets/status_bar.dart';
import 'package:stacked/stacked.dart';

import 'startup_viewmodel.dart';

class StartupView extends StackedView<StartupViewModel> {
  const StartupView({Key? key}) : super(key: key);

  @override
  Widget builder(
    BuildContext context,
    StartupViewModel viewModel,
    Widget? child,
  ) {
    final textTheme = Theme.of(context).textTheme;
    return Statusbar(
      child: Scaffold(
        body: SafeArea(
          child: Center(
            child: RichTextWidget(
              text1: 'Quick',
              text2: 'Bite',
              style1: textTheme.bodyMedium!.copyWith(
                color: FHColors.secondaryColor,
                fontSize: 32.sp,
                fontFamily: 'Product Sans',
              ),
              style2: textTheme.bodyMedium!.copyWith(
                  color: FHColors.primarColor,
                  fontSize: 32.sp,
                  fontFamily: 'Product Sans'),
            ),
          ),
        ),
      ),
    );
  }

  @override
  StartupViewModel viewModelBuilder(
    BuildContext context,
  ) =>
      StartupViewModel();

  @override
  void onViewModelReady(StartupViewModel viewModel) => SchedulerBinding.instance
      .addPostFrameCallback((timeStamp) => viewModel.runStartupLogic());
}

class RichTextWidget extends StatelessWidget {
  const RichTextWidget({
    super.key,
    required this.text1,
    required this.text2,
    required this.style1,
    required this.style2,
  });
  final String text1;
  final String text2;
  final TextStyle style1;
  final TextStyle style2;
  @override
  Widget build(BuildContext context) {
    return Text.rich(
      TextSpan(
        children: [
          TextSpan(text: text1, style: style1

              //  TextStyle(
              //   color: const Color(0xFF0C0C0C),
              //   fontSize: 32.sp,
              //   fontFamily: 'Product Sans',
              //   fontWeight: FontWeight.w700,
              //   height: 0.04,
              // ),
              ),
          TextSpan(text: text2, style: style2),
        ],
      ),
      textAlign: TextAlign.center,
    );
  }
}
