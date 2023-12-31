import 'package:boxtout/ui/bottom_sheets/notice/notice_sheet.dart';
import 'package:boxtout/ui/dialogs/info_alert/info_alert_dialog.dart';
import 'package:boxtout/ui/views/startup/startup_view.dart';
import 'package:stacked/stacked_annotations.dart';
import 'package:stacked_services/stacked_services.dart';
import 'package:boxtout/services/auth_service.dart';
import 'package:boxtout/ui/views/auth/auth_view.dart';
import 'package:boxtout/ui/views/foo/foo_view.dart';
import 'package:boxtout/ui/views/cart/cart_view.dart';
import 'package:boxtout/ui/views/home/home_view.dart';
import 'package:boxtout/services/shopping_service.dart';
// @stacked-import

@StackedApp(
  logger: StackedLogger(),
  routes: [
    CustomRoute(
      path: '',
      page: StartupView,
      initial: true,
    ),
    CustomRoute(path: '', page: AuthView),
    MaterialRoute(page: FooView),
    MaterialRoute(page: CartView),
    CustomRoute(page: HomeView),
// @stacked-route
  ],
  dependencies: [
    LazySingleton(classType: BottomSheetService),
    LazySingleton(classType: DialogService),
    LazySingleton(classType: RouterService),

    InitializableSingleton(classType: AuthService),
    LazySingleton(classType: ShoppingService),
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
