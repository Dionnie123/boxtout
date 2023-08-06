import 'package:boxtout/ui/bottom_sheets/notice/notice_sheet.dart';
import 'package:boxtout/ui/dialogs/info_alert/info_alert_dialog.dart';
import 'package:stacked/stacked.dart';
import 'package:stacked/stacked_annotations.dart';
import 'package:stacked_services/stacked_services.dart';
import 'package:boxtout/services/auth_service.dart';
import 'package:boxtout/ui/views/auth/auth_view.dart';
import 'package:boxtout/ui/views/cart/cart_view.dart';
import 'package:boxtout/ui/views/home/home_view.dart';
import 'package:boxtout/services/shopping_service.dart';
import 'package:boxtout/ui/views/startup/startup_view.dart';
import 'package:boxtout/ui/views/foo/foo_view.dart';
import 'package:boxtout/ui/views/orders/orders_view.dart';
// @stacked-import

@StackedApp(
  logger: StackedLogger(),
  routes: [
    MaterialRoute(
      page: AuthView,
      path: '/',
      initial: true,
    ),
    MaterialRoute(
      page: CartView,
      path: '/',
    ),
    CustomRoute(
      page: HomeView,
      path: '/',
      transitionsBuilder: TransitionsBuilders.fadeIn,
    ),
    CustomRoute(
      path: '/',
      page: StartupView,
      transitionsBuilder: TransitionsBuilders.fadeIn,
    ),

    CustomRoute(page: FooView),
    CustomRoute(page: OrdersView),
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
