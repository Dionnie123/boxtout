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

class MustMatchValidator extends Validator<dynamic> {
  final String controlName;
  final String matchingControlName;
  final bool markAsDirty;

  /// Constructs an instance of [MustMatchValidator]
  const MustMatchValidator(
      this.controlName, this.matchingControlName, this.markAsDirty)
      : super();

  @override
  Map<String, dynamic>? validate(AbstractControl<dynamic> control) {
    final error = {ValidationMessage.mustMatch: true};

    if (control is! FormGroup) {
      return error;
    }

    final formControl = control.control(controlName);
    final matchingFormControl = control.control(matchingControlName);

    if (formControl.value != matchingFormControl.value) {
      matchingFormControl.setErrors(error, markAsDirty: markAsDirty);
      matchingFormControl.markAsTouched();
    } else {
      matchingFormControl.removeError(ValidationMessage.mustMatch);
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
    @RfControl(validators: [RequiredValidator()]) String? password,
    @RfControl(validators: [
      MustMatchValidator(
        'password',
        'passwordConfirmation',
        false,
      )
    ])
    String? passwordConfirmation,
    @RfControl(validators: [RequiredTrueValidator()]) bool? acceptLicense,
  }) = _RegisterForm;

  factory RegisterForm.fromJson(Map<String, dynamic> json) =>
      _$RegisterFormFromJson(json);
}
