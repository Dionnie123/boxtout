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
import 'package:boxtout/ui/views/orders/orders_view.dart';
import 'package:boxtout/ui/views/messages/messages_view.dart';
import 'package:boxtout/ui/views/account/account_view.dart';
// @stacked-import

@StackedApp(
  logger: StackedLogger(),
  routes: [
    MaterialRoute(path: '/', page: AuthView, initial: true),
    MaterialRoute(path: '/', page: CartView),
    CustomRoute(
      path: '/',
      page: HomeView,
      transitionsBuilder: TransitionsBuilders.fadeIn,
    ),
    CustomRoute(
      path: '/',
      page: StartupView,
      transitionsBuilder: TransitionsBuilders.fadeIn,
    ),
    CustomRoute(
      path: '/',
      page: OrdersView,
      transitionsBuilder: TransitionsBuilders.fadeIn,
    ),
    CustomRoute(
      path: '/',
      page: MessagesView,
      transitionsBuilder: TransitionsBuilders.fadeIn,
    ),
    CustomRoute(
      path: '/',
      page: AccountView,
      transitionsBuilder: TransitionsBuilders.fadeIn,
    ),
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
