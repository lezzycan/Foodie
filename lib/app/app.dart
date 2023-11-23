import 'package:foodhub/ui/bottomsheet/notice/notice_sheet.dart';
import 'package:foodhub/ui/dialogs/info_alert/info_alert_dialog.dart';
import 'package:foodhub/ui/views/welcome/welcome_view.dart';
import 'package:foodhub/ui/views/startup/startup_view.dart';
import 'package:stacked/stacked_annotations.dart';
import 'package:stacked_services/stacked_services.dart';
import 'package:foodhub/ui/views/create_account/create_account_view.dart';
import 'package:foodhub/ui/views/onboarding/onboarding_view.dart';
// @stacked-import

@StackedApp(
  routes: [
    MaterialRoute(page: WelcomeView),
    MaterialRoute(page: StartupView),
    MaterialRoute(page: CreateAccountView),
    MaterialRoute(page: OnboardingView),
// @stacked-route
  ],
  dependencies: [
    LazySingleton(classType: BottomSheetService),
    LazySingleton(classType: DialogService),
    LazySingleton(classType: NavigationService),
    // @stacked-service
  ],
  bottomsheets: [
    StackedBottomsheet(classType: NoticeSheet),
    // @stacked-bottom-sheet
  ],
  dialogs: [
    StackedDialog(classType: InfoAlertDialog),
    // @stacked-dialog
  ],
)
class App {}
