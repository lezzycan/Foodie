import 'package:flutter/material.dart';
import 'package:foodhub/core/constants/fh_dimensions.dart';

class FHSpacing extends StatelessWidget {
  const FHSpacing({super.key})
      : height = FHDimensions.zero,
        width = FHDimensions.zero;
  const FHSpacing.xxxLargeWidth({Key? key})
      : this.width(FHDimensions.xxxLarge, key: key);

  const FHSpacing.xxLargeWidth({Key? key})
      : this.width(FHDimensions.xxLarge, key: key);

  const FHSpacing.xLargeWidth({Key? key})
      : this.width(FHDimensions.xLarge, key: key);

  const FHSpacing.largeWidth({Key? key})
      : this.width(FHDimensions.large, key: key);

  const FHSpacing.bigWidth({Key? key}) : this.width(FHDimensions.big, key: key);

  const FHSpacing.mediumWidth({Key? key})
      : this.width(FHDimensions.medium, key: key);

  const FHSpacing.smallWidth({Key? key})
      : this.width(FHDimensions.small, key: key);

  const FHSpacing.xxxSmallWidth({Key? key})
      : this.width(FHDimensions.xxxSmall, key: key);

  const FHSpacing.xxSmallWidth({Key? key})
      : this.width(FHDimensions.xxSmall, key: key);

  const FHSpacing.xSmallWidth({Key? key})
      : this.width(FHDimensions.xSmall, key: key);

  const FHSpacing.tinyWidth({Key? key})
      : this.width(FHDimensions.tiny, key: key);
  const FHSpacing.xxxLargeHeight({Key? key})
      : this.height(FHDimensions.xxxLarge, key: key);

  const FHSpacing.xxLargeHeight({Key? key})
      : this.height(FHDimensions.xxLarge, key: key);

  const FHSpacing.xLargeHeight({Key? key})
      : this.height(FHDimensions.xLarge, key: key);

  const FHSpacing.largeHeight({Key? key})
      : this.height(FHDimensions.large, key: key);

  const FHSpacing.bigHeight({Key? key})
      : this.height(FHDimensions.big, key: key);

  const FHSpacing.mediumHeight({Key? key})
      : this.height(FHDimensions.medium, key: key);

  const FHSpacing.smallHeight({Key? key})
      : this.height(FHDimensions.small, key: key);

  const FHSpacing.xSmallHeight({Key? key})
      : this.height(FHDimensions.xSmall, key: key);

  const FHSpacing.xxSmallHeight({Key? key})
      : this.height(FHDimensions.xxSmall, key: key);

  const FHSpacing.xxxSmallHeight({Key? key})
      : this.height(FHDimensions.xxxSmall, key: key);

  const FHSpacing.tinyHeight({Key? key})
      : this.height(FHDimensions.tiny, key: key);

  const FHSpacing.width(this.width, {super.key}) : height = FHDimensions.zero;

  const FHSpacing.height(this.height, {super.key}) : width = FHDimensions.zero;

  final double height;
  final double width;
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      key: super.key,
      height: height,
      width: width,
    );
  }
}
