import 'package:flutter/material.dart';
import 'package:foodhub/app/app.locator.dart';
import 'package:foodhub/core/constants/fh_assets.dart';
import 'package:foodhub/core/models/onboarding_model.dart';
import 'package:stacked/stacked.dart';
import 'package:stacked_services/stacked_services.dart';

class OnboardingViewModel extends BaseViewModel {
  final _navigationService = locator<NavigationService>();
  @override
  int currentIndex = 0;
  final PageController controller = PageController();

 
  List<OnboardingModel> contents = [
    OnboardingModel(
      title: 'Satisfy your cravings with ',
      image: FHAssets.e1,
      rtitle: 'ease',
      desc: 'Integer a viverra sit feugiat leo commodo nunc.',
    ),
    OnboardingModel(
      title: 'Find your new favorite \nrestaurant with',
      image: FHAssets.e2,
      rtitle: ' just a tap',
      desc: 'Integer a viverra sit feugiat leo commodo nunc.',
    ),
    OnboardingModel(
      title: 'Fresh meals, delivered to\n your ',
      image: FHAssets.e3,
      rtitle: 'doorstep',
      desc: 'Integer a viverra sit feugiat leo commodo nunc.',
    ),
  ];

  void updatePosition(int index) {
    currentIndex = index;
    rebuildUi();
  }
}
