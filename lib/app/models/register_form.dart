import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:reactive_forms_annotations/reactive_forms_annotations.dart';
part 'register_form.freezed.dart';
part 'register_form.g.dart';
part 'register_form.gform.dart';

class RequiredTrueValidator extends Validator<dynamic> {
  const RequiredTrueValidator() : super();

  @override
  Map<String, dynamic>? validate(AbstractControl<dynamic> control) {
    return control.isNotNull && control.value is bool && control.value == true
        ? null
        : {'requiredTrue': true};
  }
}

class MustMatchValidatorZ extends Validator<dynamic> {
  final String controlName;
  final String matchingControlName;
  final bool markAsDirty;
  const MustMatchValidatorZ(
      this.controlName, this.matchingControlName, this.markAsDirty)
      : super();

  @override
  Map<String, dynamic>? validate(AbstractControl<dynamic> control) {
    try {
      final error = {ValidationMessage.mustMatch: true};
      var form = <dynamic, dynamic>{};
      control.parent?.valueChanges.listen((event) {
        if (event != null) {
          form = event as Map;
          if (form[controlName] != form[matchingControlName]) {
            control.setErrors(error, markAsDirty: markAsDirty);
            control.markAsTouched();
          } else {
            control.removeError(ValidationMessage.mustMatch);
          }
        }
      });
    } catch (e) {
      return null;
    }
    return null;
  }
}

@freezed
@Rf()
class RegisterForm with _$RegisterForm {
  // ignore: invalid_annotation_target
  @JsonSerializable(fieldRename: FieldRename.snake)
  factory RegisterForm({
    @RfControl(validators: [RequiredValidator()]) String? fullName,
    @RfControl(validators: [RequiredValidator()]) String? email,
    @RfControl(validators: [
      RequiredValidator(),
    ])
    String? password,
    @RfControl(validators: [
      RequiredValidator(),
      MustMatchValidatorZ(
        'password',
        'passwordConfirmation',
        true,
      )
    ])
    String? passwordConfirmation,
    @RfControl(validators: [RequiredTrueValidator()]) bool? acceptLicense,
  }) = _RegisterForm;

  factory RegisterForm.fromJson(Map<String, dynamic> json) =>
      _$RegisterFormFromJson(json);
}
