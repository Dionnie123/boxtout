import 'package:boxtout/app/app.locator.dart';
import 'package:boxtout/services/auth_service.dart';
import 'package:flutter/widgets.dart';
import 'package:stacked/stacked.dart';
import 'package:stacked_services/stacked_services.dart';

class LoginViewModel extends BaseViewModel {
  final _authService = locator<AuthService>();
  final _dialogService = locator<DialogService>();

  @override
  void onFutureError(error, Object? key) {
    super.onFutureError(error, key);
    WidgetsBinding.instance.addPostFrameCallback((_) {
      _dialogService.showDialog(
          title: "Error",
          barrierDismissible: true,
          description: error.toString(),
          dialogPlatform: DialogPlatform.Custom);
    });
  }

  Future signIn({required email, required password}) async {
    await runBusyFuture(
        _authService.signInWithEmail(email: email, password: password),
        throwException: true);
  }
}
