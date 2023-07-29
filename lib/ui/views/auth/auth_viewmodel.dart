import 'package:boxtout/app/models/login_dto.dart';
import 'package:boxtout/app/models/register_dto.dart';
import 'package:stacked/stacked.dart';

class AuthViewModel extends BaseViewModel {
  late LoginDtoForm loginFormModel;
  late RegisterDtoForm registerFormModel;

  initialiseForms() {
    loginFormModel = LoginDtoForm(LoginDtoForm.formElements(LoginDto()), null);
    if (loginFormModel.form.disabled) {
      loginFormModel.form.markAsDisabled();
    }
    registerFormModel =
        RegisterDtoForm(RegisterDtoForm.formElements(RegisterDto()), null);
    if (registerFormModel.form.disabled) {
      registerFormModel.form.markAsDisabled();
    }
  }
}
