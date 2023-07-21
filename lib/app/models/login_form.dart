import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:reactive_forms_annotations/reactive_forms_annotations.dart';
part 'login_form.freezed.dart';
part 'login_form.g.dart';
part 'login_form.gform.dart';

@freezed
@Rf()
class LoginForm with _$LoginForm {
  // ignore: invalid_annotation_target
  @JsonSerializable(
    fieldRename: FieldRename.snake,
  )
  factory LoginForm({
    @RfControl(validators: [
      RequiredValidator(),
      EmailValidator(),
    ])
    String? email,
    @RfControl(validators: [
      RequiredValidator(),
    ])
    String? password,
  }) = _LoginForm;

  factory LoginForm.fromJson(Map<String, dynamic> json) =>
      _$LoginFormFromJson(json);
}
