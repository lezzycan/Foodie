import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:foodhub/app/app.bottomsheets.dart';
import 'package:foodhub/app/app.dialogs.dart';
import 'package:foodhub/app/app.locator.dart';
import 'package:foodhub/app/app.router.dart';
import 'package:foodhub/core/themes/fh_themes.dart';
import 'package:stacked_services/stacked_services.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await setupLocator();
  setupDialogUi();
  setupBottomSheetUi();
  SystemChrome.setEnabledSystemUIMode(
    SystemUiMode.manual,
    overlays: [SystemUiOverlay.top, SystemUiOverlay.bottom],
  ).then(
    (_) => runApp(ScreenUtilInit(
      designSize: ScreenUtil.defaultSize,
      minTextAdapt: true,
      splitScreenMode: true,
      builder: (_, __) => const FoodHub(),
    )),
  );
}

class FoodHub extends StatelessWidget {
  const FoodHub({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      themeMode: ThemeMode.light,
      theme: FHThemeManager.lightTheme,
      debugShowCheckedModeBanner: false,
      // title: AfmStrings.applyForMe,
      initialRoute: Routes.startupView,
      onGenerateRoute: StackedRouter().onGenerateRoute,
      navigatorKey: StackedService.navigatorKey,
      navigatorObservers: [
        StackedService.routeObserver,
      ],
    );
  }
}
